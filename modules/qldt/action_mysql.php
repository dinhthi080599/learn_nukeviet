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

$prefix = $db_config['prefix'];

$sql_drop_module = [];
$sql_drop_module[] = "DROP TABLE IF EXISTS " . $prefix . "_" . $module_data . "_diem";
$sql_drop_module[] = "DROP TABLE IF EXISTS " . $prefix . "_" . $module_data . "_diemthi";
$sql_drop_module[] = "DROP TABLE IF EXISTS " . $prefix . "_" . $module_data . "_dangkymon";
$sql_drop_module[] = "DROP TABLE IF EXISTS " . $prefix . "_" . $module_data . "_dsthi";
$sql_drop_module[] = "DROP TABLE IF EXISTS " . $prefix . "_" . $module_data . "_lopmon";
$sql_drop_module[] = "DROP TABLE IF EXISTS " . $prefix . "_" . $module_data . "_monhoc";
$sql_drop_module[] = "DROP TABLE IF EXISTS " . $prefix . "_" . $module_data . "_sinhvien";
$sql_drop_module[] = "DROP TABLE IF EXISTS " . $prefix . "_" . $module_data . "_canbo";
$sql_drop_module[] = "DROP TABLE IF EXISTS " . $prefix . "_" . $module_data . "_lop";
$sql_drop_module[] = "DROP TABLE IF EXISTS " . $prefix . "_" . $module_data . "_loaidiem";
$sql_drop_module[] = "DROP TABLE IF EXISTS " . $prefix . "_" . $module_data . "_phong";
$sql_drop_module[] = "DROP TABLE IF EXISTS " . $prefix . "_" . $module_data . "_dvhv";

$sql_create_module = $sql_drop_module;
$sql_create_module[] = "CREATE TABLE " . $prefix . "_" . $module_data . "_dvhv(
	ma_dvhv int AUTO_INCREMENT PRIMARY KEY NOT NULL,
    ten_dvhv int NOT NULL,
    kyhoc int NOT NULL,
    namhoc int NOT NULL
);";
$sql_create_module[] = "CREATE TABLE " . $prefix . "_" . $module_data . "_monhoc (
	ma_monhoc int AUTO_INCREMENT PRIMARY KEY NOT NULL,
    ten_monhoc varchar(255) NOT NULL,
    khoiluong int NOT NULL,
    donvitinh varchar(10) NOT NULL
);";
$sql_create_module[] = "CREATE TABLE " . $prefix . "_" . $module_data . "_canbo (
	ma_canbo int AUTO_INCREMENT PRIMARY KEY NOT NULL,
    ten_canbo varchar(255) NOT NULL
);";
$sql_create_module[] = "CREATE TABLE " . $prefix . "_" . $module_data . "_lopmon (
	ma_lopmon int AUTO_INCREMENT PRIMARY KEY NOT NULL,
    ten_lopmon varchar(255) NOT NULL,
    ma_monhoc int,
    ma_canbo int,
    ma_dvhv int,
    FOREIGN KEY (ma_monhoc) REFERENCES tbl_qldt_monhoc(ma_monhoc),
    FOREIGN KEY (ma_dvhv) REFERENCES tbl_qldt_dvhv(ma_dvhv),
    FOREIGN KEY (ma_canbo) REFERENCES tbl_qldt_canbo(ma_canbo)
);";
$sql_create_module[] = "CREATE TABLE " . $prefix . "_" . $module_data . "_lop (
	ma_lop int AUTO_INCREMENT PRIMARY KEY NOT NULL,
    ten_lop varchar(255) NOT NULL
);";
$sql_create_module[] = "CREATE TABLE " . $prefix . "_" . $module_data . "_sinhvien (
    ma_sv varchar(255) PRIMARY KEY NOT NULL,
    ten_sv varchar(255) NOT NULL,
    ngaysinh varchar(255) NOT NULL,
    gioitinh varchar(10) NOT NULL,
    ma_lop int NULL,
    sdt varchar(13) NOT NULL,
    cmnd varchar(13) NOT NULL,
    url_img varchar(255) NOT NULL,
    FOREIGN KEY (ma_lop) REFERENCES tbl_qldt_lop(ma_lop) 
);";
$sql_create_module[] = "CREATE TABLE " . $prefix . "_" . $module_data . "_loaidiem (
    ma_loaidiem varchar(255) PRIMARY KEY NOT NULL,
    ten_loaidiem varchar(255) NOT NULL
);";
$sql_create_module[] = "CREATE TABLE " . $prefix . "_" . $module_data . "_dangkymon (
    ma_dkm int AUTO_INCREMENT PRIMARY KEY NOT NULL,
    ma_lopmon int NOT NULL,
    ma_sv varchar(255) NOT NULL,
    FOREIGN KEY (ma_lopmon) REFERENCES tbl_qldt_lopmon(ma_lopmon),    
    FOREIGN KEY (ma_sv) REFERENCES tbl_qldt_sinhvien(ma_sv)  
);";
$sql_create_module[] = "CREATE TABLE " . $prefix . "_" . $module_data . "_diem (
	ma_diem int AUTO_INCREMENT PRIMARY KEY NOT NULL,
    ma_dkm int NOT NULL,
    ma_loaidiem varchar(255) NOT NULL,
    diem float NOT NULL,
    FOREIGN KEY (ma_loaidiem) REFERENCES tbl_qldt_loaidiem(ma_loaidiem),  
    FOREIGN KEY (ma_dkm) REFERENCES tbl_qldt_dangkymon(ma_dkm)  
);";
$sql_create_module[] = "CREATE TABLE " . $prefix . "_" . $module_data . "_phong(
	ma_phong int AUTO_INCREMENT PRIMARY KEY NOT NULL,
    ten_phong varchar(255) NOT NULL
);";
$sql_create_module[] = "CREATE TABLE " . $prefix . "_" . $module_data . "_dsthi(
	ma_dsthi int AUTO_INCREMENT PRIMARY KEY NOT NULL,
    thoigian varchar(255) NOT NULL,
    ma_phongthi int NOT NULL,
    ma_mon int NOT NULL,
    FOREIGN KEY (ma_phongthi) REFERENCES tbl_qldt_phong(ma_phong),  
    FOREIGN KEY (ma_mon) REFERENCES tbl_qldt_monhoc(ma_monhoc)  
);";
$sql_create_module[] = "CREATE TABLE " . $prefix . "_" . $module_data . "_diemthi(
	ma_diemthi int AUTO_INCREMENT PRIMARY KEY NOT NULL,
    ma_dkm int NOT NULL,
    ma_dsthi int NOT NULL,
    FOREIGN KEY (ma_dkm) REFERENCES tbl_qldt_dangkymon(ma_dkm),  
    FOREIGN KEY (ma_dsthi) REFERENCES tbl_qldt_dsthi(ma_dsthi)  
);";