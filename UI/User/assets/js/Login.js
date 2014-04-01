window.onload = function onLoginLoaded() {
        GetLastUser();
}
function GetLastUser() {
    var id = "49BAC005-7D5B-4231-8CEA-16939BEACD67";//GUID标识符
    var usr = GetCookie(id);
    if (usr != null) {
        document.getElementById('JobNumber').value = usr;
    } else {
        document.getElementById('JobNumber').value = "";
    }
    GetPwdAndChk();
}
//点击登录时触发客户端事件

function SetPwdAndChk() {
    var s = "";
    s = $.ajax({
        type: "POST",
        url: "AjaxAction.ashx",
        data: {
            dowhat: "login",
            JobNumber: $("#JobNumber").val(),
            Password: $("#Password").val()
        },
        async: false
    }).responseText;
    if (s == "success") {
        //取用户名
        var usr = document.getElementById('JobNumber').value;
        //将最后一个用户信息写入到Cookie
        SetLastUser(usr);
        //如果记住密码选项被选中
        if (document.getElementById('remember-me').checked == true) {
            //取密码值
            var pwd = document.getElementById('Password').value;
            var expdate = new Date();
            expdate.setTime(expdate.getTime() + 14 * (24 * 60 * 60 * 1000));
            //将用户名和密码写入到Cookie
            SetCookie(usr, pwd, expdate);
        } else {
            //如果没有选中记住密码,则立即过期
            ResetCookie();
        }
        window.location.href = "../../../Admin/as_default.aspx";
    }
    else {
        $("#add").remove();
        $("h3").after("<div class='alert fade in' id='add'> <a class='close' data-dismiss='alert' href='#'> &times;</a><i class='icon-minus-sign'></i> " + s + "</div>");
        return;
    }
}

function SetLastUser(usr) {
    var id = "49BAC005-7D5B-4231-8CEA-16939BEACD67";
    var expdate = new Date();
    //当前时间加上两周的时间
    expdate.setTime(expdate.getTime() + 14 * (24 * 60 * 60 * 1000));
    SetCookie(id, usr, expdate);
}
//用户名失去焦点时调用该方法

function GetPwdAndChk() {
    var usr = document.getElementById('JobNumber').value;
    var pwd = GetCookie(usr);
    if (pwd != null) {
        document.getElementById('remember-me').checked = true;
        document.getElementById('Password').value = pwd;
    } else {
        document.getElementById('remember-me').checked = false;
        document.getElementById('Password').value = "";
    }
}
//取Cookie的值

function GetCookie(name) {
    var arg = name + "=";
    var alen = arg.length;
    var clen = document.cookie.length;
    var i = 0;
    while (i < clen) {
        var j = i + alen;
        //alert(j);
        if (document.cookie.substring(i, j) == arg) return getCookieVal(j);
        i = document.cookie.indexOf(" ", i) + 1;
        if (i == 0) break;
    }
    return null;
}
var isPostBack = "<%= IsPostBack %>";

function getCookieVal(offset) {
    var endstr = document.cookie.indexOf(";", offset);
    if (endstr == -1) endstr = document.cookie.length;
    return unescape(document.cookie.substring(offset, endstr));
}
//写入到Cookie

function SetCookie(name, value, expires) {
    var argv = SetCookie.arguments;
    //本例中length = 3
    var argc = SetCookie.arguments.length;
    var expires = (argc > 2) ? argv[2] : null;
    var path = (argc > 3) ? argv[3] : null;
    var domain = (argc > 4) ? argv[4] : null;
    var secure = (argc > 5) ? argv[5] : false;
    document.cookie = name + "=" + escape(value) + ((expires == null) ? "" : ("; expires=" + expires.toGMTString())) + ((path == null) ? "" : ("; path=" + path)) + ((domain == null) ? "" : ("; domain=" + domain)) + ((secure == true) ? "; secure" : "");
}

function ResetCookie() {
    var usr = document.getElementById('JobNumber').value;
    var expdate = new Date();
    SetCookie(usr, null, expdate);
}
function enter(obj, evt) {
    evt = (evt) ? evt : ((window.event) ? window.event : "")
    keyCode = evt.keyCode ? evt.keyCode : (evt.which ? evt.which : evt.charCode);
    if (keyCode == 13) {
        document.getElementById("sure").click();
    }
}