<!-- BEGIN: main -->
<script src="https://code.jquery.com/jquery-3.5.1.js"></script>
{$data.css}
{$data.js}
<div class="card">
<h2>{$title}</h2>
    <div class="card-content">
        <div class="content">
            <div class="row">
            <h2 class="text-center">Nhập điểm quá trình cho sinh viên</h2>
            </div>
            <h3> Chọn lớp</h3>
            <form method="post">
            <div class="row">
              <div class="col-md-8">
                <select id="cars" class="form-control" name="lopmon">
                    <option value="0">--Chọn lớp --</option>
                    {foreach $data.danhsachlop as $key => $value}
                      <option value="{$value.ma_lopmon}">{$value.ten_lopmon}</option>
                    {/foreach}
                </select>
              </div>
              <div class="col-md-4">
                <button class="btn btn-success" name="xemdanhsach" value="xemdanhsach">Xem</button>
              </div>
            </div>
            </form>
            <nav class="icon-bar">
                <ul class="soc"></ul>   
            </nav>
            </div>
             <form method="POST">
        <div class="table-responsive">
            <table class="table table-striped table-bordered table-hover">
                <caption><em class="fa fa-file-text-o">&nbsp;</em>Danh sách sinh viên trong lớp môn</caption>
                <thead>
                    <tr>
                        <th style="width:6%"><a href="">STT</a></th>
                        <th class="w50"><a href="">Tên sinh viên</a></th>
                        <th class="w50"><a href="">Ngày sinh</a></th>
                        <th class="w50"><a href="">Số điện thoại</a></th>
                        <th class="w50"><a href="">Giới tính</a></th>
                        <th class="w50"><a href="">CMND</a></th>
                        <th class="text-center" style="width:11%">Chuyên cần</th>
                        <th class="text-center" style="width:11%">Quá trình</th>
                    </tr>
                </thead>
                <tbody>
                  {foreach $data['danhsachsv'] as $key => $dssv}
                    <tr>
                        <td class="align-middle">{$key+1}</td>
                        <td>{$dssv.ten_sv}</td>
                        <td>{$dssv.ngaysinh}</td>
                        <td>{$dssv.sdt}</td>
                        <td>{$dssv.gioitinh}</td>
                        <td>{$dssv.cmnd}</td>
                        <td><input class="form-control" name="diemchuyencan[{$dssv.ma_sv}]"></td>
                        <td><input class="form-control" name="diemquatrinh[][{$dssv.ma_sv}]"></td>
                    </tr>
                  {/foreach}
                </tbody>
              
                <tfoot>
                    <tr>
                       
                    </tr>
                </tfoot>
            
            </table>
            <div class="text-right">
            <button type="submit" class="btn btn-primary" value="luudiem" name="luudiem">Lưu</button>
            <button class="btn btn-basic">Hủy</button>
            </div>
    </form>
        </div>
    </div>
</div>
<form method="post">
<div class="modal fade" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="lalelModal" aria-hidden="true">
    <div class="modal-dialog" role="document">
      <div class="modal-content">
        <div class="modal-header">
          <h2 class="modal-title" id="labelModal">Thêm lớp hành chính</h2>
          <button type="button" class="close" data-dismiss="modal" aria-label="Close">
            <span aria-hidden="true">&times;</span>
          </button>
        </div>
        <div class="modal-body">

            <div class="form-group row">
                <label for="staticEmail" class="col-sm-2 col-form-label">Tên lớp</label>
                <div class="col-sm-10">
                <input type="text" class="form-control" id="tenlop" name="tenlop" placeholder="Nhập tên lớp">
                <input type="hidden" name="malop" id="malop">
                </div>
            </div>

        </div>
        <div class="modal-footer">
          <button type="button" class="btn btn-secondary" data-dismiss="modal">Hủy</button>
          <button type="submit" name="themlop" value="themlop" class="btn btn-primary" id="btnAction">Thêm lớp</button>
        </div>
      </div>
    </div>
  </div>

  </form>
<script>
function addClick()
{
  $("#tenlop").val("");
  $("#malop").val("");

  document.getElementById("btnAction").innerHTML = "Thêm lớp";
  document.getElementById("btnAction").value = "themlop";
  document.getElementById("labelModal").innerHTML = "Thêm lớp hành chính";  
}
function editClick(data)
{
  $("#malop").val(data.getAttribute('data-malop'));
  $("#tenlop").val(data.getAttribute('data-tenlop'));

  document.getElementById("btnAction").innerHTML = "Sửa lớp";
  document.getElementById("btnAction").value = "sualop";
  document.getElementById("labelModal").innerHTML = "Sửa lớp hành chính";  
}
</script>
<!-- END: main -->