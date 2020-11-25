<?php

/**
 * @Project NUKEVIET 4.x
 * @Author VINADES.,JSC <contact@vinades.vn>
 * @Copyright (C) 2020 VINADES.,JSC. All rights reserved
 * @License GNU/GPL version 2 or any later version
 * @Createdate Wed, 25 Nov 2020 08:32:05 GMT
 */

if ( ! defined( 'NV_MAINFILE' ) ) die( 'Stop!!!' );

$module_version = array(
		'name' => 'Test',
		'modfuncs' => 'main,detail,search',
		'submenu' => 'main,detail,search',
		'is_sysmod' => 0,
		'virtual' => 1,
		'version' => '1.0.0',
		'date' => 'Wed, 25 Nov 2020 08:32:06 GMT',
		'author' => 'VINADES (contact@vinades.vn)',
		'uploads_dir' => array($module_name),
		'note' => 'test'
	);