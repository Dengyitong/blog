<%@ Page Title="" Language="C#" MasterPageFile="~/Wed/front.Master" AutoEventWireup="true" CodeBehind="archives.aspx.cs" Inherits="UI.Wed.archives" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <title>归档-邓宜桐个人博客</title>
    <script type="text/javascript">
        $(document).ready(function () {
            $(".months").click(function () {
                $(".month_list").toggle();
            });
        });
        <%for(int i=0;i<YearArry.Count;i++){%>;
            <%for(int j=0;j<MonthArry.Count;j++){ %>
                <%if(MonthArry[j].year==YearArry[i].year){ %>
                 $(document).ready(function () {
                 $("#<%=YearArry[i].year%><%=MonthArry[j].month%>").click(function () {
                     $("#list<%=YearArry[i].year%><%=MonthArry[j].month%>").slideToggle();
                 });
                });
             <%} %>
          <%} %>
        <%}%>
     
       $(function(){
           //设置导航栏活跃标签效果
           $("#ul_active").children("li").eq(1).addClass("active");
       })
    </script>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <div class="article">
          <h2 class="archives"><span>所有文章</span></h2>
          <p class="spec2">发布者：<a href="about.aspx">邓宜桐</a>&nbsp;|&nbsp;共<%=DayArry.Count %>篇</p>
          <div class="clr"></div>
           <h3>[<a class="months" href="#">全部展开/收缩</a>](注：点击月份可以展开)</h3>
         <%for(int i=0;i<YearArry.Count;i++){ %>
           <div class="middle_resize">
               <h3 class="spec3"><%=YearArry[i].year %></h3>
           </div>
            <%for(int j=0;j<MonthArry.Count;j++){ %>
                <ul class="al_mon_list">
                  <%if(MonthArry[j].year==YearArry[i].year){ %>
                   <li><a href="#" class="month" id="<%=YearArry[i].year %><%=MonthArry[j].month %>"><%=MonthArry[j].month %>月（<%=MonthArry[j].sum_log %>篇文章)</a>   
                        <ul class="month_list" hidden="hidden" id="list<%=YearArry[i].year %><%=MonthArry[j].month %>">
                            <%for(int k=0;k<DayArry.Count;k++){ %>
                                <%if(DayArry[k].year==YearArry[i].year&&DayArry[k].month==MonthArry[j].month){ %>
                                <li><%=DayArry[k].day %>日: <a href="blog.aspx?id=<%=DayArry[k].Id %>"><%=DayArry[k].title %></a><em>(0)</em></li>
                                 <%}%>
                            <%} %>
                        </ul>
                    </li>
                  <%} %>
               </ul>
              <%} %>
            <%}%>
        </div>
</asp:Content>
