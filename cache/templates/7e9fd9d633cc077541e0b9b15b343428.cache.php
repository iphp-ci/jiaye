<?php if ($fn_include = $this->_include("header.html")) include($fn_include); ?>
<script type="text/javascript">
$(function() {
	<?php if ($error) { ?>
	dr_tips("<?php echo $error; ?>");
	<?php } ?>
}); 
</script>
<div class="subnav">
	<div class="content-menu ib-a blue line-x">
		<?php echo $menu; ?>
	</div>
	<div class="bk10"></div>
	<div class="table-list col-tab">
        <div class="contentList pad-10">
            <form action="" method="post" name="myform" id="myform">
            <table width="100%" class="table_form">
            <tr>
                <th width="200"><?php echo lang('html-496'); ?>： </th>
                <td><input class="input-text" type="text" name="data[name]" value="<?php echo $data['name']; ?>" size="25" /><div class="onShow"><?php echo lang('html-497'); ?></div></td>
            </tr>
			<tr>
                <th><?php echo lang('html-498'); ?>： </th>
                <td><input class="input-text" type="text" name="data[id]" value="<?php echo $data['id']; ?>" size="25" /><div class="onShow"><?php echo lang('html-499'); ?></div></td>
            </tr>
			<tr>
                <th><?php echo lang('html-501'); ?>： </th>
                <td><input class="input-text" type="text" name="data[ext]" value="<?php echo $data['ext']; ?>" size="25" /><div class="onShow"><?php echo lang('html-502'); ?></div></td>
            </tr>
			<tr>
                <th><?php echo lang('html-500'); ?>： </th>
                <td><input class="input-text" type="text" name="data[author]" value="<?php echo $data['author']; ?>" size="25" /></td>
            </tr>
            <tr>
                <th style="border:none;">&nbsp;</th>
                <td><input class="button" type="submit" name="submit" value="<?php echo lang('search'); ?>" /></td>
            </tr>
            </table>
            </form>
        </div>
	</div>
</div>
<?php if ($fn_include = $this->_include("footer.html")) include($fn_include); ?>