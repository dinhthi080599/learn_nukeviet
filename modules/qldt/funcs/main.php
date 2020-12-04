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
include NV_ROOTDIR . '/includes/Smarty.class.php';
$smarty = new Smarty();
$smarty->setTemplateDir(NV_ROOTDIR . '/themes/' . $module_info['template'] . '/modules/' . $module_info['module_theme']);
$css = '<link rel="StyleSheet" href="'. NV_BASE_SITEURL .'themes/'. $module_info['template'] .'/css/'. $module_info['module_file'] .'.css" type="text/css"/>';
$js = '<script src="'. NV_BASE_SITEURL .'themes/'. $module_info['template'] .'/js/'. $module_info['module_file'] .'.js" type="text/javascript"></script>';

$smarty->assign('css', $css); 
$smarty->assign('js', $js); 
$smarty->assign('title', $module_info['custom_title']); 
$data = array(
);
$smarty->assign('data', $data); 
$contents = $smarty->fetch('main.tpl');
include NV_ROOTDIR . '/includes/header.php';
echo nv_site_theme($contents);
include NV_ROOTDIR . '/includes/footer.php';