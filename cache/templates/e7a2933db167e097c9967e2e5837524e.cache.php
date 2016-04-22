<?php if ($fn_include = $this->_include("header.html")) include($fn_include); ?>
<script>
function dr_show_wb(obj) {
    var msg = $(obj).html();
    var throughBox = art.dialog.through;
    throughBox({
        title:'<?php echo lang('html-214'); ?>',
        content: msg,
        lock: true,
        width:300,
        height:100,
        opacity: 0.1
    });
}
</script>
<div class="subnav">
	<div class="content-menu ib-a blue line-x">
		<?php echo $menu; ?>
	</div>
	<div class="bk10"></div>
	<div class="explain-col">
        <form method="post" action="" name="searchform" id="searchform">
            <select name="data[field]">
                <option value="uid" <?php if ($param['field']=='uid') { ?>selected<?php } ?>>Uid</option>
                <?php if (is_array($field)) { $count=count($field);foreach ($field as $t) { ?>
                <option value="<?php echo $t['fieldname']; ?>" <?php if ($param['field']==$t['fieldname']) { ?>selected<?php } ?>><?php echo $t['name']; ?></option>
                <?php } } ?>
            </select> ：
            <input type="text" class="input-text" value="<?php echo $param['keyword']; ?>" size="30" placeholder="<?php echo lang('html-249'); ?>" name="data[keyword]" />&nbsp;
            &nbsp;&nbsp;
            <input type="submit" value="<?php echo lang('search'); ?>" class="button" name="search">
        </form>
	</div>
	<div class="bk10"></div>
	<div class="table-list">
		<form action="" method="post" name="myform" id="myform">
        <input name="action" id="action" type="hidden" value="del" />
		<table width="100%">
		<thead>
		<tr>
			<th width="10" align="right"><input name="dr_select" id="dr_select" type="checkbox" onClick="dr_selected()" />&nbsp;</th>
			<th class="<?php echo ns_sorting('content'); ?>" name="content" align="left"><?php echo lang('html-214'); ?></th>
			<th hide="1" class="<?php echo ns_sorting('username'); ?>" name="username" width="150" align="left"><?php echo lang('html-347'); ?></th>
			<th class="<?php echo ns_sorting('comment'); ?>" name="comment" width="70" align="center"><?php echo lang('html-761'); ?></th>
			<th class="<?php echo ns_sorting('digg'); ?>" name="digg" width="70" align="center"><?php echo lang('html-762'); ?></th>
			<th hide="1" class="<?php echo ns_sorting('repost'); ?>" name="repost" width="70" align="center"><?php echo lang('html-763'); ?></th>
			<th class="<?php echo ns_sorting('inputtime'); ?>" name="inputtime" width="120" align="left"><?php echo lang('html-457'); ?></th>
			<th align="left" class="dr_option"><?php echo lang('option'); ?></th>
		</tr>
		</thead>
		<tbody>
		<?php if (is_array($list)) { $count=count($list);foreach ($list as $t) { ?>
		<tr id="dr_row_<?php echo $t['id']; ?>">
			<td align="right"><input name="ids[]" type="checkbox" class="dr_select" value="<?php echo $t['id']; ?>" />&nbsp;</td>
			<td align="left"><div onclick="dr_show_wb(this)" style="width:300px;height:25px;overflow:hidden;cursor:pointer;"><?php echo dr_sns_content($t['content']); ?></div></td>
			<td hide="1" align="left"><a onclick="dr_dialog_member('<?php echo $t['uid']; ?>')" href="javascript:;"><?php echo $t['username']; ?></a></td>
			<td align="center"><?php echo $t['comment']; ?></td>
			<td align="center"><?php echo $t['digg']; ?></td>
			<td hide="1" align="center"><?php echo $t['repost']; ?></td>
			<td align="left"><?php echo dr_date($t['inputtime'], NULL, 'red'); ?></td>
			<td align="left" class="dr_option">
			<a href="<?php echo dr_sns_feed_url($t['id']); ?>" target="_blank"><?php echo lang('go'); ?></a>
			</td>
		</tr> 
		<?php } } ?>
		<tr>
        	<th width="20" align="right"><input name="dr_select" id="dr_select" type="checkbox" onClick="dr_selected()" />&nbsp;</th>
			<td colspan="10" align="left" style="border:none">
            <?php if ($this->ci->is_auth('member/admin/sns/del')) { ?>
			<input type="button" class="button" value="<?php echo lang('del'); ?>" name="option" onClick="$('#action').val('del');dr_confirm_set_all('<?php echo lang('015'); ?>')" />
            <?php } ?>
			</td>
		</tr>
		</tbody>
		</table>
		</form>
        <div id="pages"><a><?php echo dr_lang('html-346', $param['total']); ?></a><?php echo $pages; ?></div>
	</div>
</div>
<?php if ($fn_include = $this->_include("footer.html")) include($fn_include);  exit; ?>