<!-- BEGIN: main -->
<script src="https://code.jquery.com/jquery-3.5.1.js"></script>
{$data.css}
{$data.js}
<div class="card">
  <h2>{$title}</h2>
    <div class="card-content">
        <div class="content">
            <div class="row">
                <button onclick="addClick()" class="btn btn-outline-info" type="button" data-toggle="modal" data-target="#exampleModal">
                    Thêm lớp hành chính
                </button>
            </div>
            <nav class="icon-bar">
                <ul class="soc"></ul>   
            </nav>
            </div>
        <div class="table-responsive">
            <form method="POST">
            <table class="table table-striped table-bordered table-hover">
                <caption><em class="fa fa-file-text-o">&nbsp;</em>Danh sách lớp hành chính</caption>
                <thead>
                    <tr>
                        <th style="width:6%"><a href="">STT</a></th>
                        <th class="w50"><a href="">Tên lớp</a></th>
                        <th class="text-center" style="width:11%">Tác vụ</th>
                    </tr>
                </thead>
                <tbody>
                  {foreach $data['danhsachlop'] as $key => $dslop}
                    <tr>
                        <td class="align-middle">{$key+1}</td>
                        <td>{$dslop.ten_lop}</td>
                        <td>
                          <button type="button" 
                                  onclick="editClick(this)" 
                                  data-toggle="modal"
                                  data-tenlop="{$dslop.ten_lop}" 
                                  data-malop="{$dslop.ma_lop}" 
                                  data-target="#exampleModal" 
                                  class="btn btn-xs btn-warning">
                                  <em class="fa fa-edit"></em>
                          </button>

                          <button type="submit" 
                                  class="btn btn-xs btn-danger" 
                                  name="xoalop"
                                  value="{$dslop.ma_lop}">
                                  <em class="fa fa-trash-o"></em>
                          </button>

                        </td>
                    </tr>
                  {/foreach}
                </tbody>
            </table>
        </form>
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