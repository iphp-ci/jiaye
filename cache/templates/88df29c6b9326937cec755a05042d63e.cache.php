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
          <li><a href="<?php echo $t['url']; ?>" <?php if ($pid==$t['catid']) { ?> class="on" <?php } ?>><?php echo $t['name']; ?></a></li> 
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
           <div class="videoListbox">
          <ul class="videoListUl">
            <?php $return = $this->list_tag("action=module catid=$catid fiele=title,url,description,thumb order=updatetime page=1"); if ($return) extract($return); $count=count($return); if (is_array($return)) { foreach ($return as $key=>$t) { ?>
            <li> 
              <div class="zthumb">
                <a href="<?php echo $t['url']; ?>">
                <?php if ($t['thumb']) { ?>
                  <img src="<?php echo dr_thumb($t['thumb'],245,177); ?>" alt="<?php echo $t['title']; ?>" />
                <?php } else { ?>
                   <img src="<?php echo HOME_THEME_PATH; ?>images/video/thumb.jpg" alt="" />
                <?php } ?>
                </a>
              </div>
              <h4 class="ztitle"><?php echo dr_strcut($t['title'],60); ?></h4>
            </li>
            <?php } } ?>
          </ul>
        </div>
        <div class="clear"></div>
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