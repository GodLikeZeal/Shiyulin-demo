
var servicePort=window.location.host;          //获取主机和端口名称
var serviceProtocol=window.location.protocol;  //获取当前URL的协议
var baseURL=serviceProtocol+servicePort;
//用于弹出登录和注册的事件
function login_register(){
	$(".lol").on("click",'a',function(e){
		$('#login_container').removeClass("fadeOutUp");
		$('#login_container').addClass("fadeInDown");
		//alert("a");
		var lr=$(this).attr("id");
		//alert(lr);
		 e?e.stopPropagation():event.cancelBubble = true;
		  $(".model_bg").css({ display: "block", height: $(document).height() });
          var yscroll = document.documentElement.scrollTop;
		switch(lr){
			case "login_btn":
			//alert(1);
			$('ul.tabs').tabs('select_tab', 'login_div');
			$(".model_bg").stop().animate({opacity:'0.3'},800);
			$("#login_container").fadeIn();
			break;
			case "register_btn":
			//alert(2);
		    $('ul.tabs').tabs('select_tab', 'register_div');
			$(".model_bg").stop().animate({opacity:'0.5'},800);
			$("#login_container").fadeIn();
			break;
			default:
			alert("aa");
			break;
		}	
		document.documentElement.scrollTop = 0;
	});

		$('body').click(function(e) {
			 e?e.stopPropagation():event.cancelBubble = true;
		    var target = $(e.target);
		    // 如果#overlay或者#btn下面还有子元素，可使用
		    // !target.is('#btn *') && !target.is('#overlay *')
		    if(!target.is('#btn *') && !target.is('#login_container *')) {
		       if ( $('#login_container').is(':visible') ) {
		        //$(".model_bg").stop().animate({opacity:'0'},500);
		       	$(".model_bg").css("display", "none");
		       	$('#login_container').removeClass("fadeInDown");
		       	$('#login_container').addClass("fadeOutUp");
		       	$('#login_container').fadeOut();
		       
		       }
		    }
		});
		//LoginRegisterService();

}
/**
 * 登录和注册的js
 */
function LoginRegisterService(flag) {
	$("#loading").show();
	if(flag==0){
		var un = $("#username").val().trim();
		var pw = $("#password").val().trim();
		//$("#loading").addClass("active");
		
        if(un!=""&&un!=undefined&&pw!=""&&pw!=undefined){
        	url="LoginSystem.action";
        	$.ajax({
        		type:"post",
        		url:url,
        		data:{"username":un,"password":pw},
        		async:true,
        		success:function(data){
        			switch(data){
        				case 0:$("#loading").hide();layer.msg('用户名或者密码为空！'); break;
        				case 1:$("#loading").hide();layer.msg('该用户不存在！'); break;
        				case 2:$("#loading").hide();layer.msg('密码不正确！'); break;
        				case 3:
        					$("#loading").hide();
        					var url="getIndexPage.action";
        					$("#loginform").attr("action",url);
        					$("#loginform").submit();
        				break;
        				default: layer.msg('系统出错！');break;
        			}
        		},
        		error:function(){}
        	});
        }
        else{
        	//$("#loading").removeClass("active");
        	$("#loading").hide();
        	layer.msg('用户名或者密码为空！');
        }
	}
}
