<%@ Page Title="" Language="C#" MasterPageFile="~/Wed/front.Master" AutoEventWireup="true" CodeBehind="blog.aspx.cs" Inherits="UI.Wed.blog" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <%if(model!=null) {%>
    <title><%=model.title %></title>
    <%}%>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="article">
        <%if(model!=null) {%>
        <p class="content_line">当前位置：<a href="Default.aspx" class="rm">首页</a>&gt;<a href="archives.aspx" class="rm">博客文章&gt;</a>>阅读正文</p>
          <h2 class="title"><%=model.title %></h2><div class="clr"></div>
           <div class="middle_resize">
            <p class="archives">来源：<span><%=model.autor %></span>&nbsp;&nbsp;&nbsp;&nbsp; 时间：<span><%=model.update_time%></span>&nbsp;&nbsp;&nbsp;&nbsp; 标签：<span><%=model.tags %></span></p>
            <div><%=model.substance %></div>
           </div><br />
         <!-- JiaThis Button BEGIN -->
<div class="jiathis_style">
	<a class="jiathis_button_qzone"></a>
	<a class="jiathis_button_tsina"></a>
	<a class="jiathis_button_tqq"></a>
	<a class="jiathis_button_weixin"></a>
	<a class="jiathis_button_renren"></a>
	<a href="http://www.jiathis.com/share?uid=1891904" class="jiathis jiathis_txt jtico jtico_jiathis" target="_blank"></a>
	<a class="jiathis_counter_style"></a>
</div>
<script type="text/javascript">
    var jiathis_config = { data_track_clickback: 'true' };
</script>
<script type="text/javascript" src="http://v3.jiathis.com/code/jia.js?uid=1891904" charset="utf-8"></script>
<!-- JiaThis Button END -->
        <p class="archives2">【点击次数:<%=model.click %>】</p>
         <div class="note">
           <p>除非注明，<a href="Default.aspx">邓宜桐个人博客</a>文章均为原创。</p>
           <p>转载请保留本文地址:<a href="Default.aspx">http://blog.yitongdeng.com</a></p>
        </div>    
        <%}%> 
        <div class="clr"></div>
        <!-- UY BEGIN -->
        <div id="uyan_frame"></div>
        <script type="text/javascript" src="http://v2.uyan.cc/code/uyan.js?uid=1891904"></script>
        <!-- UY END -->       
        </div>
</asp:Content>
