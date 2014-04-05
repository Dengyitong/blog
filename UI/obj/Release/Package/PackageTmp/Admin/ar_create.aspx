<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/behind.Master" AutoEventWireup="true" CodeBehind="ar_create.aspx.cs" Inherits="UI.Admin.ar_create" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <script src="xheditor/jquery-1.4.2.min.js" type="text/javascript"></script>
    <script src="xheditor/xheditor-zh-cn.min.js" type="text/javascript"></script>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
            <li><a href="as_default.aspx">用户管理</a></li>
            <li class="active"><a href="ar_default.aspx">文章管理</a></li>
            <li><a href="#">评论管理</a></li>
            <li><a href="#">留言管理</a></li>
            <li><a href="al_default.aspx">链接管理</a></li>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
 <form action="log.ashx" method="post">

        <table class="create_tl">
            <tr>
                <td>标题：&nbsp;&nbsp;&nbsp;<input type="text" name="title" style="width: 300px" placeholder="输入标题"/></td>
            </tr>
            <tr>
                <td>来源：&nbsp;&nbsp;&nbsp;<input type="text" name="autor" style="width: 300px" placeholder="输入文章来源"/></td>
          
            </tr>
            <tr>
                <td>关键字：<input type="text" name="tags" style="width: 300px" placeholder="文章关键词"/></td>
            
            </tr>
             <tr>
                <td><textarea name="substance" id="substance" style="width:600px; height:400px" class="xheditor {skin:'o2007blue',html5Upload:false,upMultiple:'1',upLinkUrl:'xheditor/upload.aspx',upLinkExt:'zip,rar,txt,pdf,doc,docx,ppt,pptx,xls,xlsx',upImgUrl:'xheditor/upload.aspx',upImgExt:'jpg,jpeg,gif,bmp,png',upFlashUrl:'xheditor/upload.aspx',upMediaUrl:'xheditor/upload.aspx',showBlocktag:true,tools:'Bold,Italic,Underline,FontColor,BackColor,Blocktag,Align,Link,Unlink,Img,Flash,Media,Emot,Table'}"></textarea></td>
            </tr>
            <tr>
                <td><input type="submit" value="添加" /><a href="ar_default.aspx" class="back">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;【返回】</a></td>
                <td><input type="hidden" name="dowhat" value="create" /></td>
            </tr>
        </table>

    </form>
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="ContentPlaceHolder3" runat="server">
     <p class="content_line2">当前位置：<a href="ar_default.aspx" class="rm">文章管理</a>&gt;添加文章</p>
</asp:Content>