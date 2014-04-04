<%@ Page Title="" Language="C#" MasterPageFile="~/Wed/front.Master" AutoEventWireup="true" CodeBehind="keySearch.aspx.cs" Inherits="UI.Wed.keySearch" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <title>搜索-邓宜桐个人博客</title>
    <meta name="keywords" content="邓宜桐，个人博客，邓宜桐个人博客，优秀博客"/>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <form id="form1" runat="server">        
        <div runat="server" id="summary_hold">
            <%if(list.Count>0&&list!=null){ %>
                     <%for(int i=0;i<list.Count;i++){ %>
                            <div class="article">
                              <a href="blog.aspx?id=<%=list[i].id %>" class="index_title"><h2 class="index_h2"><span><%=list[i].title%></span></h2></a><div class="clr"></div>
                              <p class="index_tag">来源:<span><%=list[i].autor%></span>&nbsp;|&nbsp;时间:<span><%=list[i].update_time.ToShortDateString() %></span>&nbsp;|&nbsp;关键字：<span><%=list[i].tags%></span></p>
                              <img src="<%=list[i].imgurl%>" width="180" height="145" alt="image" class="fl" />
                               <p class="substance"><%=list[i].summary%></p>
                             <div class="clr"></div>
                              <p class="spec"><a href="blog.aspx?id=<%=list[i].id%>" class="rm">阅读全文 &raquo;</a></p>
                            </div>
                      <%} %>
            <%} %>
            <%else{ %>
            <p id="search_error"><img src="images/error.png"/><span>对不起!找不到相关的文章。</span></p>
            <p id="alert">你输入的关键字没有匹配的结果，请降低关键字的复杂度再进行尝试</p>
            <%} %>
     </div>
    </form>
</asp:Content>
