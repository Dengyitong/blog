<%@ Page Title="" Language="C#" MasterPageFile="~/Wed/front.Master" AutoEventWireup="true" CodeBehind="comment.aspx.cs" Inherits="UI.Wed.comment1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <title>留言-邓宜桐个人博客</title>
    <script>
          $(function () {
             //设置导航栏活跃标签效果
             $("#ul_active").children("li").eq(3).addClass("active");
          })
      </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="article">
          <h2 class="archives"><span>留言板块</span></h2>
          <p class="spec2">博主：<a href="about.aspx">邓宜桐</a>&nbsp;&nbsp;&nbsp;&nbsp;学历： <span>华南农业大学本科生</span></p>
        <h2>主人寄语</h2>
        <img src="images/biaobai.jpg" class="img_ali"/>
        <div class="note">
            有个懂你的人，是最大的幸福。这个人，不一定十全十美，但他能读懂你，能走进你的心灵深处，能看懂你心里的一切。最懂你的人，总是会一直的在你身边，默默守护你，不让你受一点点的委屈。真正爱你的人不会说许多爱你的话，却会做许多爱你的事。<span class="biaobai">----喜欢“阿狸“就像喜欢你</span>
        </div>
          <!-- UY BEGIN -->
        <div id="uyan_frame"></div>
        <script type="text/javascript" src="http://v2.uyan.cc/code/uyan.js?uid=1891904"></script>
        <!-- UY END -->
        <!-- UYAN NEW COMMENT BEGIN -->
<div id="uyan_newcmt_unit"></div>
<script type="text/javascript" src="http://v2.uyan.cc/code/uyan.js?uid=1891904"></script> <!-- 如果已经过加载此行JS，即可不用重复加载 -->
<!-- UYAN NEW COMMENT END -->
    </div>
</asp:Content>
