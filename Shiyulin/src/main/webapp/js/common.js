
var servicePort=window.location.host;          //获取主机和端口名称

//用于弹出登录和注册的事件
function login_register(){
	$(".fullpage-login-register").on("click",'a',function(e){
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
		$("#login_action").click(function(){
			//alert(1);
			var username=$("#username").val().trim();
			var psd=$("#password").val().trim();
			$.ajax({
				type:"post",
				url:"http://localhost:8080/UMemorial/checkLogin.action",
				async:false,
				success:function(){
					alert("ok");
				},
				error:function(){
					alert("error");
				}
			});
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

}
/**
 * 登录和注册的js
 */
function LoginRegisterService(flag) {
	var un = $("#username").val();
	var pw = $("#password").val();
	if(flag==0){
		$("#loading").addClass("active");
        if(un!=""&&un!=undefined&&pw!=""&&pw!=undefined){
        	$.ajax({
        		type:"post",
        		url:"",
        		async:false,
        		success:function(data){
        			switch(data){
        				case 0:$("#loading").removeClass("active");layer.msg('用户名或者密码为空！'); break;
        				case 1:$("#loading").removeClass("active");layer.msg('该用户不存在！'); break;
        				case 2:$("#loading").removeClass("active");layer.msg('密码不正确！'); break;
        				case 3:$("#loading").removeClass("active");
        				break;
        				default: layer.msg('系统出错！');break;
        			}
        		},
        		error:function(){}
        	});
        }
        else{
        	layer.msg('用户名或者密码为空！');
        }
	}
}
