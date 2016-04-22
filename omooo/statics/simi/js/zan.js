/* 
* @Author: zan
* @Date:   2014-09-25 17:41:51
* @Last Modified by:   zan
* @Last Modified time: 2014-10-10 09:13:02
*/

$(document).ready(function() {

    $("img#advsheadlbpic_0").show();
    setInterval("$().advsHeadLbRoll()", 5000);


    (function($){

        $.fn.advsHeadLbRoll = function(){
            
            var rollobj=$(".bannerzimg");
            var rolltotal=parseInt(rollobj.size())-1;
            var nextId,nowId;
            $("img.bannerzimg").each(function(){
                
                if(this.style.display=='block' || this.style.display=='inline'){
                    nowId=parseInt(this.id.substr(14));
                    if(nowId>=rolltotal){
                        nextId=0;
                    }else{
                        nextId=nowId+1;
                    }
                }

            });
            $("img#advsheadlbpic_"+nextId).fadeIn('slow').show('slow');
            $("img#advsheadlbpic_"+nowId).fadeOut('slow').hide();

        };

    })(jQuery);

});

window.onload=function()
{
    var oDiv=document.getElementById('nav');
    var aStrong=oDiv.getElementsByTagName('strong');
    var aA=oDiv.getElementsByTagName('a');
    var iTarget=oDiv.getElementsByTagName('li')[0].offsetHeight;

    for(var i=0; i<aStrong.length; i++)
    {
        aA[i].style.width=aStrong[i].style.width=aStrong[i].getElementsByTagName('span')[0].offsetWidth+'px';
        aStrong[i].style.position='absolute';
        aStrong[i].style.top=aStrong[i].style.left=0;
        
        aStrong[i].onmouseover=function()
        {
            
            startMove(this, -iTarget);
        };
        aStrong[i].onmouseout=function()
        {
            startMove(this, 0);
        };
    }
};

function startMove(obj,target)
{
    clearInterval(obj.iTime);
    obj.iTime=setInterval(function(){
        if(obj.offsetTop==target)
        {
            clearInterval(obj.iTime);
        }
        else
        {
            var iSpeed=(target-obj.offsetTop)/4;
            iSpeed=iSpeed>0?Math.ceil(iSpeed):Math.floor(iSpeed);
            obj.style.top=obj.offsetTop+iSpeed+'px';
        }
    }, 30);
}