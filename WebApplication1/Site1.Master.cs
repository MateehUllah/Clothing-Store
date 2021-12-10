using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
#pragma warning restore CS0219 // Variable is assigned but its value is never used
#pragma warning disable CS0219 // Variable is assigned but its value is never used
namespace WebApplication1
{
    public partial class Site1 : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            string str = "admin@gmail.com";
            string str1 = "admin";
            if (Session["E-mail"] != null && Session["Password"] != null)
            {
                LinkButton11.Visible = false;
                if (Session["E-mail"].ToString() != str && Session["Password"].ToString() != str1)
                {
                    LinkButton12.Visible = false;
                }
                else
                {
                    LinkButton11.Visible = false;
                    LinkButton6.Visible = false;
                    LinkButton4.Visible = false;
                    LinkButton5.Visible = false;
                }
            }
            else
            {
                LinkButton12.Visible = false;
                LinkButton4.Visible = false;
                LinkButton5.Visible = false;
                LinkButton6.Visible = false;

            }
        }

        protected void LinkButton2_Click(object sender, EventArgs e)
        {
            Response.Redirect("product-list.aspx");
        }

        protected void LinkButton3_Click(object sender, EventArgs e)
        {
            Response.Redirect("product-detail.aspx");
        }

        protected void LinkButton4_Click(object sender, EventArgs e)
        {
            Response.Redirect("cart.aspx");
        }

        protected void LinkButton5_Click(object sender, EventArgs e)
        {
           Response.Redirect("checkout.aspx");
        }

        protected void LinkButton6_Click(object sender, EventArgs e)
        {
            Response.Redirect("my-account.aspx");
        }

        protected void LinkButton10_Click(object sender, EventArgs e)
        {

        }
        protected void LinkButton7_Click(object sender, EventArgs e)
        {
            Response.Redirect("wishlist.aspx");
        }
        protected void LinkButton9_Click(object sender, EventArgs e)
        {
            Response.Redirect("contact.aspx");
        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            Response.Redirect("index.aspx");
        }

        protected void LinkButton11_Click(object sender, EventArgs e)
        {

        }

        protected void LinkButton8_Click(object sender, EventArgs e)
        {
            Response.Redirect("login.aspx");
        }

        protected void LinkButton12_Click(object sender, EventArgs e)
        {
            Response.Redirect("Admin-panel.aspx");
        }
    }
}