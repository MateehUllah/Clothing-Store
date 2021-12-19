using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication1
{
    public partial class Review : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string str = Session["E-mail"].ToString();
            TextBox2.Text = str;
            TextBox2.ReadOnly = true;
            TextBox2.Enabled = false;
        }
    }
}