<?php $return = $this->list_tag("action=navigator type=3"); if ($return) extract($return); $count=count($return); if (is_array($return)) { foreach ($return as $key=>$t) { ?>

<div class="wman100 zzwmin pageban" style="background-image: url(<?php echo dr_thumb($t['thumb']); ?>)"> </div>


<?php } } ?>