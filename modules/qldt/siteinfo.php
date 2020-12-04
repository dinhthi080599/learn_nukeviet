<?php

/**
 * @Project NUKEVIET 4.x
 * @Author Thi Đình Nguyễn <ng.thi.0805@gmail.com>
 * @Copyright (C) 2020 Thi Đình Nguyễn. All rights reserved
 * @License: Not free read more http://nukeviet.vn/vi/store/modules/nvtools/
 * @Createdate Wed, 02 Dec 2020 03:47:08 GMT
 */

if (!defined('NV_IS_FILE_SITEINFO')) {
    die('Stop!!!');
}

$lang_siteinfo = nv_get_lang_module($mod);

/*
// Tổng số bài viết
$number = $db->query('SELECT COUNT(*) FROM ' . NV_PREFIXLANG . '_' . $mod_data . '_rows where status= 1 AND publtime < ' . NV_CURRENTTIME . ' AND (exptime=0 OR exptime>' . NV_CURRENTTIME . ')')->fetchColumn();
if ($number > 0) {
    $siteinfo[] = [
        'key' => $lang_siteinfo['siteinfo_publtime'],
        'value' => $number
    ];
}
*/
