﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication1
{
    public partial class WebForm7 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            Response.Redirect("index.aspx");
        }

        protected void LinkButton2_Click(object sender, EventArgs e)
        {
            Response.Redirect("product-list.aspx");
        }

        protected void LinkButton3_Click(object sender, EventArgs e)
        {
            Response.Redirect("https://www.junaidjamshed.com/");
        }

        protected void LinkButton4_Click(object sender, EventArgs e)
        {
            Response.Redirect("https://khaadi.com/");
        }

        protected void LinkButton5_Click(object sender, EventArgs e)
        {
            Response.Redirect("https://www.gulahmedshop.com/");
        }

        protected void LinkButton6_Click(object sender, EventArgs e)
        {
            Response.Redirect("https://mtjonline.com/");
        }

        protected void LinkButton7_Click(object sender, EventArgs e)
        {
            Response.Redirect("https://www.kayseria.com/");
        }

        protected void LinkButton8_Click(object sender, EventArgs e)
        {
            Response.Redirect("https://edenrobe.com/");
        }

        protected void LinkButton9_Click(object sender, EventArgs e)
        {
            DataList1.DataSourceID = null;
            if(DropDownList1.SelectedItem.Text=="High to low")
            {
                DataList1.DataSource= SqlDataSource3;
                DataList1.DataBind();
            }
            else
            {
                DataList1.DataSource = SqlDataSource2;
                DataList1.DataBind();
            }
        }
    }
}