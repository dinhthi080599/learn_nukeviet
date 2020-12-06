<?php

/**
 * @Project NUKEVIET 4.x
 * @Author Thi Đình Nguyễn <ng.thi.0805@gmail.com>
 * @Copyright (C) 2020 Thi Đình Nguyễn. All rights reserved
 * @License: Not free read more http://nukeviet.vn/vi/store/modules/nvtools/
 * @Createdate Wed, 02 Dec 2020 03:47:08 GMT
 */

if (!defined('NV_MAINFILE')) {
    die('Stop!!!');
}

$module_version = [
    'name' => 'Qldt',
    'modfuncs' => 'duasvdsthi,main,lophanhchinh,lopmon,sv_lopmon,chitiet-lopmon,nhapdiem,monhoc,import-sinhvien,baocao,themsv',
    'change_alias' => 'duasvdsthi,main,lophanhchinh,lopmon,sv_lopmon,chitiet-lopmon,nhapdiem,monhoc,import-sinhvien,baocao,themsv',
    'submenu' => 'duasvdsthi,chitiet-lopmon,nhapdiem,monhoc,import-sinhvien,baocao,themsv,lophanhchinh',
    'is_sysmod' => 0,
    'virtual' => 1,
    'version' => '1.0.04',
    'date' => 'Wed, 2 Dec 2020 03:47:08 GMT',
    'author' => 'Thi Đình Nguyễn (ng.thi.0805@gmail.com)',
    'uploads_dir' => [$module_name],
    'note' => ''
];
