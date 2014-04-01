<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/behind.Master" AutoEventWireup="true" CodeBehind="as_default.aspx.cs" Inherits="UI.Admin.as_default" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <script>
        function Delete(Id) {
            if (!confirm("确定要删除吗？")) {
                return false;
            }
            location.href = "user.ashx?dowhat=delete&Id=" + Id;
        }
        function Deletes() {
            var checkArry = document.getElementsByName("check");
            var strArry = "";
            var a = 0;
            for (var i = 0; i < checkArry.length; i++) {
                if (checkArry[i].checked) {
                    a = 1;
                }
            }
            if (a == 0) { alert("没有选中的项！"); return false;}
            if (!confirm("确定要删除选中的吗？")) {
                return false;
            }
            for (var i = 0; i < checkArry.length; i++) {
                if (checkArry[i].checked) {
                    strArry +=checkArry[i].value+","
                }
            }
            location.href = "user.ashx?dowhat=deletes&IdArry=" + strArry;

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
     <form id="form1" method="post" runat="server">
     <asp:ListView ID="ListView1" runat="server" ItemPlaceholderID="tb_hold" DataSourceID="SqlDataSource1">
        <LayoutTemplate>
             <table id="rounded-corner" summary="2007 Major IT Companies' Profit">
                  <thead>
                      <tr>
                          <th scope="col" class="rounded-company"></th>
                          <th scope="col" class="rounded">ID</th>
                          <th scope="col" class="rounded">用户名</th>
                          <th scope="col" class="rounded">修改</th>
                          <th scope="col" class="rounded-q4">删除</th>
                      </tr>
                  </thead>
                  <tfoot>
                      <tr>
                          <td colspan="6" class="rounded-foot-left"><em>不同的用户有不同的角色，不同的用户有不同的管理权限，请管理员为用户分配角色和权限</em></td>

                      </tr>
                  </tfoot>
                  <tbody id="tb_hold" runat="server">
                     
                  </tbody>
              </table>
        </LayoutTemplate>
        <ItemTemplate>
            <tr>
                          <td><input type="checkbox" name="check" value="<%#Eval("Id")%>"/></td>
                          <td><%#Eval("Id")%></td>
                          <td><%#Eval("name")%></td>
                          <td><a href="as_edit.aspx?id=<%#Eval("Id") %>"><img src="images/user_edit.png" alt="" title="修改" border="0" /></a></td>
                          <td><a href="javascript:void(0);"class="ask" onclick="Delete('<%#Eval("Id") %>')"><img src="images/trash.png" alt="" title="删除" border="0" /></a></td>
                      </tr>
        </ItemTemplate>
    </asp:ListView>
              <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="Data Source=(local);Initial Catalog=DYT_BLOG;Integrated Security=True;User ID=DYT_blog;Password=123456" ProviderName="System.Data.SqlClient" SelectCommand="SELECT * FROM [user_table]"></asp:SqlDataSource>
         <div> 
             <div class="futher">
              <a href="javascript:void(0);" class="bt_red" onclick="Deletes()"><span class="bt_red_lft"></span><strong>删除所选</strong><span class="bt_red_r"></span></a>
              <a href="as_create.aspx" class="bt_green"><span class="bt_green_lft"></span><strong>添加新项</strong><span class="bt_green_r"></span></a>
            </div>
            <div class="div_page">
                  <asp:DataPager ID="DataPager1" runat="server" PagedControlID="ListView1" PageSize="6">
                      <Fields>
                          <asp:NextPreviousPagerField ButtonType="Link" ShowFirstPageButton="true" ShowNextPageButton="false"/>
                          <asp:NumericPagerField ButtonType="Link" ButtonCount="5" NextPageText=">>" PreviousPageText="<<"  CurrentPageLabelCssClass="current"/>
                          <asp:NextPreviousPagerField  ButtonType="Link" ShowPreviousPageButton="false" ShowLastPageButton="true"/>
                      </Fields>
                  </asp:DataPager>
              <div class="clr"></div>
            </div>
          </div>  
     </form>
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="ContentPlaceHolder3" runat="server">
     <p class="content_line2">当前位置：<a href="as_default.aspx" class="rm">用户管理</a>&gt;浏览用户</p>
</asp:Content>