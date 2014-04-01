using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Collections;

namespace UI.Wed
{
    public partial class index : System.Web.UI.Page
    {
        protected List<Model.Article> list;

        protected void Page_Load(object sender, EventArgs e)
        {
            list = BLL.GetList.Article();
        }
    }
}