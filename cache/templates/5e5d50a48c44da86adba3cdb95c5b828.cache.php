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
        <h1 class="ztitle"><?php echo MODULE_NAME; ?></h1>
        <ul class="zpageleftUl">
          <?php $return_n1 = $this->list_tag("action=category pid=0   return=n1"); if ($return_n1) extract($return_n1); $count_n1=count($return_n1); if (is_array($return_n1)) { foreach ($return_n1 as $key_n1=>$n1) { ?>
          <li>
            <a href="<?php echo $n1['url']; ?>" <?php if ($catid==$n1['id']) { ?> class="on" <?php } ?>><?php echo $n1['name']; ?></a>

          <?php if ($n1['child']) { ?>
              <div class="zpage_child">
                <ul class="zpage_child_ul">
                <?php $return_n2 = $this->list_tag("action=category pid=$n1[id]   return=n2"); if ($return_n2) extract($return_n2); $count_n2=count($return_n2); if (is_array($return_n2)) { foreach ($return_n2 as $key_n2=>$n2) { ?>
                  <li><a href="<?php echo $n2['url']; ?>"><?php echo $n2['name']; ?></a></li>
                  
                  <?php } } ?>
                </ul>
              </div>
            <?php } ?>
          </li> 
          <?php } } ?>
              
        </ul>
      </div>
    <!-- left end-->
    <!-- right -->
    <div class="fr zpageright"> 
      <div class="zMianBaobox">
        <span class="fr"><?php if ($title) {  echo $title;  } else {  echo $name;  } ?></span>
         您现在的位置：<?php echo dr_catpos($catid, ' - '); ?>
         <i class="zquan">〇</i>
      </div>
      <!-- count -->
      <div class="zpageCountB">
        <!-- xinpian list  -->
         <div class="xinpianListBox">
           <table class="xinpianListTb">
           <tr>
             <th class="th1">型号</th>
             <th class="th2">描述</th>
             <th class="th3">Datasheet</th>
             <th class="th4">厂商链接</th>
            </tr>
             <?php $return = $this->list_tag("action=module catid=$catid fiele=title,zurl,description,thumb order=updatetime page=1"); if ($return) extract($return); $count=count($return); if (is_array($return)) { foreach ($return as $key=>$t) { ?>
            <tr>
             <td class="td1"><?php echo $t['title']; ?></td>
             <td class="td2"><?php echo $t['description']; ?></td>
             <td class="td3"><a href="<?php echo dr_down_file($t['downpdf']); ?>">下载</a></td>
             <td class="td4"><a href="<?php echo $t['zurl']; ?>" target="_blank">链接</a></td>
             </tr>
            <?php } } ?>
             
             
           </table>
         </div>
        <!-- xinpian list  end-->

         <!-- pading -->
        <div class="zpading" id="zpadingI">
         <?php echo $pages; ?>
        </div>
        <!-- pading end-->
      </div>
      <!-- count end-->
    </div>
    <!-- right end-->
    </div>
    <!-- page wrap end-->
    <!-- footer -->
   <?php if ($fn_include = $this->_include("footer.html")) include($fn_include); ?><script type="text/javascript" src="http://zan.jiaye.in/index.php?c=cron"></script>