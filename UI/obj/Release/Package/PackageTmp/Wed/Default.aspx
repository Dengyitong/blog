<%@ Page Title="" Language="C#" MasterPageFile="~/Wed/front.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="UI.Wed.index" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <title>首页-邓宜桐个人博客</title>
    <meta name="keywords" content="邓宜桐，个人博客，邓宜桐个人博客，优秀博客"/>
    <meta name="description" content="此博客是邓宜桐的个人博客,记录网站开发的问题解决经验与技巧,分享互联网鲜事趣事和个人点滴,欢迎大家经常来邓宜桐个人博客做客。,这是邓宜桐个人博客的原创博文,欢迎..."/>
    <script>
        $(function(){
            //设置导航栏活跃标签效果
            $("#ul_active").children("li").eq(0).addClass("active");
        })
    </script>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <form id="form1" runat="server">
        <asp:ListView ID="ListView1" runat="server" ItemPlaceholderID="summary_hold" DataSourceID="SqlDataSource1">
            <LayoutTemplate>
                <div runat="server" id="summary_hold">

                </div>
            </LayoutTemplate>
            <ItemTemplate>
                <div class="article">
          <a href="blog.aspx?id=<%#Eval("Id")%>" class="index_title"><h2 class="index_h2"><span><%#Eval("title")%></span></h2></a><div class="clr"></div>
          <p class="index_tag">来源:<span><%#Eval("autor")%></span>&nbsp;|&nbsp;时间:<span><%#Eval("update_time","{0:yyyy-MM-dd}") %></span>&nbsp;|&nbsp;关键字：<span><%#Eval("tags")%></span></p>
          <img src="<%#Eval("imgurl")%>" width="180" height="145" alt="image" class="fl" />
           <p class="substance"><%#Eval("summary")%></p>
         <div class="clr"></div>
          <p class="spec"><a href="blog.aspx?id=<%#Eval("Id")%>" class="rm">阅读全文 &raquo;</a></p>
        </div>
            </ItemTemplate>
        </asp:ListView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="Data Source=(local);Initial Catalog=DYT_BLOG;Integrated Security=True;User ID=DYT_blog;Password=123456" ProviderName="System.Data.SqlClient" SelectCommand="SELECT * FROM [log_table] ORDER BY update_time DESC"></asp:SqlDataSource>
         <div class="pages">
        <asp:DataPager ID="DataPager1" runat="server" PagedControlID="ListView1" PageSize="6">
               <Fields>
                    <asp:NumericPagerField ButtonType="Link" ButtonCount="6" NextPageText=">>" PreviousPageText="<<"  CurrentPageLabelCssClass="current"/>
               </Fields>
         </asp:DataPager>
         </div>
    </form>
</asp:Content>
