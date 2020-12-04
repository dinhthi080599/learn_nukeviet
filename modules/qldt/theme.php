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

/**
 * nv_theme_qldt_main()
 * 
 * @param mixed $array_data
 * @return
 */
function nv_theme_qldt_main($array_data)
{
    global $module_info, $lang_module, $lang_global, $op;

    $xtpl = new XTemplate($op . '.tpl', NV_ROOTDIR . '/themes/' . $module_info['template'] . '/modules/' . $module_info['module_theme']);
    $xtpl->assign('LANG', $lang_module);
    $xtpl->assign('GLANG', $lang_global);

    //------------------
    // Viết code vào đây
    //------------------

    $xtpl->parse('main');
    return $xtpl->text('main');
}

/**
 * nv_theme_qldt_lopmon()
 * 
 * @param mixed $array_data
 * @return
 */
function nv_theme_qldt_lopmon($array_data)
{
    global $module_info, $lang_module, $lang_global, $op;

    $xtpl = new XTemplate($op . '.tpl', NV_ROOTDIR . '/themes/' . $module_info['template'] . '/modules/' . $module_info['module_theme']);
    $xtpl->assign('LANG', $lang_module);
    $xtpl->assign('GLANG', $lang_global);

    //------------------
    // Viết code vào đây
    //------------------

    $xtpl->parse('main');
    return $xtpl->text('main');
}

/**
 * nv_theme_qldt_sv_lopmon()
 * 
 * @param mixed $array_data
 * @return
 */
function nv_theme_qldt_sv_lopmon($array_data)
{
    global $module_info, $lang_module, $lang_global, $op;

    $xtpl = new XTemplate($op . '.tpl', NV_ROOTDIR . '/themes/' . $module_info['template'] . '/modules/' . $module_info['module_theme']);
    $xtpl->assign('LANG', $lang_module);
    $xtpl->assign('GLANG', $lang_global);

    //------------------
    // Viết code vào đây
    //------------------

    $xtpl->parse('main');
    return $xtpl->text('main');
}

/**
 * nv_theme_qldt_chitiet_lopmon()
 * 
 * @param mixed $array_data
 * @return
 */
function nv_theme_qldt_chitiet_lopmon($array_data)
{
    global $module_info, $lang_module, $lang_global, $op;

    $xtpl = new XTemplate($op . '.tpl', NV_ROOTDIR . '/themes/' . $module_info['template'] . '/modules/' . $module_info['module_theme']);
    $xtpl->assign('LANG', $lang_module);
    $xtpl->assign('GLANG', $lang_global);

    //------------------
    // Viết code vào đây
    //------------------

    $xtpl->parse('main');
    return $xtpl->text('main');
}

/**
 * nv_theme_qldt_nhapdiem()
 * 
 * @param mixed $array_data
 * @return
 */
function nv_theme_qldt_nhapdiem($array_data)
{
    global $module_info, $lang_module, $lang_global, $op;

    $xtpl = new XTemplate($op . '.tpl', NV_ROOTDIR . '/themes/' . $module_info['template'] . '/modules/' . $module_info['module_theme']);
    $xtpl->assign('LANG', $lang_module);
    $xtpl->assign('GLANG', $lang_global);

    //------------------
    // Viết code vào đây
    //------------------
    $xtpl->parse('main');
    return $xtpl->text('main');
}

/**
 * nv_theme_qldt_monhoc()
 * 
 * @param mixed $array_data
 * @return
 */
function nv_theme_qldt_monhoc($array_data)
{
    global $module_info, $lang_module, $lang_global, $op;

    $xtpl = new XTemplate($op . '.tpl', NV_ROOTDIR . '/themes/' . $module_info['template'] . '/modules/' . $module_info['module_theme']);
    $xtpl->assign('LANG', $lang_module);
    $xtpl->assign('GLANG', $lang_global);

    //------------------
    // Viết code vào đây
    //------------------

    $xtpl->parse('main');
    return $xtpl->text('main');
}

/**
 * nv_theme_qldt_import_sinhvien()
 * 
 * @param mixed $array_data
 * @return
 */
function nv_theme_qldt_import_sinhvien($array_data)
{
    global $module_info, $lang_module, $lang_global, $op;

    $xtpl = new XTemplate($op . '.tpl', NV_ROOTDIR . '/themes/' . $module_info['template'] . '/modules/' . $module_info['module_theme']);
    $xtpl->assign('LANG', $lang_module);
    $xtpl->assign('GLANG', $lang_global);

    //------------------
    // Viết code vào đây
    //------------------

    $xtpl->parse('main');
    return $xtpl->text('main');
}

/**
 * nv_theme_qldt_baocao()
 * 
 * @param mixed $array_data
 * @return
 */
function nv_theme_qldt_baocao($array_data)
{
    global $module_info, $lang_module, $lang_global, $op;

    $xtpl = new XTemplate($op . '.tpl', NV_ROOTDIR . '/themes/' . $module_info['template'] . '/modules/' . $module_info['module_theme']);
    $xtpl->assign('LANG', $lang_module);
    $xtpl->assign('GLANG', $lang_global);

    //------------------
    // Viết code vào đây
    //------------------

    $xtpl->parse('main');
    return $xtpl->text('main');
}

/**
 * nv_theme_qldt_themsv()
 * 
 * @param mixed $array_data
 * @return
 */
function nv_theme_qldt_themsv($array_data)
{
    global $module_info, $lang_module, $lang_global, $op;
    $xtpl = new XTemplate($op . '.tpl', NV_ROOTDIR . '/themes/' . $module_info['template'] . '/modules/' . $module_info['module_theme']);
    $xtpl->assign('LANG', $lang_module);
    $xtpl->assign('GLANG', $lang_global);
    //------------------
    // Viết code vào đây
    //------------------
    $xtpl->parse($op);
    return $xtpl->text($op);
}


/**
 * nv_theme_smarty()
 * 
 * @param mixed $array_data
 * @return
 */
function nv_theme_smarty($array_data)
{
    global $module_info, $lang_module, $lang_global, $op;
    include NV_ROOTDIR . '/includes/Smarty.class.php';
    $smarty = new Smarty();
    $smarty->setTemplateDir(NV_ROOTDIR . '/themes/' . $module_info['template'] . '/modules/' . $module_info['module_theme']);
    $css = '<link rel="StyleSheet" href="'. NV_BASE_SITEURL .'themes/'. $module_info['template'] .'/css/'. $module_info['module_file'] .'.css" type="text/css"/>';
    $js = '<script src="'. NV_BASE_SITEURL .'themes/'. $module_info['template'] .'/js/'. $module_info['module_file'] .'.js" type="text/javascript"></script>';
    $url = 'learn_nukeviet';
    $smarty->assign('css', $css); 
    $smarty->assign('js', $js); 
    $smarty->assign('url', $url); 
    $smarty->assign('title', $module_info['funcs'][$op]['func_custom_name']);
    $smarty->assign('data', $data); 
    $contents = $smarty->fetch($op.'.tpl');
    return $contents;
}

