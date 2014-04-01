using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace UI.Wed
{
    public partial class blog : System.Web.UI.Page
    {
        protected Model.Article model;
        protected void Page_Load(object sender, EventArgs e)
        {
            string Id = Request.QueryString["id"];
            if (Request.Cookies["ar_id"]==null)
            {
                HttpCookie ck = new HttpCookie("ar_id");
                ck.Expires = DateTime.Now.AddDays(1);
                Response.Cookies.Add(ck);
            }
            HttpCookie ck_id=Request.Cookies["ar_id"];
            if(ck_id[Id]==null){
                ck_id.Values.Add(Id, "dyt");
                ck_id.Expires = DateTime.Now.AddDays(1);
                Response.Cookies.Add(ck_id);
                Utils.SQLHelper db = new Utils.SQLHelper();
                db.ExecuteNoneQuery("update log_table set click=click+1 where Id=" + Id, System.Data.CommandType.Text);
            }
            if (!string.IsNullOrEmpty(Id))
            {
                model = BLL.GetOne.Article(Id);
            }
        }
    }
}