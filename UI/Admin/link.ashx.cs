using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;

namespace UI.Admin
{
    /// <summary>
    /// link 的摘要说明
    /// </summary>
    public class link : IHttpHandler
    {

        public void ProcessRequest(HttpContext context)
        {
            context.Response.ContentType = "text/plain";
            string dowhat = context.Request.Form["dowhat"];
            if (string.IsNullOrEmpty(dowhat))
            {
                dowhat = context.Request.QueryString["dowhat"];
            }
            if (!string.IsNullOrEmpty(dowhat))
            {
                if (dowhat.Equals("create"))
                {
                    string name = context.Request.Form["name"];
                    string wed = context.Request.Form["wed"];

                    //参数检验
                    if (BLL.create.Link(name, wed) > 0)
                    {
                        context.Response.Redirect("al_create.aspx");
                    }
                    else
                    {
                        context.Response.Write("添加失败");
                    }
                }
                else if (dowhat.Equals("edit"))
                {
                    string Id = context.Request.Form["Id"];
                    string name = context.Request.Form["name"];
                    string wed = context.Request.Form["wed"];

                    //参数检验
                    if (BLL.Update.Link(name, wed, Id) > 0)
                    {
                        context.Response.Redirect("al_default.aspx");
                    }
                    else
                    {
                        context.Response.Write("修改失败");
                    }
                }
                else if (dowhat.Equals("delete"))
                {
                    string Id = context.Request.QueryString["Id"];
                    //参数检验
                    if (BLL.delete.ByTableNameAndId("link_table", Id) > 0)
                    {
                        context.Response.Redirect("al_default.aspx");
                    }
                    else
                    {
                        context.Response.Write("删除失败");
                    }
                }
                else if (dowhat.Equals("deletes"))
                {
                    string IdArry = context.Request.QueryString["IdArry"].ToString();

                    string[] ID = IdArry.Split(',');
                    for (int i = 0; i < ID.Length; i++)
                    {
                        if (ID[i] != "")
                        {
                            BLL.delete.ByTableNameAndId("link_table", ID[i].ToString());

                        }
                    }
                    context.Response.Redirect("al_default.aspx");
                }
            }
        }

        public bool IsReusable
        {
            get
            {
                return false;
            }
        }
    }
}