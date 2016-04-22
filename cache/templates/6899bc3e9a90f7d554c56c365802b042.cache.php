<?php if ($fn_include = $this->_include("header.html")) include($fn_include); ?>
<script type="text/javascript">
$(function() {
	SwapTab(<?php echo $page; ?>);
});
function test_email(value) {
    $.get('<?php echo dr_url("member/home/ajax_email"); ?>&uid=<?php echo $data['uid']; ?>&email='+value+'&rand='+Math.random(), function(data){
        if (data) {
            $("#dr_email_tips").html(data);
            $("#dr_email_tips").attr("class", "onError");
        } else {
            $("#dr_email_tips").html(" &nbsp;");
            $("#dr_email_tips").attr("class", "onCorrect");
        }
    });
}
</script>
<form action="" method="post" name="myform" id="myform">
<input name="page" id="page" type="hidden" value="<?php echo $page; ?>" />
<div class="subnav">
	<div class="content-menu ib-a blue line-x">
		<?php echo $menu; ?>
	</div>
	<div class="bk10"></div>
    <div class="table-list col-tab">
		<ul class="tabBut cu-li">
			<li onclick="SwapTab(0)"><?php echo lang('html-628'); ?></li>
			<li onclick="SwapTab(1)"><?php echo lang('html-629'); ?></li>
			<li onclick="SwapTab(2)">OAuth2</li>
		</ul>
		<div class="contentList pad-10">
			<div id="cnt_0" style="display:none" class="dr_hide">
                <table width="100%" class="table_form">
                <tr class="dr_one">
                    <th width="200">&nbsp;<?php echo lang('html-532'); ?>： </th>
                    <td><?php echo $data['username']; ?></td>
                </tr>
                <tr>
                    <th><font color="red">*</font>&nbsp;<?php echo lang('html-348'); ?>： </th>
                    <td>
                        <select name="member[groupid]">
                            <?php $return = $this->list_tag("action=cache name=MEMBER.group"); if ($return) extract($return); $count=count($return); if (is_array($return)) { foreach ($return as $key=>$t) { ?>
                            <option value="<?php echo $t['id']; ?>" <?php if ($t['id']==$data['groupid']) { ?>selected<?php } ?>> <?php echo $t['name']; ?> </option>
                            <?php } } ?>
                        </select>
                        <div class="onShow" id="dr_groupid_tips"></div></td>
                </tr>
                <tr class="dr_one">
                    <th><font color="red">*</font>&nbsp;<?php echo lang('html-062'); ?>： </th>
                    <td><input onblur="test_email(this.value)" class="input-text" type="text" name="member[email]" value="<?php echo $data['email']; ?>" size="25" />
                        <div class="onShow" id="dr_email_tips"></div></td>
                </tr>
                <tr class="dr_one">
                    <th>&nbsp;<?php echo lang('html-227'); ?>： </th>
                    <td><input class="input-text" type="text" name="member[name]" value="<?php echo $data['name']; ?>" size="25" /></td>
                </tr>
                <tr class="dr_one">
                    <th>&nbsp;<?php echo lang('html-228'); ?>： </th>
                    <td><input class="input-text" type="text" name="member[phone]" value="<?php echo $data['phone']; ?>" size="25" /></td>
                </tr>
                <tr class="dr_one">
                    <th>&nbsp;<?php echo lang('html-061'); ?>： </th>
                    <td>
					<input class="input-text" type="text" name="member[password]" id="dr_password" value="" size="25" />
					<div class="onShow"><?php echo lang('html-515'); ?></div>
					</td>
                </tr>
                </table>
			</div>
            <div id="cnt_2" style="display:none" class="dr_hide">
                <table width="100%" class="table_form">
                <tr class="dr_one">
                    <th width="200">&nbsp;<?php echo lang('html-532'); ?>： </th>
                    <td><?php echo $data['username']; ?></td>
                </tr>
                <?php $i=1;  $return = $this->list_tag("action=cache name=OAUTH"); if ($return) extract($return); $count=count($return); if (is_array($return)) { foreach ($return as $key=>$t) {  $id=$t['id'];  if (isset($data['oauth'][$id])) { ?>
                <tr>
                    <th <?php if ($i==count($data['oauth'])) { ?> style="border:none"<?php } ?> width="200"><img align="absmiddle" src="<?php echo MEMBER_PATH; ?>statics/OAuth/<?php echo $t['icon']; ?>.png"> </th>
                    <td <?php if ($i==count($data['oauth'])) { ?> style="border:none"<?php } ?>>
                    <?php echo $data['oauth'][$id]['nickname']; ?>
                    </td>
                </tr>
                <?php $i++;  }  } } ?>
                </table>
			</div>
            <div id="cnt_1" style="display:none" class="dr_hide">
                <table width="100%" class="table_form">
                <tr class="dr_one">
                    <th width="200">&nbsp;<?php echo lang('html-532'); ?>： </th>
                    <td><?php echo $data['username']; ?></td>
                </tr>
                <?php echo $myfield; ?>
                </table>
			</div>
			<table width="100%" class="table_form">
			<tr>
				<th width="200" style="border:none;">&nbsp;</th>
				<td>
				<input class="button" type="submit" name="submit" value="<?php echo lang('submit'); ?>" />
				</td>
			</tr>
			</table>
        </div>
	</div>
</div>
</form>
<?php if ($fn_include = $this->_include("footer.html")) include($fn_include); ?>