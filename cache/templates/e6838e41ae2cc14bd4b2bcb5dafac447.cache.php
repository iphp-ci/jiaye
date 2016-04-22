<!-- <div class="wman100 zzwmin banner-box">
      <div class="seven_container">
            <div id="seven_viewport">
                <div class="seven_slider">
                <?php $return = $this->list_tag("action=navigator type=1"); if ($return) extract($return); $count=count($return); if (is_array($return)) { foreach ($return as $key=>$t) {  if ($t['thumb']) { ?>
                    <div class="seven_slide"><a href="<?php echo $t['url']; ?>" class="seven_slide_title" <?php if ($t['target']) { ?>target="_blank"<?php } ?>></a><a href="<?php echo $t['url']; ?>" <?php if ($t['target']) { ?>target="_blank"<?php } ?>><img src="<?php echo dr_thumb($t['thumb']); ?>" /></a></div>
                    <?php } else { ?>
                    <div class="seven_slide"><a href="<?php echo $t['url']; ?>" class="seven_slide_title" <?php if ($t['target']) { ?>target="_blank"<?php } ?>></a><a href="<?php echo $t['url']; ?>" <?php if ($t['target']) { ?>target="_blank"<?php } ?>><img src="<?php echo HOME_THEME_PATH; ?>img/ban1.jpg" /></a></div>
                    <?php }  } } ?>

                </div>
            </div>
            <a id="left_btn" class="seven_nav">Previous Slide</a>
            <a id="right_btn" class="seven_nav right_btn">Next Slide</a>
    </div>
</div> -->

<div class="fullSlide">
  <div class="bd">
    <ul>
     <?php $return = $this->list_tag("action=navigator type=1"); if ($return) extract($return); $count=count($return); if (is_array($return)) { foreach ($return as $key=>$t) {  if ($t['thumb']) { ?>
      <li _src="url(<?php echo dr_thumb($t['thumb']); ?>)" style="background: center 0 no-repeat;"><a  href="<?php echo $t['url']; ?>" <?php if ($t['target']) { ?>target="_blank"<?php } ?>></a></li>
      <?php } else { ?>
       <li _src="url(<?php echo HOME_THEME_PATH; ?>img/ban1.jpg})" style="background: center 0 no-repeat;"><a  href="<?php echo $t['url']; ?>" <?php if ($t['target']) { ?>target="_blank"<?php } ?>></a></li>
                <?php }  } } ?>
    </ul>
  </div>
  <div class="hd">
    <ul>
    </ul>
  </div>
  <span class="prev"></span> <span class="next"></span> </div>
