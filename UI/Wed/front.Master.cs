using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace UI.Wed
{
    public partial class front : System.Web.UI.MasterPage
    {
        protected List<Model.Link> list;
        protected List<Model.HotArticle> HotArticleList;
        protected List<Model.HotArticle> NewAritcleList;
        protected void Page_Load(object sender, EventArgs e)
        {
            list = BLL.GetList.Link();
            HotArticleList = BLL.GetList.HotArticle();
            NewAritcleList = BLL.GetList.NewArticle();

        }
    }
}