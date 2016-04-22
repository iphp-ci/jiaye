     <div class="zhideshow">
       <a href="http://wpa.qq.com/msgrd?v=3&amp;uin=<?php echo dr_block(7); ?>&amp;site=qq&amp;menu=yes" target="_blank">在线客服</a>
     </div>
     <!-- hide end--> 
   <!-- QQonline end-->
   <!-- <script src=""></script> -->
    <script type="text/javascript">
$(function(){
  <?php if ($result_error) { ?>
  $("#dr_<?php echo $result_error['name']; ?>").focus();
  dr_tips("<?php echo $result_error['msg']; ?>", 3); 
  <?php } ?>
});
</script>
    <div class="zregistbox" id="zregistboxI">
    <form action="<?php echo SITE_URL; ?>member/index.php?c=register" method="post">
      <input name="back" type="hidden" value="<?php echo $back_url; ?>" />
      <h3 class="ztitle">注册</h3>
      <div class="registFormD">
        <ul class="registFormUl">
          <li><span>会员名称：</span><input name="data[username]" type="text" maxlength="64" autofocus value="<?php echo $data['username']; ?>" required="required"/></li>
          <li><span>输入密码：</span><input name="data[password]" type="password" value="<?php echo $data['password']; ?>"  required="required" /></li>
          <li><span>再次输入密码：</span><input name="data[password2]" type="password"  type="password" value="<?php echo $data['password2']; ?>" required="required"/></li>
          <li><span>联系人：</span><input name="data[lname]"  type="text" value="<?php echo $data['lname']; ?>" required="required"/></li>
          <li><span>公司名称：</span><input name="data[cname]"  type="text" value="<?php echo $data['cname']; ?>" required="required"/></li>
          <li><span>联系电话：</span><input name="data[tel]"  type="text" value="<?php echo $data['tel']; ?>" required="required"/></li>
          <li><span>电子邮件：</span><input name="data[email]" type="text" maxlength="64" value="<?php echo $data['email']; ?>" required="required"/></li>
         
          <li><span>验证码：</span><input name="code" type="text" maxlength="64" required="required"/><img align="absmiddle" style="cursor:pointer;" onclick="this.src='<?php echo dr_member_url('api/captcha', array('width' => 80, 'height' => 30)); ?>&'+Math.random();" src="<?php echo dr_member_url('api/captcha', array('width' => 80, 'height' => 30)); ?>" class="tucodeimg" /></li>
          
        </ul>
      </div>
      <p class="p1"><input type="checkbox" value="1" checked="checked" name="data[tong]" required="required" /><i>同意以上内容</i></p>
      <p class="p2">
        <input type="submit" class="regBtn" value="注册" />
        <input type="reset" value="重置" />
      </p>
    </form>
    </div>
    <div class="loginbox" id="loginboxI">
   
      <h3 class="ztitle">欢迎登陆</h3>
      
       <form action="<?php echo SITE_URL; ?>member/index.php?c=login&m=index" method="post">
       <div class="loginFormD">
       <input name="back" type="hidden" value="<?php echo $back_url; ?>" />
         <ul class="loginFormUl">
          <li><span class="user"></span>|<input type="text" placeholder="用户名" maxlength="64" autofocus="autofocus"  id="dr_username" name="data[username]" value="<?php echo $data['username']; ?>" required="required" /></li>
          <li><span class="zpwd"></span>|<input type="password" placeholder="密码" name="data[password]" required="required" /></li>
         
           <li><img align="absmiddle" style="cursor:pointer;" onclick="this.src='<?php echo dr_member_url('api/captcha', array('width' => 80, 'height' => 30)); ?>&'+Math.random();" src="<?php echo dr_member_url('api/captcha', array('width' => 80, 'height' => 30)); ?>" class="tucodeimg"  />
            <input type="text" placeholder="验证码" name="code"  value="" class="incodelo" required="required"/>
           </li>
           
        </ul>
         <p class="p1">
           <input type="submit" value="登陆" name="submit" class="loginBtn" />
           <a href="javascript:;" id="rsetLogR">注册</a>
         </p>
      </div>
     
      </form>
      
      
   
</div>