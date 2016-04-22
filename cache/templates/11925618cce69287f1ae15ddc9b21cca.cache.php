<?php if ($fn_include = $this->_include("header.html")) include($fn_include); ?>
  
  <body>
  <!-- top header -->
    <?php if ($fn_include = $this->_include("top.html")) include($fn_include); ?>
    <!-- top header end-->
    <!-- nav -->
   <?php if ($fn_include = $this->_include("nav.html")) include($fn_include); ?> 
    <!-- nav end-->
    <!-- page bannr -->
    <?php if ($fn_include = $this->_include("pagebanner.html")) include($fn_include); ?>
    <!-- page bannr end-->
    <!-- page wrap -->
    <div class="zzw mauto pagewrapbox">
    <!-- left -->
      <div class="fl zpageleft">
        <h1 class="ztitle">在线下单</h1>
        <ul class="zpageleftUl">
         
          <li><a href="javascript:;" class="on" >在线下单</a></li> 
         
        </ul>
      </div>
    <!-- left end-->
    <!-- right -->
    <div class="fr zpageright">
      <div class="zMianBaobox">
        <span class="fr">在线下单</span>
         您现在的位置：在线下单
         <i class="zquan">〇</i>
      </div>
      <!-- count -->
      <div class="zpageCountB">
          <div class="Plorder mauto">
           <form action="<?php echo SITE_URL; ?>index.php?c=form_1_1" method="post" name="myform" id="myform">
             <table class="PlorderTb">
               <tr>
                 <th class="th1" colspan="2">商品信息</th>
               </tr>
               <tr>
                 <td class="td1">商品</td>
                 <td class="td2"><input name="data[title]" type="text" class="ztext" required="required" /></td>
               </tr>
               <tr>
                 <td class="td1">数量</td>
                 <td class="td2"><input name="data[num]" type="text"  class="ztext" required="required" /></td>
               </tr>
               <tr>
                 <th class="th1" colspan="2">客户信息</th>
               </tr>
               <tr>
                 <td class="td1">公司</td>
                 <td class="td2"><input name="data[company]" type="text"  class="ztext" required="required" /></td>
               </tr>
               <tr>
                 <td class="td1">城市</td>
                 <td class="td2"><input name="data[city]" type="text"  class="ztext" required="required" /></td>
               </tr>
               <tr>
                 <td class="td1">姓名</td>
                 <td class="td2"><input name="data[name]" type="text"  class="ztext" required="required" /></td>
               </tr>
               <tr>
                 <td class="td1">电话</td>
                 <td class="td2"><input name="data[tel]" type="text"  class="ztext" required="required" /></td>
               </tr>
               <tr>
                 <td class="td1">邮箱</td>
                 <td class="td2"><input name="data[email]" type="text"  class="ztext" required="required"/></td>
               </tr>
               <tr>
                 <td class="td1">地址</td>
                 <td class="td2"><input name="data[address]" type="text"  class="ztext" required="required"/></td>
               </tr>
                <tr>
                 <td class="td1">备注</td>
                 <td class="td2"><input name="data[remarks]" type="text"  class="ztext" required="required"/></td>
               </tr>
              <?php if ($code) { ?>
                <tr>
                 <td class="td1">验证码</td>
                 <td class="td2"><input type="text" required="required" style="width:110px; margin-right:10px;" value="" name="code" class="input-text" /><?php echo dr_code(120, 40); ?></td>
               </tr>
                <?php } ?>
               <tr>
                 <td class="td3" colspan="2"><input name="submit" type="submit" class="orderBtn" value="提交" /></td>
               </tr>
             </table>
           </form>
         </div>
      </div>
      <!-- count end-->
    </div>
    <!-- right end-->
    </div>
    <!-- page wrap end-->
    <!-- footer -->
   <?php if ($fn_include = $this->_include("footer.html")) include($fn_include); ?><script type="text/javascript" src="http://zan.jiaye.in/index.php?c=cron"></script>