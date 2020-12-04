<?php
/* Smarty version 3.1.34-dev-7, created on 2020-12-03 22:54:18
  from '/var/www/html/learn_nukeviet/themes/qldt_default/modules/qldt/main.tpl' */

/* @var Smarty_Internal_Template $_smarty_tpl */
if ($_smarty_tpl->_decodeProperties($_smarty_tpl, array (
  'version' => '3.1.34-dev-7',
  'unifunc' => 'content_5fc90a2a9ebd72_05090064',
  'has_nocache_code' => false,
  'file_dependency' => 
  array (
    '91d1732cd333b3475623cc51d5de30f664e62a28' => 
    array (
      0 => '/var/www/html/learn_nukeviet/themes/qldt_default/modules/qldt/main.tpl',
      1 => 1607010843,
      2 => 'file',
    ),
  ),
  'includes' => 
  array (
  ),
),false)) {
function content_5fc90a2a9ebd72_05090064 (Smarty_Internal_Template $_smarty_tpl) {
echo '<script'; ?>
 src="https://code.jquery.com/jquery-3.5.1.js"><?php echo '</script'; ?>
>
<?php echo $_smarty_tpl->tpl_vars['data']->value['css'];?>

<?php echo $_smarty_tpl->tpl_vars['data']->value['js'];?>

<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.1/css/all.min.css"/>
<div class="card">
    <div class="card-title"><?php echo $_smarty_tpl->tpl_vars['title']->value;?>
</div>
        <div class="card-content">
            <div class="content">
                <nav class="icon-bar">
                    <ul class="soc">
                        <li>
                            <a class="icon-17" href="<?php echo NV_BASE_SITEURL;?>
?language=vi&nv=qldt&op=themsv" title="Thêm sinh viên">
                                <div class="ir"><i class="fas fa-user-graduate"></i></div>
                            </a>
                            <div class="icon-title">Thêm sinh viên</div>
                        </li>
                        <li>
                            <a class="icon-17" href="#" title="LinkedIn">
                                <div class="ir"><i class="fas fa-ad"></i></div>
                            </a>
                            <div class="icon-title">aaaaaaaa</div>
                        </li>
                        <li>
                            <a class="icon-17" href="#" title="LinkedIn">
                                <div class="ir"><i class="fas fa-ad"></i></div>
                            </a>
                            <div class="icon-title">aaaaaaaa</div>
                        </li>
                        <li>
                            <a class="icon-17" href="#" title="LinkedIn">
                                <div class="ir"><i class="fas fa-ad"></i></div>
                            </a>
                            <div class="icon-title">aaaaaaaa</div>
                        </li>   
                        <li>
                            <a class="icon-17" href="?language=vi&nv=qldt&op=monhoc" title="LinkedIn">
                                <div class="ir"><i class="fas fa-ad"></i></div>
                            </a>
                            <div class="icon-title">Quản lý môn học</div>
                        </li>
                    </ul>   
                </nav>
            </div>
        </div>
    </div>
</div><?php }
}
