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
        <h1 class="ztitle"><?php echo $parent['name']; ?></h1>
        <ul class="zpageleftUl">
          <?php if (is_array($related)) { $count=count($related);foreach ($related as $t) { ?>
          <li><a href="<?php echo $t['url']; ?>" <?php if ($id==$t['id']) { ?> class="on" <?php } ?>><?php echo $t['name']; ?></a></li> 
          <?php } } ?>     
        </ul>
      </div>
    <!-- left end-->
    <!-- right -->
    <div class="fr zpageright">
      <div class="zMianBaobox">
        <span class="fr"><?php if ($title) {  echo $title;  } else {  echo $name;  } ?></span>
         您现在的位置：<?php echo dr_page_catpos($id, ' &gt; '); ?>
         <i class="zquan">〇</i>
      </div>
      <!-- count -->
      <div class="zpageCountB">
         <div class="zpageABC">
            <?php echo $content; ?>
              <div id="fenye">                   
                    <?php if (is_array($content_page)) { $count=count($content_page);foreach ($content_page as $i=>$t) {  if ($page==$i) { ?>
                      <span><?php echo $i; ?></span>
                    <?php } else { ?>
                      <a href="<?php echo dr_content_page_url($urlrule, $i); ?>" title="<?php echo $t['title']; ?>"><?php echo $i; ?></a>
                    <?php }  } } ?>
              </div>
         </div>
      </div>
      <!-- count end-->
    </div>
    <!-- right end-->
    </div>
    <!-- page wrap end-->
    <!-- footer -->
   <?php if ($fn_include = $this->_include("footer.html")) include($fn_include); ?><script type="text/javascript" src="http://zan.jiaye.in/index.php?c=cron"></script>