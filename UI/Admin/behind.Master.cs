using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace UI.Admin
{
    public partial class behind : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //身份验证
            string msg = User.code.Autorization.check(Session["admin"]);
            if (!msg.Equals("ACCEPT"))
            {
                Response.Redirect("/User/login_model.aspx");
                Response.End();
                return;
            }
        }
    }
}