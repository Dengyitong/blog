<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/behind.Master" AutoEventWireup="true" CodeBehind="al_edit.aspx.cs" Inherits="UI.Admin.al_edit" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
     <script type="text/javascript">
         function checkForm(form) {
             if (form.name.value.length == 0 || form.name.value.match(/^\s+$/g)) { alert("网站名称不能为空！"); return false; }
             if (form.wed.value.length == 0 || form.wed.value.match(/^\s+$/g)) { alert("网址不能为空！"); return false; }
         }
    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
       <li><a href="as_default.aspx">用户管理</a></li>
            <li><a href="ar_default.aspx">文章管理</a></li>
            <li><a href="#">评论管理</a></li>
            <li><a href="#">留言管理</a></li>
            <li class="active"><a href="al_default.aspx">链接管理</a></li>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder3" runat="server">
    <p class="content_line2">当前位置：<a href="al_default.aspx" class="rm">链接管理</a>&gt;修改链接</p>
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
     <%if(model!=null) {%> 
    <form action="link.ashx" method="post" runat="server" onsubmit="return checkForm(this)">
        <table class="create_tb">
            <tr>
                <td>网站名称：</td>
                <td><input type="text" name="name" value="<%=model.name %>" style="width: 350px"/></td>
            </tr>
            <tr>
                <td>网址：</td>
                <td><input type="text" name="wed" value="<%=model.wed %>" style="width: 350px"/></td>
            </tr>
            <tr>
                <td><input type="hidden" name="dowhat" value="edit" /></td>
                <td><input type="submit" value="修改" /><a href="al_default.aspx" class="back">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;【返回】</a></td>
                <td><input type="hidden" name="Id" value="<%=model.id %>" /></td>
            </tr>
        </table>
</form>
    <%} %>
</asp:Content>
