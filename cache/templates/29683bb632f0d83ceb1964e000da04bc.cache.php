<link href="<?php echo MEMBER_URL; ?>statics/OAuth/OAuth.css" rel="stylesheet" type="text/css" />
<style type="text/css">
.dr_userinfo{ font-family:"微软雅黑";}
.dr_userinfo .oauth_login{ float:right;}
.dr_userinfo .drlogin{ float:right;}
.dr_userinfo .drlogin a { margin:0; padding:0 3px;}
</style>
<div class="dr_userinfo">
<?php if ($member) { ?>
Hello,<?php echo $member['username']; ?>&nbsp;&nbsp;
<!-- <a href="<?php echo MEMBER_URL; ?>">会员中心</a>&nbsp;&nbsp;
<a href="<?php echo MEMBER_URL; ?>index.php?c=pm"><?php if ($newpm) { ?><img src="<?php echo MEMBER_THEME_PATH; ?>images/new_pm.gif" align="absmiddle" style="margin-right:3px;" /><?php } ?>短消息</a>&nbsp;&nbsp;
<a href="<?php echo MEMBER_URL; ?>index.php?c=notice"><img id="dr_notece_img" src="<?php echo MEMBER_THEME_PATH; ?>images/notice.gif" align="absmiddle" style="margin-right:3px;display:none" />提醒</a>&nbsp;&nbsp; -->
<a href="<?php echo MEMBER_URL; ?>index.php?c=login&m=out">退出</a>
<?php } else { ?>
    <a href="javascript:;" id="tanCReg">注册</a>&nbsp;/
            <a href="javascript:;" id="tanCLogin">登录</a>
<?php } ?>
</div>
<script language="javascript">

var dr_url = "<?php echo MEMBER_URL; ?>index.php?c=api&m=notice&"+Math.random();
var dr_step = 0;
var dr_callbacktitle = "【新提醒】"+document.title;
var dr_caltitle = "【　　　】"+document.title;

$.ajax({type: "GET", url:dr_url, dataType:'jsonp',jsonp:"callback",async: false,
	success: function (data) {
		if (data.status) {
			$("#dr_notece_img").show();
			dr_flash_title();
		} else {
			$("#dr_notece_img").hide();
		}
	},
	error: function(HttpRequest, ajaxOptions, thrownError) {
		
	}
});

function dr_flash_title() {
	dr_step++;
	if (dr_step==3) {
		dr_step=1;
	}
	if (dr_step==1) {
		// document.title=dr_callbacktitle;
	}
	if (dr_step==2) {
		// document.title=dr_caltitle;	
	}
	// setTimeout("dr_flash_title()", 500);
}
</script>