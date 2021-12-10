using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication1
{
    public partial class WebForm8 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

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
    }
}