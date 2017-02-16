window.FRurl = "realestate/ReportServer?reportlet";
$(function() {
	$.get('../realestate/xml/serviceXml.xml', function(data) {
		window.servicePort = $(data).find("BDCservicePort").text();
	});
});

//划拨转出让删除不动产单元
function deleteHBBDCDY(qszt,dybsm,ywh){
	var lcbm = Request.QueryString("lcbm");
	if (qszt == 1 || qszt == 2) {
		createWin({
			type: "info",
			msg: "登簿已完成，不能再次修改信息！"
		});
	}else{
		var url = "http://" + servicePort + "/realestate/restServlet";
		if(dybsm == "" || dybsm == "null" || dybsm == null){
			return;}
		else{
			var servicePath = "selltransact/delProjectrelationshipsAndAcceptApply?ywh=" + ywh + "&lcdm=" + lcbm + "&ydybsm=" + dybsm;
		}
		var deleteBdcdy = function() {
				(function(dybsm) {
					$.post(url, {
						method: "delete",
						urlPath: servicePath
					}, function(data) {
						if (data != "false") {
							window.contentPane.refreshAllSheets();
						}
					});
				})(dybsm)
			}
			createWin({
				type: "confirm",
				msg: "确认删除该条记录？",
				cancel: function() {},
				callback: function() {
					deleteBdcdy();
				}
			});

	
	}


}
