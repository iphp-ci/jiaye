<?php if ($fn_include = $this->_include("header.html")) include($fn_include); ?>
<script type="text/javascript">
$(function() {
	var _url = art.dialog.data('dr_row');
	if (_url) {
		art.dialog.data('dr_row', '');
		window.location.href=_url;
	}
	var _id = window.location.hash;
	if (_id && $(_id).length > 0) {
		var pos = $(_id).offset().top - 100;
		$("html,body").animate({ scrollTop: pos }, 1000);
	}
});
</script>
<div class="subnav">
	<div class="content-menu ib-a blue line-x" id="cc">
		<?php echo $menu; ?><a href="javascript:;" onClick="return dr_confirm_url('<?php echo lang('html-581'); ?>','<?php echo dr_url('menu/init'); ?>');"><em><?php echo lang('html-589'); ?></em></a><span>|</span><a href="http://www.omooo.com/help/list-341.html" target="_blank"><em><?php echo lang('help'); ?></em></a><span>|</span>
	</div>
	<div class="bk10"></div>
	<div class="explain-col">
		<font color="gray"><?php echo lang('html-053'); ?></font>
	</div>
	<div class="bk10"></div>
	<div class="table-list">
		<form action="" method="post" name="myform" id="myform">
		<input name="action" id="action" type="hidden" value="order" />
		<table width="100%">
		<thead>
        <tr>
			<th width="20" align="right"><input name="dr_select" id="dr_select" type="checkbox" onClick="dr_selected()" />&nbsp;</th>
			<th width="30" align="center"><?php echo lang('order'); ?></th>
            <th width="1" align="left">&nbsp;</th>
            <th align="left"><?php echo lang('html-026'); ?></th>
			<th align="left"><?php if ($this->ci->is_auth('admin/menu/add')) { ?><a class="add" title="<?php echo lang('add'); ?>" href="<?php echo dr_dialog_url(dr_url('menu/add', array('pid'=>0)), 'add'); ?>"></a><?php } ?></th>
        </tr>
        </thead>
		<tbody>
		<?php echo $list; ?>
		<tr>
			<th align="right"><input name="dr_select" type="checkbox" onClick="dr_selected()" />&nbsp;</th>
			<td colspan="7" align="left"> 
            <?php if ($this->ci->is_auth('admin/menu/del')) { ?><input type="button" class="button" value="<?php echo lang('del'); ?>" name="button" onClick="$('#action').val('del');return dr_confirm_del_all()" />&nbsp;<?php }  if ($this->ci->is_auth('admin/menu/edit')) { ?><input type="button" class="button" value="<?php echo lang('order'); ?>" name="button" onclick="$('#action').val('order');return dr_confirm_del_all()" />&nbsp;<div class="onShow"><?php echo lang('html-054'); ?></div><?php } ?>
			</td>
		</tr>
		</tbody>
		</table>
		</form>
	</div>
</div>
<?php if ($fn_include = $this->_include("footer.html")) include($fn_include); ?>