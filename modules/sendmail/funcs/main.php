<?php

/**
 * @Project QLDT
 * @Author Thi Đình Nguyễn (FFC TEAM)
 * @Copyright (C) 2010 VINADES., JSC. All rights reserved
 * @Createdate 24-11-2020 23:01
 */

   
if ( ! defined( 'NV_IS_MOD_SECURITY' ) ) die( 'Stop!!!' );

// email sending protocol mail or smtp
$config['protocol']="mail";
// smtp hostname eg. smtp.gmail.com
$config['smtp_hostname'] = "ssl://smtp.gmail.com";
// smtp username
$config['smtp_username'] = "nguyendinhthi080599@gmail.com";
// smtp password
$config['smtp_password'] = "123456789Thi@";
// smtp outgoing port. eg for gmail its 465, outlook 587, yahoo 465 for other contact your mailing administrator
$config['smtp_port'] = "465";
// smtp timeout default 5 seconds
$config['smtp_timeout'] = "5";
// smtp tls
$config['starttls'] = TRUE;
// email message content text of html.
// In html email make sure you don't have any relative links or relative image paths otherwise they will not work.
$config['smtp_mailtype'] = "text";
// Default result message
// you can use below tags and system replace it with related variables.
// [username] [email] [first_name] [last_name] [score_obtained] [percentage_obtained] [result_status] [quiz_name] [current_date]
$config['result_message'] = "Xin chào [last_name],\r\n \r\n đây là link kích hoạt cho thành viên";
// email subject
$config['result_subject'] = "link kích hoạt";
// email send from
$config['fromemail']=" tinmoi24h@yahoo.com ";
?>