<?php
/* Smarty version 3.1.34-dev-7, created on 2020-11-26 10:17:58
  from '/var/www/html/learn_nukeviet/themes/qldt_default/modules/login/main.tpl' */

/* @var Smarty_Internal_Template $_smarty_tpl */
if ($_smarty_tpl->_decodeProperties($_smarty_tpl, array (
  'version' => '3.1.34-dev-7',
  'unifunc' => 'content_5fbf1e6631b472_47061501',
  'has_nocache_code' => false,
  'file_dependency' => 
  array (
    '49544fa8d06bee43c18e502eea99b456283d4ceb' => 
    array (
      0 => '/var/www/html/learn_nukeviet/themes/qldt_default/modules/login/main.tpl',
      1 => 1606360663,
      2 => 'file',
    ),
  ),
  'includes' => 
  array (
  ),
),false)) {
function content_5fbf1e6631b472_47061501 (Smarty_Internal_Template $_smarty_tpl) {
echo '<script'; ?>
 src="https://code.jquery.com/jquery-3.5.1.js"><?php echo '</script'; ?>
>
<?php echo $_smarty_tpl->tpl_vars['data']->value['css'];?>

<?php echo $_smarty_tpl->tpl_vars['data']->value['js'];?>

<?php echo '<script'; ?>
>
    if('<?php echo $_smarty_tpl->tpl_vars['data']->value['login_false'];?>
' != ''){
        alert("Tài khoản hoặc mật khẩu không chính xác!");
    }
<?php echo '</script'; ?>
>
<div class="materialContainer">
    <div class="box">
        <div class="title">Đăng nhập</div>
        <form method="post">
            <div class="input">
                <label for="name">Tài khoản</label>
                <input type="text" name="name" id="name" autocomplete="off" readonly onfocus="this.removeAttribute('readonly');">
                <span class="spin"></span>
            </div>
            <div class="input">
                <label for="pass">Mật khẩu</label>
                <input type="password" name="pass" id="pass" autocomplete="off" readonly onfocus="this.removeAttribute('readonly');">
                <span class="spin"></span>
            </div>
            <div class="button login">
                <button type="submit" name="login" id="login" value="login" autocomplete="off" readonly onfocus="this.removeAttribute('readonly');">
                    <span>Đăng nhập</span><i class="fa fa-check"></i>
                </button>
            </div>
        </form>
        <a href="" class="pass-forgot">Quên mật khẩu?</a>
    </div>
    <div class="overbox">
        <div class="material-button alt-2"><span class="shape"></span></div>
        <div class="title">Đăng ký</div>
        <div class="input">
            <label for="regname">Tài khoản</label>
            <input type="text" name="regname" id="regname" autocomplete="off" readonly onfocus="this.removeAttribute('readonly');">
            <span class="spin"></span>
        </div>
        <div class="input">
            <label for="regpass">Mật khẩu</label>
            <input type="password" name="regpass" id="regpass" autocomplete="off" readonly onfocus="this.removeAttribute('readonly');">
            <span class="spin"></span>
        </div>
        <div class="input">
            <label for="reregpass">Nhập lại mật khẩu</label>
            <input type="password" name="reregpass" id="reregpass" autocomplete="off" readonly onfocus="this.removeAttribute('readonly');">
            <span class="spin"></span>
        </div>
        <div class="button">
            <button ><span>Đăng ký</span></button>
        </div>
    </div>
</div><?php }
}
