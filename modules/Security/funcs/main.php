<?php

/**
 * @Project QLDT
 * @Author Thi Đình Nguyễn (FFC TEAM)
 * @Copyright (C) 2010 VINADES., JSC. All rights reserved
 * @Createdate 24-11-2020 23:01
 */

   
if ( ! defined( 'NV_IS_MOD_SECURITY' ) ) die( 'Stop!!!' );

$hash_function = [];
$hash_function[1] = array(
    'hash_name' => 'Hash Password',
    'function_name' => '$scrypt->hash_password(Clear Text, {type})',
    'type' => array(
        '1' => array(
            'name' => 'SSHA512',
            'clear_text' => 'FFC TEAM',
            'hash' => $crypt->hash_password('FFC TEAM', '{SSHA512}'),
            'describe' => 'Nối thêm thời gian và mã hóa base 64'
        ),
        '2' => array(
            'name' => 'SSHA256',
            'clear_text' => 'FFC TEAM',
            'hash' => $crypt->hash_password('FFC TEAM', '{SSHA256}'),
            'describe' => 'Nối thêm thời gian và mã hóa base 64'
        ),
        '3' => array(
            'name' => 'SSHA',
            'clear_text' => 'FFC TEAM',
            'hash' => $crypt->hash_password('FFC TEAM', '{SSHA}'),
            'describe' => 'Nối thêm thời gian và mã hóa base 64'
        ),
        '4' => array(
            'name' => 'SHA',
            'clear_text' => 'FFC TEAM',
            'hash' => $crypt->hash_password('FFC TEAM', '{SHA}'),
            'describe' => 'Mã hóa sha'
        ),
        '5' => array(
            'name' => 'MD5',
            'clear_text' => 'FFC TEAM',
            'hash' => $crypt->hash_password('FFC TEAM', 'MD5'),
            'describe' => 'Mã hóa MD5'
        )
    )
);
$hash_function[2] = array(
    'hash_name' => 'Validate Password',
    'function_name' => '$scrypt->validate_password(Clear Text, Hash)'
);
foreach ($hash_function[1]['type'] as $key => $value) {
    if($key == '1') continue;
    $value['hash'] = $crypt->validate_password($value['clear_text'], $value['hash']);
    $value['describe'] = 'Cắt ở đầu để lấy kiểu mã hóa + ở cuối để lấy key';
    $hash_function[2]['type'][] = $value;
}
$hash_function[3] = array(
    'hash_name' => 'Encrypt và Decrypt',
    'function_name' => '$scrypt->encrypt("Clear Text")',
    'type' => array(
        '1' => array(
            'name' => 'Encrypt',
            'clear_text' => 'FFC TEAM',
            'hash' => $crypt->encrypt('FFC TEAM'),
            'describe' => 'Mã hóa MD5'
        )
    )
);
$hash_function[3]['type'][] = array(
    'name' => 'Decrypt',
    'clear_text' => $hash_function[3]['type'][1]['hash'],
    'hash' => $crypt->decrypt($hash_function[3]['type'][1]['hash']),
    'describe' => 'Mã hóa MD5'
);

include NV_ROOTDIR . '/includes/Smarty.class.php';

$smarty = new Smarty();
$smarty->setTemplateDir(NV_ROOTDIR . '/themes/' . $module_info['template'] . '/modules/' . $module_info['module_theme']);
$smarty->assign('hash_function', $hash_function); 
$contents = $smarty->fetch('main.tpl');

include NV_ROOTDIR . '/includes/header.php';
echo nv_site_theme($contents);
include NV_ROOTDIR . '/includes/footer.php';



?>