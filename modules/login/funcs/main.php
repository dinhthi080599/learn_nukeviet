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
$base_url = NV_BASE_SITEURL . 'index.php/about/gioi-thieu-ve-nukeviet.html';
$user_session = get_Session('user');
$admin_session = get_Session('admin');
if($user_session != '' || $admin_session != '') {
    nv_redirect_location($base_url);
}
$login_false = get_flash_data('login_false');

$login = $nv_Request->get_title('login', 'post', "");
# check login
if($login == "login"){ 
    $name = $nv_Request->get_title('name', 'post', "");
    $pass = $nv_Request->get_title('pass', 'post', "");
    $sql = "t2.md5username ='" . nv_md5safe($name) . "'";
    $sql = "SELECT t1.admin_id admin_id, t1.lev admin_lev, t1.last_agent admin_last_agent, t1.last_ip admin_last_ip, t1.last_login admin_last_login,
    t2.userid, t2.last_agent, t2.last_ip, t2.last_login, t2.last_openid, t2.username, t2.email, t2.password, t2.active2step, t2.in_groups, t2.secretkey
    FROM tbl_authors t1
    RIGHT join tbl_users t2 on t1.admin_id=t2.userid
    WHERE  $sql";
    $result = $db->query($sql)->fetch();
    if($crypt->validate_password($pass, $result['password'])){
        $nv_Request->set_Session('user', $result['userid']);
        if(isset($result['admin_id'])){ // nếu tài khoản là admin
            $admin_id = intval($result['admin_id']);
            $checknum = md5(nv_genpass(10));
            $array_admin = [
                'admin_id' => $admin_id,
                'checknum' => $checknum,
                'current_agent' => NV_USER_AGENT,
                'last_agent' => $row['admin_last_agent'],
                'current_ip' => NV_CLIENT_IP,
                'last_ip' => $row['admin_last_ip'],
                'current_login' => NV_CURRENTTIME,
                'last_login' => intval($row['admin_last_login'])
            ];
            $admin_encode = json_encode($array_admin);
        
            $sth = $db->prepare('UPDATE ' . NV_AUTHORS_GLOBALTABLE . ' SET
                check_num = :check_num, last_login = ' . NV_CURRENTTIME . ',
                last_ip = :last_ip, last_agent = :last_agent
            WHERE admin_id=' . $admin_id);
            $sth->bindValue(':check_num', $checknum, PDO::PARAM_STR);
            $sth->bindValue(':last_ip', NV_CLIENT_IP, PDO::PARAM_STR);
            $sth->bindValue(':last_agent', NV_USER_AGENT, PDO::PARAM_STR);
            $sth->execute();
            $nv_Request->set_Session('admin', $admin_encode);
            $nv_Request->set_Session('online', '1|' . NV_CURRENTTIME . '|' . NV_CURRENTTIME . '|0');
        }else{ 
            $nv_Request->set_Session('user', $name);
        }
        set_flash_data('login_succes', 'Đăng nhập thành công!');
        nv_redirect_location($base_url);
    }else{
        set_flash_data('login_false', 'Tài khoản hoặc mật khẩu không chính xác!');
        nv_redirect_location(NV_BASE_SITEURL);
    }
}


include NV_ROOTDIR . '/includes/Smarty.class.php';

$smarty = new Smarty();
$smarty->setTemplateDir(NV_ROOTDIR . '/themes/' . $module_info['template'] . '/modules/' . $module_info['module_theme']);
$css = '<link rel="StyleSheet" href="'. NV_BASE_SITEURL .'themes/'. $module_info['template'] .'/css/'. $module_info['module_file'] .'.css" type="text/css"/>';
$js = '<script src="'. NV_BASE_SITEURL .'themes/'. $module_info['template'] .'/js/'. $module_info['module_file'] .'.js" type="text/javascript"></script>';
$data = array(
    'css' => $css,
    'js' => $js,
    'login_false' => $login_false
);
$smarty->assign('data', $data); 
$contents = $smarty->fetch('main.tpl');
include NV_ROOTDIR . '/includes/header.php';
echo $contents;
include NV_ROOTDIR . '/includes/footer.php';