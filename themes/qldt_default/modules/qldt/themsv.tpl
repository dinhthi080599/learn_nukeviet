<script src="https://code.jquery.com/jquery-3.5.1.js"></script>
{$data.css}
{$data.js}


<div class="card">
    <div class="card-title">{$title}</div>
        <div class="card-content">
            <form action="?language=vi&nv=qldt&op=themsv" method="POST" enctype="multipart/form-data">
                <div class="content">
                    <table class="table table-striped table-bordered table-hover">
                        <tbody>
                            <tr>
                                <td>Mã sinh viên</td>
                                <td><input type="text" class="w250 form-control" name="ma_sv" value="" placeholder="Nhập mã sinh viên"></td>
                            </tr>
                            <tr>
                                <td>Tên sinh viên</td>
                                <td>
                                    <input type="text" class="w250 form-control" name="ten_sv" value="" placeholder="Nhập tên sinh viên">
                                </td>
                            </tr>
                            <tr>
                                <td>Ảnh</td>
                                <td>
                                    <div class="contain animated bounce">
                                        <form id="form1" runat="server">
                                            <div id='img_contain'>
                                                <label for="anh_sv">
                                                    <img id="blah" src="/learn_nukeviet/uploads/qldt/img/user.png" alt="your image" title=''/>
                                                </label>
                                            </div> 
                                            <div class="input-group"> 
                                                <div class="custom-file">
                                                    <input type="file" id="anh_sv" name="anh_sv" class="imgInp custom-file-input">
                                                </div>
                                            </div>
                                        </form>
                                    </div>
                                </td>
                            </tr>
                            <tr>
                                <td>Ngày sinh</td>
                                <td>
                                    <input type="text" class="w250 form-control" name="ngaysinh_sv" value="" placeholder="Nhập ngày sinh của sinh viên">
                                </td>
                            </tr>
                            <tr>
                                <td>Giới tính</td>
                                <td>
                                    <label for="nam"  style="margin-bottom: 0px;">Nam</label>
                                    <input type="radio" class="w250 form-control" name="gioitinh_sv" value="nam" id="nam" style="margin-top: 0px;">
                                    <label for="nu"   style="margin-bottom: 0px;">Nữ </label>
                                    <input type="radio" class="w250 form-control" name="gioitinh_sv" value="nu" id="nu" style="margin-top: 0px;">
                                </td>
                            </tr>
                            <tr>
                                <td>SĐT</td>
                                <td>
                                    <input type="text" class="w250 form-control" name="sdt" value="" placeholder="Nhập số điện thoại sinh viên">
                                </td>
                            </tr>
                            <tr>
                                <td>CMND/CCCD</td>
                                <td>
                                    <input type="text" class="w250 form-control" name="cmnd" value="" placeholder="Nhập CMND/CCCD sinh viên">
                                </td>
                            </tr>
                        </tbody>
                    </table>
                    <div class="con-md-12">
                        <button class="btn btn-outline-info" type="submit" value="them_sv" name="them_sv">
                            Thêm sinh viên
                        </button>
                    </div>
                </div>
            </form>
        </div>
    </div>
</div>