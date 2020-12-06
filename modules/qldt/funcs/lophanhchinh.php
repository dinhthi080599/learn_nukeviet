<?php

/**
 * @Project NUKEVIET 4.x
 * @Author Nguyễn Văn Bảo <Baonguyen091099@gmail.com>
 * @Copyright (C) 2020 Nguyễn Văn Bảo. All rights reserved
 * @License GNU/GPL version 2 or any later version/
 * @Createdate Wed, 02 Dec 2020 03:47:08 GMT
 */

if (!defined('NV_IS_MOD_QLDT')) {
    die('Stop!!!');
}

// $op = $nv_Request->get_title('op', 'get');
$page_title = $module_info['site_title'];
$key_words = $module_info['keywords'];
$prefix = $db_config['prefix'];
$module_file = $module_info['module_file'];
// Hiển thị dữ liệu
$sql = 'SELECT ma_lop,ten_lop FROM ' . $prefix . "_" . $module_file . "_lop";
$sth = $db->prepare($sql);
$sth->execute();
$danhsachlop = $sth->fetchAll();

//$sth->fetch()

if($nv_Request->isset_request('themlop', 'POST'))
{  
    $action = $nv_Request->get_title('themlop','POST');
    if($action == "themlop")
    {
        $tenlop = $nv_Request->get_title('tenlop','POST');        
        $sth = $db->prepare("INSERT INTO " . $prefix . "_" . $module_file . "_lop
        (ten_lop) VALUES
        (:tenlop)");
        $sth->bindParam(':tenlop', $tenlop, PDO::PARAM_STR);
        if($sth->execute())
        {       
            nv_redirect_location(NV_BASE_SITEURL.'?language=vi&nv=qldt&op=lophanhchinh');
        }
    }
    if($action == "sualop")
    {
        $malop = $nv_Request->get_title('malop','POST');
        $tenlop = $nv_Request->get_title('tenlop','POST');
        $sql = 'UPDATE ' . $prefix . "_" . $module_file . "_lop SET ten_lop = :tenlop where ma_lop = :malop";
        $sth = $db->prepare($sql);
        $sth->bindParam(':tenlop', $tenlop, PDO::PARAM_STR);
        $sth->bindParam(':malop', $malop, PDO::PARAM_STR);
        if($sth->execute())
        {
            nv_redirect_location(NV_BASE_SITEURL.'?language=vi&nv=qldt&op=lophanhchinh');
        }
    }
}

if($nv_Request->isset_request('xoalop', 'POST'))
{
    $malop = $nv_Request->get_title('xoalop');
    $sql = "DELETE FROM " . $prefix . "_" . $module_file . "_lop WHERE ma_lop = :id";
    $sth = $db->prepare($sql);
    $sth->bindValue(':id', $malop);
    if($sth->execute())
    {
        nv_redirect_location(NV_BASE_SITEURL.'?language=vi&nv=qldt&op=lophanhchinh');
    }
}

$data = array(
    'danhsachlop' => $danhsachlop,
    'tieude' => "Lớp hành chính"
);

//------------------
// Viết code vào đây
//pr("done");
//------------------
$contents = nv_theme_smarty($data);

include NV_ROOTDIR . '/includes/header.php';
echo nv_site_theme($contents);
include NV_ROOTDIR . '/includes/footer.php';
