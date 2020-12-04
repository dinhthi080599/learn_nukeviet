<script src="https://code.jquery.com/jquery-3.5.1.js"></script>
{$data.css}
{$data.js}


<div class="card">
    <div class="card-title">{$title}</div>
        <div class="card-content">
            <div class="content">
                <div class="con-md-12">
                    <button class="btn btn-outline-info" type="button" data-toggle="modal" data-target="#exampleModal">
                        Thêm môn học
                    </button>
                </div>
                <nav class="icon-bar">
                    <ul class="soc">
                    </ul>   
                </nav>
            </div>
        </div>
    </div>
</div>

<!-- Modal -->
<div class="modal fade" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog" role="document">
      <div class="modal-content">
        <div class="modal-header">
          <h2 class="modal-title" id="exampleModalLabel">Thêm môn học</h2>
          <button type="button" class="close" data-dismiss="modal" aria-label="Close">
            <span aria-hidden="true">&times;</span>
          </button>
        </div>
        <div class="modal-body">
            <label class="pure-material-textfield-outlined">
                <input id="ten_cv" type="text" placeholder=" ">
                <span>Tên công việc</span>
            </label>
        </div>
        <div class="modal-footer">
          <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
          <button type="button" class="btn btn-primary">Save changes</button>
        </div>
      </div>
    </div>
  </div>