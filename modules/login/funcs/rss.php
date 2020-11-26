<?php

/**
 * @Project NUKEVIET 4.x
 * @Author Thi Đình Nguyễn <ng.thi.0805@gmail.com>
 * @Copyright (C) 2020 Thi Đình Nguyễn. All rights reserved
 * @License: Not free read more http://nukeviet.vn/vi/store/modules/nvtools/
 * @Createdate Wed, 25 Nov 2020 16:06:26 GMT
 */

if (!defined('NV_IS_MOD_LOGIN')) {
    die('Stop!!!');
}

session_destroy();
nv_redirect_location(NV_BASE_SITEURL);