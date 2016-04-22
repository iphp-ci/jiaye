<?php if ($fn_include = $this->_include("header.html")) include($fn_include); ?>
<link href="<?php echo MEMBER_THEME_PATH; ?>images/reg.css" rel="stylesheet" type="text/css"/>
<script type="text/javascript">
$(function(){
	<?php if ($result_error) { ?>
	$("#dr_<?php echo $result_error['name']; ?>").focus();
	dr_tips("<?php echo $result_error['msg']; ?>", 3); 
	<?php } ?>
});
</script>
<div class="content">
    <div class="register_wp clearfix">
        <form action="" method="post">
            <input name="back" type="hidden" value="<?php echo $back_url; ?>" />
            <div class="register_mod">
                <h3>会员注册<span>Register</span></h3>
                <ul>
                    <li><strong>会员：</strong> 
                        <input name="data[username]" id="dr_username" class="input_text" type="text" maxlength="64" autofocus value="<?php echo $data['username']; ?>" />
                    </li>
                    <li><strong>密码：</strong>
                        <input name="data[password]" id="dr_password" class="input_text" type="password" value="<?php echo $data['password']; ?>" />
                    </li>
                    <li><strong>确认：</strong>
                        <input name="data[password2]" id="dr_password2" class="input_text" type="password" value="<?php echo $data['password2']; ?>" />
                    </li>
                    <li><strong>联系人：</strong>
                        <input name="data[lname]" id="dr_lname" class="input_text" type="text" maxlength="64" value="<?php echo $data['lname']; ?>" />
                    </li>
                    <li><strong>公司名称：</strong>
                        <input name="data[cname]" id="dr_cname" class="input_text" type="text" maxlength="64" value="<?php echo $data['cname']; ?>" />
                    </li>
                    <li><strong>联系电话：</strong>
                        <input name="data[tel]" id="dr_tel" class="input_text" type="text" maxlength="64" value="<?php echo $data['tel']; ?>" />
                    </li>
                    <li><strong>邮箱：</strong>
                        <input name="data[email]" id="dr_email" class="input_text" type="text" maxlength="64" value="<?php echo $data['email']; ?>" />
                    </li>
                    
                    <?php if ($code) { ?>
                    <li><strong>验证：</strong>
                        <input name="code" id="dr_code" class="input_text" style="width:100px;float:left;margin-right:10px;" type="text" maxlength="64" />
                        <span style="float:left"><img align="absmiddle" style="cursor:pointer;" onclick="this.src='<?php echo dr_member_url('api/captcha', array('width' => 90, 'height' => 32)); ?>&'+Math.random();" src="<?php echo dr_member_url('api/captcha', array('width' => 90, 'height' => 32)); ?>" /></span>
                    </li>
                    <?php } ?>
                     <li><strong>&nbsp;</strong>
                        <input type="checkbox" value="1" checked="checked" name="data[tong]" />&nbsp;&nbsp;&nbsp;同意以上内容
                    </li>
                    <li class="mbutton">
                        <button type="submit" value="" id="reg_button">立即注册</button>
                        <a href="<?php echo dr_member_url('login/index'); ?>">直接登录</a>
                    </li>
                </ul>
                <div class="login_other">
                <span class="txt">使用合作网站帐号登录：</span>
                <?php $return = $this->list_tag("action=cache name=oauth"); if ($return) extract($return); $count=count($return); if (is_array($return)) { foreach ($return as $key=>$t) { ?>
                <span class="dr_oauth_style dr_oauth_<?php echo $t['icon']; ?>" title="<?php echo $t['name']; ?>" onClick="window.location.href='<?php echo SITE_URL; ?>member/index.php?c=api&m=oauth&id=<?php echo $t['id']; ?>'"></span>
                <?php } } ?>
            	</div>
            </div>
        </form>
        <div class="register_banner"></div>
    </div>
</div>
<?php if ($fn_include = $this->_include("footer.html")) include($fn_include); ?>