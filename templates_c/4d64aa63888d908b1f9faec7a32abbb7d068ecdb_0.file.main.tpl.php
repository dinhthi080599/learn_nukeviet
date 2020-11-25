<?php
/* Smarty version 3.1.34-dev-7, created on 2020-11-25 14:48:29
  from '/var/www/html/learn_nukeviet/themes/qldt_default/modules/Security/main.tpl' */

/* @var Smarty_Internal_Template $_smarty_tpl */
if ($_smarty_tpl->_decodeProperties($_smarty_tpl, array (
  'version' => '3.1.34-dev-7',
  'unifunc' => 'content_5fbe0c4d57baf8_29178264',
  'has_nocache_code' => false,
  'file_dependency' => 
  array (
    '4d64aa63888d908b1f9faec7a32abbb7d068ecdb' => 
    array (
      0 => '/var/www/html/learn_nukeviet/themes/qldt_default/modules/Security/main.tpl',
      1 => 1606290508,
      2 => 'file',
    ),
  ),
  'includes' => 
  array (
  ),
),false)) {
function content_5fbe0c4d57baf8_29178264 (Smarty_Internal_Template $_smarty_tpl) {
?><div class="col-md-24">
    <table class="table table-bordered table-responsive" 
        style="width: 100%; word-wrap:break-word; table-layout: fixed;">
        <tr>
            <th colspan="7">Mã hóa</th>
        </tr>
        <tr>
            <th width="3%">Index</th>
            <th width="10%">Hash Function</th>
            <th width="10%">Function Name</th>
            <th width="10%">Type</th>
            <th width="10%">Clear Text</th>
            <th>Hash</th>
            <th width="5%">Describe</th>
        </tr>
        <?php
$_from = $_smarty_tpl->smarty->ext->_foreach->init($_smarty_tpl, $_smarty_tpl->tpl_vars['hash_function']->value, 'value', false, 'key');
$_smarty_tpl->tpl_vars['value']->do_else = true;
if ($_from !== null) foreach ($_from as $_smarty_tpl->tpl_vars['key']->value => $_smarty_tpl->tpl_vars['value']->value) {
$_smarty_tpl->tpl_vars['value']->do_else = false;
?>
        <tr>
            <td rowspan="<?php echo count($_smarty_tpl->tpl_vars['value']->value['type']);?>
" class="text-center"><?php echo $_smarty_tpl->tpl_vars['key']->value;?>
</td>
            <td rowspan="<?php echo count($_smarty_tpl->tpl_vars['value']->value['type']);?>
">
                <?php echo $_smarty_tpl->tpl_vars['value']->value['hash_name'];?>

            </td>
            <td rowspan="<?php echo count($_smarty_tpl->tpl_vars['value']->value['type']);?>
">
                <?php echo $_smarty_tpl->tpl_vars['value']->value['function_name'];?>

            </td>
            <td><?php echo $_smarty_tpl->tpl_vars['value']->value['type'][1]['name'];?>
</td>
            <td><?php echo $_smarty_tpl->tpl_vars['value']->value['type'][1]['clear_text'];?>
</td>
            <td><p stlye=""><?php echo $_smarty_tpl->tpl_vars['value']->value['type'][1]['hash'];?>
</p></td>
            <td><?php echo $_smarty_tpl->tpl_vars['value']->value['type'][1]['describe'];?>
</td>
        <?php
$_from = $_smarty_tpl->smarty->ext->_foreach->init($_smarty_tpl, $_smarty_tpl->tpl_vars['value']->value['type'], 'v', false, 'k');
$_smarty_tpl->tpl_vars['v']->do_else = true;
if ($_from !== null) foreach ($_from as $_smarty_tpl->tpl_vars['k']->value => $_smarty_tpl->tpl_vars['v']->value) {
$_smarty_tpl->tpl_vars['v']->do_else = false;
?>
            <?php if ($_smarty_tpl->tpl_vars['k']->value == "1") {?> <?php continue 1;?> <?php }?>
            <tr>
                <td><?php echo $_smarty_tpl->tpl_vars['v']->value['name'];?>
</td>
                <td><?php echo $_smarty_tpl->tpl_vars['v']->value['clear_text'];?>
</td>
                <td><p stlye=""><?php echo $_smarty_tpl->tpl_vars['v']->value['hash'];?>
</p></td>
                <td><?php echo $_smarty_tpl->tpl_vars['v']->value['describe'];?>
</td>
            </tr>
        <?php
}
$_smarty_tpl->smarty->ext->_foreach->restore($_smarty_tpl, 1);?>
        </tr>
        <?php
}
$_smarty_tpl->smarty->ext->_foreach->restore($_smarty_tpl, 1);?>
    </table>
</div><?php }
}
