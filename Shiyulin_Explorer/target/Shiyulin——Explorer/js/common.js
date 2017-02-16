/**
 * Created by Zeal on 2016/10/26.
 * 公共js方法
 */

var servletname=location.pathname.split('/')[1];
var host=location.host;
var port=location.port;
var hostname=location.hostname;
var protocol=location.protocol;
var baseurl=protocol+host+servletname;
//模态框显示与隐藏
function showModel(){
    $('#Model').modal('toggle');
}

//转换时间格式
function dateToStr(datetime) {

    var year = datetime.getFullYear();
    var month = datetime.getMonth() + 1; //js从0开始取
    var date = datetime.getDate();
    var hour = datetime.getHours();
    var minutes = datetime.getMinutes();
    var second = datetime.getSeconds();

    if (month < 10) {
        month = "0" + month;
    }
    if (date < 10) {
        date = "0" + date;
    }
    if (hour < 10) {
        hour = "0" + hour;
    }
    if (minutes < 10) {
        minutes = "0" + minutes;
    }
    if (second < 10) {
        second = "0" + second;
    }

    var time = year + "-" + month + "-" + date + " " + hour + ":" + minutes + ":" + second; //2009-06-12 17:18:05
    // alert(time);
    return time;
}

// 对Date的扩展，将 Date 转化为指定格式的String
// 月(M)、日(d)、小时(h)、分(m)、秒(s)、季度(q) 可以用 1-2 个占位符，
// 年(y)可以用 1-4 个占位符，毫秒(S)只能用 1 个占位符(是 1-3 位的数字)
// 例子：
// (new Date()).Format("yyyy-MM-dd hh:mm:ss.S") ==> 2006-07-02 08:09:04.423
// (new Date()).Format("yyyy-M-d h:m:s.S")      ==> 2006-7-2 8:9:4.18
Date.prototype.Format = function(fmt)
{ //author: zeal
    var o = {
        "M+" : this.getMonth()+1,                 //月份
        "d+" : this.getDate(),                    //日
        "h+" : this.getHours(),                   //小时
        "m+" : this.getMinutes(),                 //分
        "s+" : this.getSeconds(),                 //秒
        "q+" : Math.floor((this.getMonth()+3)/3), //季度
        "S"  : this.getMilliseconds()             //毫秒
    };
    if(/(y+)/.test(fmt))
        fmt=fmt.replace(RegExp.$1, (this.getFullYear()+"").substr(4 - RegExp.$1.length));
    for(var k in o)
        if(new RegExp("("+ k +")").test(fmt))
            fmt = fmt.replace(RegExp.$1, (RegExp.$1.length==1) ? (o[k]) : (("00"+ o[k]).substr((""+ o[k]).length)));
    return fmt;
}

//计算天数差的函数，通用
function  DateDiff(sDate1,  sDate2){    //sDate1和sDate2是2006-12-18格式
    var  aDate,  oDate1,  oDate2,  iDays
    aDate  =  sDate1.split("-")
    oDate1  =  new  Date(aDate[1]  +  '-'  +  aDate[2]  +  '-'  +  aDate[0])    //转换为12-18-2006格式
    aDate  =  sDate2.split("-")
    oDate2  =  new  Date(aDate[1]  +  '-'  +  aDate[2]  +  '-'  +  aDate[0])
    iDays  =  parseInt(Math.abs(oDate1  -  oDate2)  /  1000  /  60  /  60  /24)    //把相差的毫秒数转换为天数
    return  iDays
}

//初始化构建bootstrap-table
function initTable(id,url,serchtxt) {
    //先销毁表格
    $('#'+id+'').bootstrapTable('destroy');
    //初始化表格,动态从服务器加载数据
    $('#'+id+'').bootstrapTable({
        method: "get",  //使用get请求到服务器获取数据
        url: url, //获取数据的Servlet地址
        striped: true,  //表格显示条纹
        pagination: true, //启动分页
        paginationLoop:false,
        pageSize: 5,  //每页显示的记录数
        pageNumber: 1, //当前第几页
        pageList: [5, 10],  //记录数可选列表
        //paginationPreText:'上一页',
        //paginationNextText:'下一页',
        //search: true,  //是否启用查询
        //showColumns: true,  //显示下拉框勾选要显示的列
        showRefresh: true,  //显示刷新按钮
        silentSort:false,   //设置为 false 将在点击分页按钮时，自动记住排序项。仅在 sidePagination设置为 server时生效.
        sidePagination: "server", //表示服务端请求
        //设置为undefined可以获取pageNumber，pageSize，searchText，sortName，sortOrder
        //设置为limit可以获取limit, offset, search, sort, order
        queryParamsType: "undefined",
        queryParams: function queryParams(params) {   //设置查询参数
            var param = {
                pageNumber: params.pageNumber,
                pageSize: params.pageSize,
                searchText: serchtxt
            };
            return param;
        },
        onLoadSuccess: function () {  //加载成功时执行
            //layer.msg("加载成功");
        },
        onLoadError: function () {  //加载失败时执行
            //layer.msg("加载数据失败", {time : 1500, icon : 2});
        }
    });
    $('button[name="refresh"] i').removeClass(""+this.className+"");
    $('button[name="refresh"] i').addClass("fa fa-refresh");
    $('div[title="列"] i').removeClass(""+this.className+"");
    $('div[title="列"] i').addClass("fa fa-th");
    $('#'+id+'').find('th').removeClass(""+this.className+"");
    $('#'+id+'').find('th').addClass("success");
    $('.bootstrap-table .fixed-table-body:has(table[id='+id+'])').parent().parent().find('.fixed-table-toolbar').append('<div class="columns columns-left pull-left col-lg-4"><div><form class="form-inline"><div class="input-group"> <input type="text" class="form-control" name="search-text"/><span class="input-group-btn"><input type="button" class="btn btn-info form-control" name="search-btn" value="搜索"/></span></div></form></div></div> ').end();
    $('.bootstrap-table').find('.fixed-table-toolbar .columns-left input[name="search-text"]').val(serchtxt);

    $('.bootstrap-table .fixed-table-toolbar .columns-left input[name="search-btn"]').on('click',function(){
        initTable(id,url,$('.bootstrap-table').find('.fixed-table-toolbar .columns-left input[name="search-text"]').val());
    });
}
//bootstrap-table时间格式化
function timeFormatter(value, row, index){
    //通过formatter可以自定义列显示的内容
    // value：当前field的值，即id
    // row：当前行的数据
    //index:当前row的index
    if(value!=null){
        return new Date(value).Format("yyyy-MM-dd");
    }else{
        return null;
    }

}

//bootstrap-table序号格式化，修改bootstrap-table源码后兼容服务器端分页
function indexFormatter(value, row, index) {
    //通过formatter可以自定义列显示的内容
    // value：当前field的值，即id
    // row：当前行的数据
    //index:当前row的index
    var page = $('table[data-toggle="table"]:eq(0)').bootstrapTable("getPage");
    return page.pageSize * (page.pageNumber - 1) + index + 1;
}

//bootstrap-table序号格式化，修改bootstrap-table源码后兼容服务器端分页
function indexFormatter1(value, row, index) {
    //通过formatter可以自定义列显示的内容
    // value：当前field的值，即id
    // row：当前行的数据
    //index:当前row的index
    var page = $('table[data-toggle="table"]:eq(1)').bootstrapTable("getPage");
    return page.pageSize * (page.pageNumber - 1) + index + 1;
}
//bootstrap-table序号格式化，修改bootstrap-table源码后兼容服务器端分页
function indexFormatter2(value, row, index) {
    //通过formatter可以自定义列显示的内容
    // value：当前field的值，即id
    // row：当前行的数据
    //index:当前row的index
    var page = $('table[data-toggle="table"]:eq(2)').bootstrapTable("getPage");
    return page.pageSize * (page.pageNumber - 1) + index + 1;
}
//bootstrap-table序号格式化，修改bootstrap-table源码后兼容服务器端分页
function indexFormatter3(value, row, index) {
    //通过formatter可以自定义列显示的内容
    // value：当前field的值，即id
    // row：当前行的数据
    //index:当前row的index
    var page = $('table[data-toggle="table"]:eq(3)').bootstrapTable("getPage");
    return page.pageSize * (page.pageNumber - 1) + index + 1;
}

//bootstarp-table的fileType数据字典绑定
function fileTypeFormatter(value, row, index){
    var nowvalue=''
    var url='Zd/FileType'
    $.ajax({
        url:url,
        async:false,
        type:'get',
        success:function(data){
            if (data != "false") {
                $.each(data,function(i,v){
                    if(v.id==value){
                        nowvalue= v.name;
                    }
                });
            }
        },
        error:function(){}
    });
    return nowvalue;
}
//bootstarp-table的fileType数据字典绑定
function suffixFormatter(value, row, index){
    return value.substr(1);
}


