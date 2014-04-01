<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="login_model.aspx.cs" Inherits="UI.User.login_model" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1"><meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
 <title>
	邓宜桐个人博客 后台中心
</title><link href="../../Share/css/bootstrap.min.css" rel="stylesheet" />
    <link href="../../Share/css/bootstrap-ie6.min.css" rel="stylesheet" />
    <link href="../../Share/css/bootstrap-responsive.min.css" rel="stylesheet" />
    <script src="../../Share/js/jquery-1.9.1.min.js"></script>
    <script src="../../Share/js/bookstrap-alert.js"></script>
    <style>
        body {
            padding-top: 40px;
            padding-bottom: 40px;
            background-color: #f5f5f5;
        }

        .form-signin {
            max-width: 300px;
            padding: 29px 39px 39px;
            margin: 0 auto 20px;
            background-color: #fff;
            border: 1px solid #e5e5e5;
            -webkit-border-radius: 5px;
            -moz-border-radius: 5px;
            border-radius: 5px;
            -webkit-box-shadow: 0 1px 2px rgba(0,0,0,.05);
            -moz-box-shadow: 0 1px 2px rgba(0,0,0,.05);
            box-shadow: 0 1px 2px rgba(0,0,0,.05);
        }
            .form-signin .form-signin-heading,
            .form-signin .checkbox {
                margin-bottom: 10px;
            }
            .form-signin input[type="text"],
            .form-signin input[type="password"] {
                font-size: 16px;
                height: auto;
                margin-bottom: 15px;
                padding: 7px 9px;
            }

        .copyright{
            text-align:center;
        }

    </style>
     <script src="assets/js/Login.js"></script>
    <style>
        label.error {
            color: red;
        }
    </style>
</head>
<body>>
    <header>
        <div style="text-align:center;line-height:50px;margin-bottom:30px;">
            <h2>邓宜桐个人博客后台中心</h2>
            <hr />
        </div>
    </header>

    <div class="container">

      <form class="form-signin">
        <h3 class="form-signin-heading">请登录</h3>
        <input id="JobNumber" name="JobNumber" type="text" class="input-block-level" placeholder="用户名" value="" onkeydown="enter(this,event)" onblur="GetPwdAndChk()"/>
        <input id="Password" name="Password" type="password" class="input-block-level" placeholder="密码" value="" onkeydown="enter(this,event)"/>
       <label class="checkbox">
          <input type="checkbox" value="remember-me" checked="checked" id="remember-me"/>记住我   
       </label>
       <button class="btn btn-large btn-primary" type="button" onclick="SetPwdAndChk()" id="sure">确认</button>   
       </form>

    </div>

    <div class="container-fluid">
        <hr />
        <footer>
            <p class="copyright">Copyrigth &copy; 2014 <a href="#">邓宜桐个人博客网站</a> Powered By <a href="http://racent.com.cn" target="_blank">Racent</a> & <a href="http://onetributary.com" target="_blank">OneTributary</a>.</p>
        </footer>
    </div>
</body>
</html>