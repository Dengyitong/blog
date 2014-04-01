<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/behind.Master" AutoEventWireup="true" CodeBehind="as_create.aspx.cs" Inherits="UI.Admin.as_create" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <script type="text/javascript">
        function checkForm(form)
        {
            if (form.name.value.length == 0 || form.name.value.match(/^\s+$/g)) { alert("用户名不能为空！"); return false; }
            if (form.password.value.length == 0 || form.password.value.match(/^\s+$/g)) { alert("密码不能为空！"); return false; }
            if (form.password.value != form.ConfirmPassword.value) { alert("两次输入的密码不一致！"); return false;}
        }
    </script>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <li class="active"><a href="as_default.aspx">用户管理</a></li>
            <li><a href="ar_default.aspx">文章管理</a></li>
            <li><a href="#">评论管理</a></li>
            <li><a href="#">留言管理</a></li>
            <li><a href="al_default.aspx">链接管理</a></li>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
   <form action="user.ashx" method="post" onsubmit="return checkForm(this)" >
        <hr />
        <table class="create_tb">
            <tr>
                <td>用户名：</td>
                <td><input type="text" name="name"/></td>
            </tr>
            <tr>
                <td>用户密码：</td>
                <td><input type="password" name="password" /></td>
            </tr>
            <tr>
                <td>确认密码：</td>
                <td><input type="password" name="ConfirmPassword" /></td>
            </tr>
            <tr>
                <td><input type="hidden" name="dowhat" value="create" /></td>
                <td><input type="submit" value="添加"/><a href="as_default.aspx" class="back">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;【返回】</a></td>
            </tr>
        </table>

    </form>
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="ContentPlaceHolder3" runat="server">
     <p class="content_line2">当前位置：<a href="as_default.aspx" class="rm">用户管理</a>&gt;添加用户</p>
</asp:Content>
