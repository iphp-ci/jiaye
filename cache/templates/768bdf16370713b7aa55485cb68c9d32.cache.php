 <div class="wman100 zzwmin znav-box" id="znavbox">
        <div class="zzw mauto znav" id="znav">
          <ul class="znav-ul-top">
            <li class="znav-li-top"><a href="<?php echo SITE_URL; ?>">首页</a></li>
            <?php $return_n1 = $this->list_tag("action=navigator type=0 pid=0  return=n1"); if ($return_n1) extract($return_n1); $count_n1=count($return_n1); if (is_array($return_n1)) { foreach ($return_n1 as $key_n1=>$n1) { ?>

            <li class="znav-li-top"><a href="<?php echo $n1['url']; ?>" <?php if ($n1['target']) { ?>target="_blank"<?php } ?>><?php echo $n1['name']; ?></a>
                <?php if ($n1['child']) { ?>
                <div class="mauto navBcount">
                  <div class="navBcountnav">
                  <?php $return_n2 = $this->list_tag("action=navigator type=0 pid=$n1[id]  return=n2"); if ($return_n2) extract($return_n2); $count_n2=count($return_n2); if (is_array($return_n2)) { foreach ($return_n2 as $key_n2=>$n2) { ?>
                   <dl class="navBnavDl">
                   
                    <dt><a href="<?php echo $n2['url']; ?>" <?php if ($n1['target']) { ?>target="_blank"<?php } ?>><?php echo $n2['name']; ?></a></dt>
                   <?php if ($n2['child']) {  $return_n3 = $this->list_tag("action=navigator type=0 pid=$n2[id]  return=n3"); if ($return_n3) extract($return_n3); $count_n3=count($return_n3); if (is_array($return_n3)) { foreach ($return_n3 as $key_n3=>$n3) { ?>
                    <dd><a href="<?php echo $n3['url']; ?>"><?php echo $n3['name']; ?></a></dd>
                    <?php } }  } ?>
                    </dl>
                    
                    <?php } } ?>
                    
                  </div>
                </div>
                <?php } ?>
            </li>
            <?php } } ?>
           
     
          
          </ul>
        </div>
    </div>