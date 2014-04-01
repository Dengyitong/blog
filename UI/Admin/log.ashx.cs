using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;

namespace UI.Admin
{
    /// <summary>
    /// log 的摘要说明
    /// </summary>
    public class log : IHttpHandler
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
                    string title = context.Request.Form["title"];
                    string autor = context.Request.Form["autor"];
                    string tags=context.Request.Form["tags"];
                    DateTime update_time = DateTime.Now;
                    string substance = context.Request.Form["substance"];
                    string summarys = Utils.Tools.RemoveHtml(substance);
                    string substitute = "......";
                    string summary = Utils.Tools.CutString(summarys,320, substitute);
                    string imgurl = Utils.ImgHelpher.getImgUrl(substance, @"<IMG[^>]+src=\s*(?:'(?<src>[^']+)'|""(?<src>[^""]+)""|(?<src>[^>\s]+))\s*[^>]*>", "src")[0].ToString();

                    //参数检验
                    if (BLL.create.Article(title, substance,imgurl,summary, autor, update_time, tags) > 0)
                    {
                        context.Response.Redirect("ar_create.aspx");
                    }
                    else
                    {

                        context.Response.Write("添加失败");
                    }
                }
                else if (dowhat.Equals("edit"))
                {
                    string title = context.Request.Form["title"];
                    string autor = context.Request.Form["autor"];
                    string tags = context.Request.Form["tags"];
                    string time = Convert.ToString(DateTime.Now);
                    string update_time = Utils.Tools.GetShortDate(time);
                    string substance = context.Request.Form["substance"];
                    string summarys = Utils.Tools.RemoveHtml(substance);
                    string substitute = "......";
                    string summary = Utils.Tools.CutString(summarys,320, substitute);
                    string imgurl = Utils.ImgHelpher.getImgUrl(substance, @"<IMG[^>]+src=\s*(?:'(?<src>[^']+)'|""(?<src>[^""]+)""|(?<src>[^>\s]+))\s*[^>]*>", "src")[0].ToString();
                    string Id=context.Request.Form["Id"];

                    //参数检验
                    if (BLL.Update.Article(title, substance,imgurl,summary, autor, tags,Id) > 0)
                    {
                        context.Response.Redirect("ar_default.aspx");
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
                    if (BLL.delete.ByTableNameAndId("log_table", Id) > 0)
                    {
                        context.Response.Redirect("ar_default.aspx");
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
                            BLL.delete.ByTableNameAndId("log_table", ID[i].ToString());  
                        }
                    }
                    context.Response.Redirect("ar_default.aspx");

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