<%@ Page Title="" Language="C#" MasterPageFile="~/Wed/front.Master" AutoEventWireup="true" CodeBehind="about.aspx.cs" Inherits="UI.Wed.about" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <title>关于-邓宜桐个人博客</title>
     <script>
         $(function () {
             //设置导航栏活跃标签效果
             $("#ul_active").children("li").eq(2).addClass("active");
         })
    </script>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <div class="article">
          <h2><span>关于我</span></h2><div class="clr"></div>
          <p class="introduce">邓宜桐，性别男，广东云浮市新兴县，1993年03月21月出生。我是外向孤独型，我的价值观是：用爱和被爱的方式感受自己的存在，悲伤与快乐，我都好好感受证明我还活着的气息。</p>
          <p class="introduce">回想很小很小的时候，也就是还没有开始读书的时候，好像也回想不起来什么，因为太久了。唯一有印象的就是去了外公那里居住
            ，和邻家的一个女孩子，名字好像叫做“琴”，自己经常和她一起到山里摘果子。后来她搬走了，我也回去上学了，这个名字我一直都记得，然而她长大什么样子......
        </p>
          <p class="introduce"> 
            小学的时间
            应该算是一种童年，然而我的记忆中，我小学纯属是一个书呆子，我居然走路看书，上厕所看书，而且还是课本，我也不知道我当时受了谁的影响，我现在回想起来有点可笑，
            同时有点感慨浪费了童年。
        </p>
        <p class="introduce">
            初中对我来说应该是处于叛逆期，基本的孩子都这样吧，所以我感觉初中的校风真的很不好，那些同学的整体素质也不怎么的好，包括当时的我。
            打架，欺负人，被欺负，偷东西，习以为常。
        </p>
        <p class="introduce">
        或许还要多亏小学的书呆子，继续上高中读书没有压力，当时的人都说高中时每个学生的关键期，因为要经历高考这个独木桥。
            而我不以为然，反正我认为我是高三一年才真正开始学习。
          </p>
           <p class="introduce"> 
            华南农业大学”，我就在这里开始了据说是人生最美好的时期的大学生活。此博客建立的此时此刻是我刚升大二的
            寒假，慢慢我真正领悟到大学真的是决定前途的时刻，大学才是要刻苦的黄金期，可是目前为止我发现自己的竞争力很低，毫无成就可言，我怕到时填简历的时候，奖项和成就方面
            无从下手，所以本站能建成的话就是我第一个成就......
          </p>
        </div>
        <div class="article">
          <h2><span>关于本博</span></h2><div class="clr"></div>
          <p><strong>开通时间：</strong>2014年3月29日</p>
          <p><strong>地址：</strong><a href="Default.aspx">http://blog.yitongdeng.com/wed</a></p>
        </div>
</asp:Content>
