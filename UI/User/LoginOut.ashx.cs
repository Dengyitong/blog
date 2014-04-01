using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.SessionState;

namespace UI.User
{
    /// <summary>
    /// LoginOut 的摘要说明
    /// </summary>
    public class LoginOut : IHttpHandler, IRequiresSessionState
    {

        public void ProcessRequest(HttpContext context)
        {
            context.Response.ContentType = "text/plain";
            HttpContext.Current.Session.Remove("admin");
            context.Response.Redirect("login_model.aspx");
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