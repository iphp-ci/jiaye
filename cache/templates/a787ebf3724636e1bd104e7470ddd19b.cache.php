   <div class="wman100 zzwmin zfooter-box">
        <div class="zzw mauto zfooter">
          <h3 class="ztitle">友情链接</h3>
          <p class="p1" id="footerlinkI">
          <?php $return = $this->list_tag("action=navigator type=2"); if ($return) extract($return); $count=count($return); if (is_array($return)) { foreach ($return as $key=>$t) { ?>
            <a href="<?php echo $t['url']; ?>" <?php if ($t['target']) { ?>target="_blank" <?php } ?>><?php echo $t['name']; ?></a>
           <?php } } ?>
          </p>
          <p class="p2"><?php echo dr_block(5); ?> 技术支持：摩恩网络</p>
          <!-- video -->
          <div class="zvideo">
            <a href="<?php echo $ci->get_cache('module-1-midea', 'category', 1, 'url'); ?>" target="">视频中心</a>
          </div>
          <!-- video end-->
        </div>
    </div>
    <!-- ooter endd-->
  
    

<script type="text/javascript" src="<?php echo MEMBER_PATH; ?>statics/js/jquery.artDialog.js?skin=default"></script>
  <script type="text/javascript" src="<?php echo MEMBER_PATH; ?>statics/js/omooo.js"></script>
  
 <?php if ($fn_include = $this->_include("onlinelogin.html")) include($fn_include); ?>
   
<script type="text/javascript" src="<?php echo HOME_THEME_PATH; ?>js/zan.js"></script>
   
<script src="<?php echo HOME_THEME_PATH; ?>js/jquery.easing.min.js"></script>
<script src="<?php echo HOME_THEME_PATH; ?>js/superslide.2.1.js"></script>

<div class="tanbgd"></div>
</body>
</html>
