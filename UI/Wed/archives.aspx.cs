using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace UI.Wed
{
    public partial class archives : System.Web.UI.Page
    {
        protected List<Model.Year> YearArry;
        protected List<Model.Month> MonthArry;
        protected List<Model.Day> DayArry;
        protected void Page_Load(object sender, EventArgs e)
        {
            YearArry = BLL.GetList.Year();
            MonthArry = BLL.GetList.Month();
            DayArry = BLL.GetList.Day();
        }
    }
}