/* 
* @Author: zan
* @Date:   2014-09-25 17:41:51
* @Last Modified by:   zan
* @Last Modified time: 2014-10-27 15:38:35
*/
$(document).ready(function(){   
    $('.znewsInbox').fadeIn('slow');
      
  
    //  $("#znav li").hover(function() {  
    //    var zli = $('#znav li').index(this);
    //    $(this).offset(function(index, currentCoordinates) {
    //        return someObject;
    //    })
    //    $(this).siblings().find(".navBcount").stop().slideUp('slow');
    //    $(this).find(".navBcount").stop().slideDown('fast').show(); 

    //     }, function(){   
    //         $(this).find(".navBcount").stop().slideUp('slow'); 
    // });    
  
     $("#znav li").hover(function(){
       
        var zli = $('#znav li').index(this);
        var ww = $(window).width();
        var tl = $(this).offset().left; 
        var l = $(this).position().left;
        var cw = $(this).children("div.navBcount").width();
        var zl = l-(cw/2);
        if(zl<0){
            zl=0;
        }
        $(this).children("div.navBcount").css("left",zl+"px");
        
      $(this).children("div.navBcount").stop(true,true).slideDown(300)
      },function(){
      $(this).children("div.navBcount").stop(true,true).slideUp(1)
      })
       
 
    // regist
    $("#tanCReg").click(function(event) {
        event.stopPropagation();
        $('.tanbgd').css('display','block');
       $('#zregistboxI').addClass('animationxuanIn').fadeIn('slow').animate({top: '130px', width: '346px;'}, 300);
    });
    $('#zregistboxI').click(function(event){
         event.stopPropagation();
    })
     $(document).click(function(){
        $("#tanCReg").click(function(){
          return;
        })
        $("#zregistboxI").removeClass('animationxuanIn').fadeOut('slow').animate({top: '-830px'}, 100);
        $('.tanbgd').css('display','none');
    })
     // login

     $("#tanCLogin").click(function(event) {
        event.stopPropagation();
        $('.tanbgd').css('display','block');
       $('#loginboxI').addClass('animationxuanIn').fadeIn('slow').animate({top: '130px'}, 300);
    });
    $('#loginboxI').click(function(event){
         event.stopPropagation();
    })
     $(document).click(function(){
        $("#tanCLogin").click(function(){
          return;
        })
        $("#loginboxI").removeClass('animationxuanIn').fadeOut('slow').animate({top: '-230px'}, 100);
        $('.tanbgd').css('display','none');
    })

     $('#rsetLogR').click(function(event) {
         $("#loginboxI").removeClass('animationxuanIn').fadeOut('slow').animate({top: '-230px'}, 10);
         $('#zregistboxI').addClass('animationxuanIn').fadeIn('slow').animate({top: '130px', width: '346px;'}, 300);
     });

     $(document).keyup(function(event){

         switch(event.keyCode) {
         case 27:
             $("#loginboxI").removeClass('animationxuanIn').fadeOut('slow').animate({top: '-230px'}, 100);
             $("#zregistboxI").removeClass('animationxuanIn').fadeOut('slow').animate({top: '-830px'}, 100);
             $('.tanbgd').css('display','none');
         // case 96:
         //     $("#loginboxI").removeClass('animationxuanIn').fadeOut('slow').animate({top: '-230px'}, 100);
         //     $("#zregistboxI").removeClass('animationxuanIn').fadeOut('slow').animate({top: '-830px'}, 100);
         //     $('.tanbgd').css('display','none');
         }
        });

     // search
     $('.zsearch').hover(function() {
         $(this).find('.seabtn').stop().animate({backgroundPositionX: "19px"},300);
     }, function() {
         $(this).find('.seabtn').stop().animate({backgroundPositionX: "10px"},300);
     });
     $('.newTelIn').hover(function() {
         $(this).find('.telimg').stop().animate({left: "-5px"},300);
     }, function() {
         $(this).find('.telimg').stop().animate({left: "-16px"},300);
     });
     $('.zvideo').hover(function() {
         $(this).stop().animate({backgroundPositionX: "11px"},300);
     }, function() {
         $(this).stop().animate({backgroundPositionX: "0px"},300);
     });


     // padding
     $('.zpageleftUl li').hover(function() {
         $(this).find('.zpage_child').fadeIn('slow', function() {
             
         });
     }, function() {
         $(this).find('.zpage_child').fadeOut('slow', function() {
             
         });
     });
     // footer
    //  $('#footerlinkI a').hover(function() {
    //     var zliIndex = $('#footerlinkI a').index(this);
    //     $(this).css('color','#fff').siblings().css('color','#096a64');     
    // },function(){
    //     $('#footerlinkI a').css('color','#fff');
    // });

     // xin
      $('.zsales a').hover(function() {
        $(this).addClass('animationyaobai');   
    },function(){
        $(this).removeClass('animationyaobai'); 
    });

      // proshowwrap
      $('#proshowwrapI div.proshowCone').eq(0).fadeIn(150);
      $('#proshowTitleI a').click(function() {
        var zliIndex = $('#proshowTitleI a').index(this);
        $(this).addClass('on').siblings().removeClass('on');
        $('#proshowwrapI div.proshowCone').eq(zliIndex).fadeIn(150).siblings('#proshowwrapI div.proshowCone').hide();
        
    });

      // checkbox
      $('.regBtn').click(function() {
      if($("input[type='checkbox']:checked").attr("checked")){
      //           //选中了
                }else{
                alert(必须同意哦);
                }
        

     });  
 });  
//兼容 firefox
(function($) {  
  
var div = document.createElement('div'),  
    rposition = /([^ ]*) (.*)/;  
    
if(div.style.backgroundPositionX !== '') {  
    $(['X', 'Y']).each(function( i, letter ) {  
        var property = 'backgroundPosition' + letter,  
            isX = letter == 'X';  
        $.cssHooks[property] = {  
            set: function(elem, value) {  
                var current = elem.style.backgroundPosition;  
                elem.style.backgroundPosition = (isX? value + ' ' : '' ) + (current? current.match(rposition)[isX+1] : '0') + (isX? '' : ' ' + value);  
            },  
            get: function(elem, computed) {  
                var current = computed?  
                    $.css(elem, 'backgroundPosition') :  
                    elem.style.backgroundPosition;  
                return current.match(rposition)[!isX+1];  
            }  
        };  
        $.fx.step[property] = function(fx) {  
            $.cssHooks[property].set(fx.elem, fx.now + fx.unit);  
        }  
    });  
}  
div = null;  
  
})(jQuery); 

// jQuery(document).ready(function ($) {
//     var f = $(".zhideshow").offset().top;
//     $(window).scroll(function () {
//         $(".zhideshow").animate({
//             top: $(window).scrollTop()  +350
//         },
//         {
//             queue: false,
//             duration: 1000
//         });
//     });
// });


