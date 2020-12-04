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
$them_sv = $nv_Request->get_title('them_sv', 'POST');
$prefix = $db_config['prefix'];
$module_file = $module_info['module_file'];
if($them_sv == 'them_sv')
{
    $ma_sv = $nv_Request->get_title('ma_sv', 'POST');
    $ten_sv = $nv_Request->get_title('ten_sv', 'POST');
    $ngaysinh_sv = $nv_Request->get_title('ngaysinh_sv', 'POST');
    $gioitinh = $nv_Request->get_title('gioitinh_sv', 'POST');
    $sdt = $nv_Request->get_title('sdt', 'POST');
    $cmnd = $nv_Request->get_title('cmnd', 'POST');
    $upload = new NukeViet\Files\Upload(
        array('images'), 
        $global_config['forbid_extensions'], 
        $global_config['forbid_mimes'], 
        NV_UPLOAD_MAX_FILESIZE, 
        NV_MAX_WIDTH, 
        NV_MAX_HEIGHT
    );
    $upload_status = $upload->save_file($_FILES['anh_sv'], NV_ROOTDIR . '/uploads/qldt', false);
    @unlink($_FILES['imageforswf']['tmp_name']);
    $sql = "INSERT INTO " . $prefix . "_" . $module_file . "_sinhvien (
        ma_sv, ten_sv, ngaysinh, gioitinh, sdt, cmnd, url_img
    ) VALUES (
        '$ma_sv', '$ten_sv', '$ngaysinh_sv', '$gioitinh', '$sdt', '$cmnd', '123'
    )";
    if (!$db->insert_id($sql, 'ma_sv')) {
        // bổ sung đưa ra thông báo lỗi
        $error = $lang_global['admin_oauth_error_savenew'];
    }
    else{
        pr('123123');
        // bổ sung đưa ra thông báo
        nv_redirect_location(NV_BASE_SITEURL);
    }
}

$page_title = $module_info['site_title'];
$key_words = $module_info['keywords'];

$array_data = [];

//------------------
// Viết code vào đây
//------------------

$contents = nv_theme_smarty($array_data);

include NV_ROOTDIR . '/includes/header.php';
echo nv_site_theme($contents);
include NV_ROOTDIR . '/includes/footer.php';
