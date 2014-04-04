using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace UI.Wed
{
    public partial class keySearch : System.Web.UI.Page
    {
        protected List<Model.Article> list;
        protected void Page_Load(object sender, EventArgs e)
        {
            string keyword =Request.QueryString["keyword"];
            if (keyword != null)
            {
                list = BLL.GetList.SearchArticle(keyword);
            }
            else { list = new List<Model.Article>(); }
        }
    }
}