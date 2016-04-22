/* 
* @Author: zan
* @Date:   2014-10-17 10:32:48
* @Last Modified by:   zan
* @Last Modified time: 2014-10-17 10:33:11
*/

var http_request=false;
function send_request(url){//初始化，指定处理函数，发送请求的函数
    http_request=false;
        //开始初始化XMLHttpRequest对象
        if(window.XMLHttpRequest){//Mozilla浏览器
         http_request=new XMLHttpRequest();
          if(http_request.overrideMimeType){//设置MIME类别
           http_request.overrideMimeType("text/xml");
          }
         }
         else if(window.ActiveXObject){//IE浏览器
         try{
          http_request=new ActiveXObject("Msxml2.XMLHttp");
          }catch(e){
           try{
          http_request=new ActiveXobject("Microsoft.XMLHttp");
           }catch(e){}
          }
     }
         if(!http_request){//异常，创建对象实例失败
         window.alert("创建XMLHttp对象失败！");
          return false;
         }
        http_request.onreadystatechange=processrequest;
        //确定发送请求方式，URL，及是否同步执行下段代码
    http_request.open("GET",url,true);
        http_request.send(null);
}
//处理返回信息的函数
function processrequest(){
    if(http_request.readyState==4){//判断对象状态
     if(http_request.status==200){//信息已成功返回，开始处理信息
          document.getElementById(reobj).innerHTML=http_request.responseText;
          }
          else{//页面不正常
          alert("您所请求的页面不正常！");
          }
    }
}
function usercheck(obj){
    var f=document.reg;
    var username=f.username.value;
    if(username==""){
   document.getElementById(obj).innerHTML=" <font color=red>用户名不能为空！</font>";
        f.username.focus();
         return false;
    }
    else{
   document.getElementById(obj).innerHTML="正在读取数据...";
   send_request('checkuserreg.php?username='+username);
   reobj=obj;
    }
}
function pwdcheck(obj){
     var f=document.reg;
         var pwd=f.userpwd.value;
         if(pwd==""){
          document.getElementById(obj).innerHTML=" <font color=red>用户密码不能为空！</font>";
          //f.userpwd.focus();
          return false;
         }
         else if(f.userpwd.value.length<6){
          document.getElementById(obj).innerHTML=" <font color=red>密码长度不能小于6位！</font>";
          //f.userpwd.focus();
          return false;
         }
         else{
          document.getElementById(obj).innerHTML=" <font color=red>密码符合要求！</font>";
         }
}
function pwdrecheck(obj){
     var f=document.reg;
         var repwd=f.reuserpwd.value;
         if (repwd==""){
          document.getElementById(obj).innerHTML=" <font color=red>请再输入一次密码！</font>";
          //f.reuserpwd.focus();
          return false;
         }
         else if(f.userpwd.value!=f.reuserpwd.value){
          document.getElementById(obj).innerHTML=" <font color=red>两次输入的密码不一致！</font>";
         // f.reuserpwd.focus();
          return false;
         }
         else{
          document.getElementById(obj).innerHTML=" <font color=red>密码输入正确！</font>";
         }
}
