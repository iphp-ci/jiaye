<div class="zzw mauto header">
      <div class="fl zlogo">
          <a href="<?php echo SITE_URL; ?>"><img src="<?php echo HOME_THEME_PATH; ?>images/logo.png" alt="<?php echo SITE_NAME; ?>" /></a>
      </div>
      <div class="fr zlogort">
          <div class="fr zbbs">
            <a href="<?php echo dr_block(6); ?>" target="_blank">论坛</a>
          </div>
           <div class="fr zsales">
            <a href="mailto:<?php echo dr_block(1); ?>"><img src="<?php echo HOME_THEME_PATH; ?>images/ico/xin.png" alt="" /><br/>Sales</a>
            <a href="mailto:<?php echo dr_block(2); ?>"><img src="<?php echo HOME_THEME_PATH; ?>images/ico/xin.png" alt="" /><br/>Support</a>
          </div>
            <div class="fr zLanguage">
            <a href="<?php echo SITE_URL; ?>">中文</a>&nbsp;/
            <a href="<?php echo dr_block(6); ?>" target="_blank">英文</a>
          </div>
          <div class="fr zlogin">
         
              <script type="text/javascript" src="<?php echo SITE_URL; ?>member/index.php?c=api&m=userinfo"></script>
        
          </div>
          <div class="fr zsearch">
          <form method="get" target="_blank" action="<?php echo SITE_URL; ?>index.php" class="z-form-so">
          <input name="c" type="hidden" value="so">
           <input name="module" type="hidden" value="<?php echo APP_DIR; ?>">
            <input type="text" class="seakey" name="keyword" value="<?php echo $keyword; ?>"/>
            <input type="submit" class="seabtn" value="&nbsp;" />
          </form>
          </div>
    </div>
</div>