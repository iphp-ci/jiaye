<script type="text/javascript">
$(function() { //防止回车提交表单
	document.onkeydown = function(e){ 
		var ev = document.all ? window.event : e;
		if (ev.keyCode==13) {
			$("#mark").val("1"); // 标识不能提交表单
		}
	}
	$(".table_form th").last().css('border','none');
	$(".table_form td").last().css('border','none');
});
function dr_form_check() {
	if ($("#mark").val() == 0) { 
		return true;
	} else {
		return false;
	}
}
</script>
<div class="table-list" style="width:350px;">
<form action="" method="post" id="myform" name="myform" onsubmit="return dr_form_check()">
<input name="mark" id="mark" type="hidden" value="0" />
<table width="100%" class="table_form">
<tr>
    <th width="100"><?php echo lang('html-426'); ?>： </th>
    <td>
    <input class="input-text" type="text" name="data[host]" value="<?php echo $data['host']; ?>" size="20" required="required" />
    </td>
</tr>
<tr>
    <th><?php echo lang('html-429'); ?>： </th>
    <td>
    <input class="input-text" type="text" name="data[port]" value="<?php if ($data['port']) {  echo $data['port'];  } else { ?>25<?php } ?>" required="required" size="20" />
    </td>
</tr>
<tr>
    <th><?php echo lang('html-427'); ?>： </th>
    <td>
    <input class="input-text" type="text" name="data[user]" value="<?php echo $data['user']; ?>" size="20" required="required" />
    </td>
</tr>
<tr>
    <th><?php echo lang('html-428'); ?>： </th>
    <td>
    <input class="input-text" type="text" name="data[pass]" value="<?php if ($data['pass']) { ?>******<?php } ?>" size="20" required="required" />
    </td>
</tr>
</table>
</form>
</div>