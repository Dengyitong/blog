﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace UI.Admin
{
    public partial class as_edit : System.Web.UI.Page
    {
        protected Model.Admin model;
        protected void Page_Load(object sender, EventArgs e)
        {
            string Id=Request.QueryString["id"];
            if(!string.IsNullOrEmpty(Id))
            {
                model = BLL.GetOne.Admin(Id);
            }
        }
    }
}