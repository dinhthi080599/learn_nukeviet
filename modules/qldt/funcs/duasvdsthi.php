<?php

/**
 * @Project NUKEVIET 4.x
 * @Author Thi Đình Nguyễn <ng.thi.0805@gmail.com>
 * @Copyright (C) 2020 Thi Đình Nguyễn. All rights reserved
 * @License: Not free read more http://nukeviet.vn/vi/store/modules/nvtools/
 * @Createdate Wed, 02 Dec 2020 03:47:08 GMT
 */

if (!defined('NV_IS_MOD_QLDT')) {
    die('Stop!!!');
}

$page_title = $module_info['site_title'];
$key_words = $module_info['keywords'];
$prefix = $db_config['prefix'];
$module_file = $module_info['module_file'];
$prefix_name = $prefix . "_" . $module_file;

$sql = 'SELECT ma_lopmon,ten_lopmon FROM '. $prefix . "_" . $module_file . "_lopmon";
$sth = $db->prepare($sql);
$sth->execute();
$danhsachlop = $sth->fetchAll();

if($nv_Request->isset_request('xemdanhsach', 'POST'))
{
$malop = $nv_Request->get_title('lopmon');
//Hiển thị dữ liệu
$sql = 'SELECT '.$prefix_name.'_sinhvien.ma_sv,ten_sv,ngaysinh,gioitinh,sdt,cmnd FROM '.$prefix_name. "_sinhvien 
INNER JOIN ". $prefix_name . "_dangkymon 
on ". $prefix_name . "_dangkymon.ma_sv  =  ". $prefix_name . "_sinhvien.ma_sv" . " where ma_lopmon=" .$malop;

//pr($sql);
$sth = $db->prepare($sql);
$sth->execute();
$danhsachsv = $sth->fetchAll();
//pr($danhsachlop);
}

$array_data = array(
    'danhsachsv' => $danhsachsv,
    'danhsachlop' => $danhsachlop
);

//------------------
// Viết code vào đây
//------------------

$contents = nv_theme_smarty($array_data);

include NV_ROOTDIR . '/includes/header.php';
echo nv_site_theme($contents);
include NV_ROOTDIR . '/includes/footer.php';
