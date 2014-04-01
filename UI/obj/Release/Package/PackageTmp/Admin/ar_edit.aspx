<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/behind.Master" AutoEventWireup="true" CodeBehind="ar_edit.aspx.cs" Inherits="UI.Admin.ar_edit" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
     <script src="xheditor/jquery-1.4.2.min.js" type="text/javascript"></script>
    <script src="xheditor/xheditor-zh-cn.min.js" type="text/javascript"></script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
      <li><a href="as_default.aspx">用户管理</a></li>
            <li class="active"><a href="ar_default.aspx">文章管理</a></li>
            <li><a href="#">评论管理</a></li>
            <li><a href="#">留言管理</a></li>
            <li><a href="al_default.aspx">链接管理</a></li>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
  <%if(model!=null) {%>
    <form action="log.ashx" method="post">

        <table class="create_tl">
            <tr>
                <td>标题：&nbsp;&nbsp;&nbsp;<input type="text" name="title" style="width: 300px" value="<%=model.title %>"/></td>
            </tr>
            <tr>
                <td>来源：&nbsp;&nbsp;&nbsp;<input type="text" name="autor" style="width: 300px" value="<%=model.autor %>"/></td>
          
            </tr>
            <tr>
                <td>关键字：<input type="text" name="tags" style="width: 300px" value="<%=model.tags%>"/></td>
            
            </tr>
             <tr>
                <td><textarea name="substance" style="width:600px; height:400px" class="xheditor {skin:'o2007blue',html5Upload:false,upMultiple:'1',upImgUrl:'xheditor/upload.aspx',upImgExt:'jpg,jpeg,gif,bmp,png',showBlocktag:true,tools:'Bold,Italic,Underline,Blocktag,FontColor,BackColor,Align,Link,Unlink,Img,Emot,Table'}"><%=model.substance %></textarea></td>
            </tr>
            <tr>
                <td><input type="submit" value="修改" /><a href="ar_default.aspx" class="back">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;【返回】</a></td>
                <td><input type="hidden" name="dowhat" value="edit" /></td>
                <td><input type="hidden" name="Id" value="<%=model.id%>"/></td>
            </tr>
        </table>

    </form>
      <%} %>
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="ContentPlaceHolder3" runat="server">
     <p class="content_line2">当前位置：<a href="ar_default.aspx" class="rm">文章管理</a>&gt;修改文章</p>
</asp:Content>
