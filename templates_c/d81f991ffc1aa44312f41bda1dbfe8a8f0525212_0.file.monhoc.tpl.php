<?php
/* Smarty version 3.1.34-dev-7, created on 2020-12-03 09:14:12
  from '/var/www/html/learn_nukeviet/themes/qldt_default/modules/qldt/monhoc.tpl' */

/* @var Smarty_Internal_Template $_smarty_tpl */
if ($_smarty_tpl->_decodeProperties($_smarty_tpl, array (
  'version' => '3.1.34-dev-7',
  'unifunc' => 'content_5fc849f4458740_64189654',
  'has_nocache_code' => false,
  'file_dependency' => 
  array (
    'd81f991ffc1aa44312f41bda1dbfe8a8f0525212' => 
    array (
      0 => '/var/www/html/learn_nukeviet/themes/qldt_default/modules/qldt/monhoc.tpl',
      1 => 1606961651,
      2 => 'file',
    ),
  ),
  'includes' => 
  array (
  ),
),false)) {
function content_5fc849f4458740_64189654 (Smarty_Internal_Template $_smarty_tpl) {
echo '<script'; ?>
 src="https://code.jquery.com/jquery-3.5.1.js"><?php echo '</script'; ?>
>
<?php echo $_smarty_tpl->tpl_vars['data']->value['css'];?>

<?php echo $_smarty_tpl->tpl_vars['data']->value['js'];?>



<div class="card">
    <div class="card-title"><?php echo $_smarty_tpl->tpl_vars['title']->value;?>
</div>
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
  </div><?php }
}
