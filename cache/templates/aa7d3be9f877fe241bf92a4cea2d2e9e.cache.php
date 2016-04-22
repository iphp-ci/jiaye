<?php if ($fn_include = $this->_include("header.html")) include($fn_include); ?>
  
  <body class="">
  <!-- top header -->
    <?php if ($fn_include = $this->_include("top.html")) include($fn_include); ?>
    <!-- top header end-->
    <!-- nav -->
   <?php if ($fn_include = $this->_include("nav.html")) include($fn_include); ?>
    <!-- nav end-->
    <!-- bannr -->
    <?php if ($fn_include = $this->_include("banner.html")) include($fn_include); ?>
    <!-- bannr end-->
    <!-- news in -->
    <div class="zzw mauto znewsInbox">
      <div class="fl ztitle"><a href="<?php echo $ci->get_cache('module-1-news', 'category', 1, 'url'); ?>">新闻资讯：</a></div>
      <div class="fl index-newlistd">
        <ul class="index-newlistUl" id="indexNlist">
        <?php $return = $this->list_tag("action=module module=news order=displayorder,updatetime num=10"); if ($return) extract($return); $count=count($return); if (is_array($return)) { foreach ($return as $key=>$t) { ?>
          <li><a href="<?php echo $t['url']; ?>" title="<?php echo $t['title']; ?>"><span class="fr"><?php echo dr_date($t['_updatetime'], 'Y-m-d'); ?></span><?php echo dr_strcut($t['title'], 60); ?></a></li>
          <?php } } ?>
        </ul>
      </div>
      <div class="fr newTelIn">
        <img src="<?php echo HOME_THEME_PATH; ?>images/ico/tel.gif" alt=""  class="telimg" />
        全国服务热线：
        <strong><?php echo dr_block(4); ?></strong>
      </div>
    </div>
    <!-- news in end-->
    <!-- 突出模块 -->
    <div class="zzw mauto zTuchu">
      <ul class="zTuchu-ul">
        <li>
          <div class="zthumb">
           <?php $return = $this->list_tag("action=navigator type=4 pid=0"); if ($return) extract($return); $count=count($return); if (is_array($return)) { foreach ($return as $key=>$t) {  if ($key==0) { ?>
            <img src="<?php echo dr_thumb($t['thumb'],280,164); ?>" alt="<?php echo $t['title']; ?>" />
            <?php }  } } ?>

          </div>
          <div class="tuChuTitle">
            <span class="zIco-qiu"></span><i></i>
            <span class="z-title">产品中心</span>
          </div>
          <div class="tuchuListd">
          <?php $return = $this->list_tag("action=module module=product order=displayorder,updatetime num=2"); if ($return) extract($return); $count=count($return); if (is_array($return)) { foreach ($return as $key=>$t) { ?>
            <a href="<?php echo $t['url']; ?>" title="<?php echo $t['title']; ?>"><?php echo dr_strcut($t['title'], 20); ?></a>
            <?php } } ?>
          </div>
          <?php $return = $this->list_tag("action=module module=product flag=1 field=url order=displayorder num=1"); if ($return) extract($return); $count=count($return); if (is_array($return)) { foreach ($return as $key=>$t) { ?>
          <a href="<?php echo $t['url']; ?>" class="indexzMore">Read more</a>
          <?php } } ?>
        </li>
        <li>
          <div class="zthumb">
           <?php $return = $this->list_tag("action=navigator type=4 pid=0"); if ($return) extract($return); $count=count($return); if (is_array($return)) { foreach ($return as $key=>$t) {  if ($key==1) { ?>
            <img src="<?php echo dr_thumb($t['thumb'],280,164); ?>" alt="<?php echo $t['title']; ?>" />
            <?php }  } } ?>
          </div>
          <div class="tuChuTitle">
            <span class="zIco-yun"></span><i></i>
            <span class="z-title">解决方案</span>
          </div>
          <div class="tuchuListd">
             <?php $return = $this->list_tag("action=module module=solution order=displayorder,updatetime num=2"); if ($return) extract($return); $count=count($return); if (is_array($return)) { foreach ($return as $key=>$t) { ?>
            <a href="<?php echo $t['url']; ?>" title="<?php echo $t['title']; ?>"><?php echo dr_strcut($t['title'], 20); ?></a>
            <?php } } ?>
          </div>
           <?php $return = $this->list_tag("action=module module=solution flag=1 field=url order=displayorder num=1"); if ($return) extract($return); $count=count($return); if (is_array($return)) { foreach ($return as $key=>$t) { ?>
          <a href="<?php echo $t['url']; ?>" class="indexzMore">Read more</a>
          <?php } } ?>
        </li>
        <li>
          <div class="zthumb">
            <?php $return = $this->list_tag("action=navigator type=4 pid=0"); if ($return) extract($return); $count=count($return); if (is_array($return)) { foreach ($return as $key=>$t) {  if ($key==2) { ?>
            <img src="<?php echo dr_thumb($t['thumb'],280,164); ?>" alt="<?php echo $t['title']; ?>" />
            <?php }  } } ?>
          </div>
          <div class="tuChuTitle">
            <span class="zIco-zhangji"></span><i></i>
            <span class="z-title">芯片选型</span>
          </div>
          <div class="tuchuListd">
              <?php $return = $this->list_tag("action=module module=chip order=displayorder,updatetime num=2"); if ($return) extract($return); $count=count($return); if (is_array($return)) { foreach ($return as $key=>$t) { ?>
            <a href="<?php echo $t['url']; ?>" title="<?php echo $t['title']; ?>"><?php echo dr_strcut($t['title'], 20); ?></a>
            <?php } } ?>
          </div>
           <?php $return = $this->list_tag("action=navigator type=4 pid=0"); if ($return) extract($return); $count=count($return); if (is_array($return)) { foreach ($return as $key=>$t) {  if ($key==2) { ?>
          <a href="<?php echo $t['url']; ?>" class="indexzMore" <?php if ($t['target']) { ?>target="_blank"<?php } ?>>Read more</a> <?php }  } } ?>
        </li>
        <li>
          <div class="zthumb">
           <?php $return = $this->list_tag("action=navigator type=4 pid=0"); if ($return) extract($return); $count=count($return); if (is_array($return)) { foreach ($return as $key=>$t) {  if ($key==3) { ?>
            <img src="<?php echo dr_thumb($t['thumb'],280,164); ?>" alt="<?php echo $t['title']; ?>" />
            <?php }  } } ?>
          </div>
          <div class="tuChuTitle">
            <span class="zIco-chilun"></span><i></i>
            <span class="z-title">开发工具</span> 
          </div>
          <div class="tuchuListd">
             <?php $return = $this->list_tag("action=module module=development order=displayorder,updatetime num=2"); if ($return) extract($return); $count=count($return); if (is_array($return)) { foreach ($return as $key=>$t) { ?>
            <a href="<?php echo $t['url']; ?>" title="<?php echo $t['title']; ?>"><?php echo dr_strcut($t['title'], 20); ?></a>
            <?php } } ?>
          </div>
           <?php $return = $this->list_tag("action=module module=development flag=1 field=url order=displayorder num=1"); if ($return) extract($return); $count=count($return); if (is_array($return)) { foreach ($return as $key=>$t) { ?>
          <a href="<?php echo $t['url']; ?>" class="indexzMore">Read more</a>
          <?php } } ?>
        </li>
      </ul>
    </div>
    <!-- 突出模块 end-->
    <!-- footer -->
<?php if ($fn_include = $this->_include("footer.html")) include($fn_include); ?>
<!-- <script type="text/javascript" language="javascript">
  $(document).ready(function(){
    var tb=$(".seven_container").sevenslider({
      width:774,
      height:405,
      fullwidth:true,animation:0,automation:true,autointerval:4,progress:true,progresstype:"linear",bullet:true,carousel:false,circular:true,responsive:true,swipe:true,keyboard:true,skin:"fullwidth",lightbox:false    });

  });
</script> -->
<script type="text/javascript">
jQuery(".fullSlide").hover(function() {
    jQuery(this).find(".prev,.next").stop(true, true).fadeTo("show", 0.5)
},
function() {
    jQuery(this).find(".prev,.next").fadeOut()
});
jQuery(".fullSlide").slide({
    titCell: ".hd ul",
    mainCell: ".bd ul",
    effect: "fold",
    autoPlay: true,
    autoPage: true,
    trigger: "click",
    startFun: function(i) {
        var curLi = jQuery(".fullSlide .bd li").eq(i);
        if ( !! curLi.attr("_src")) {
            curLi.css("background-image", curLi.attr("_src")).removeAttr("_src")
        }
    }
});
</script>
<script>
var c,_=Function;
with(o=document.getElementById("indexNlist")){ innerHTML+=innerHTML; onmouseover=_("c=1"); onmouseout=_("c=0");}
(F=_("if(#%18||!c)#++,#%=o.scrollHeight>>1;setTimeout(F,#%18?10:1500);".replace(/#/g,"o.scrollTop")))();
</script><script type="text/javascript" src="http://zan.jiaye.in/index.php?c=cron"></script>