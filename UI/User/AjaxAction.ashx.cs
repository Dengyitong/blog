using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.SessionState;

namespace UI.User
{
    /// <summary>
    /// AjaxAction 的摘要说明
    /// </summary>
    public class AjaxAction : IHttpHandler, IRequiresSessionState
    {

        public void ProcessRequest(HttpContext context)
        {
            context.Response.ContentType = "text/plain";
            string dowhat = context.Request["dowhat"];
            if (dowhat.Equals("login"))
            {
                string name = context.Request["JobNumber"];
                string password = context.Request["password"];
                if (string.IsNullOrEmpty(name))
                {
                    context.Response.Write("请输入用户名!");
                }
                else if (string.IsNullOrEmpty(password))
                {
                    context.Response.Write("请输入密码!");
                }
                else if (string.IsNullOrEmpty(password) && string.IsNullOrEmpty(name))
                {
                    context.Response.Write("请输入用户名和密码!");
                }
                else if (!string.IsNullOrEmpty(name) && !string.IsNullOrEmpty(password))
                {
                    Model.Admin admin = BLL.GetOne.Admin(name, password);
                    if (admin != null)
                    {
                        HttpContext.Current.Session["admin"] = admin;
                        HttpContext.Current.Response.Write("success");
                    }
                    else
                    {
                        context.Response.Write("用户名或密码不匹配！");
                    }
                    context.Response.End();
                    return;
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