using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data;
using WebApplication1.DAL;

namespace WebApplication1
{
    public partial class WebForm5 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            GridView1.DataBind();
        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            myDal dal = new myDal();
            if (CheckBlankBox())
            {
                Response.Write("<script>alert('Kindly fill all the fields');</script>");
                return;
            }
            else
            {
                string email = TextBox1.Text.Trim().ToString();
                string text = TextBox2.Text.Trim().ToString();
                int flag = dal.SellerChat(email, text);
                if (flag == 1)
                {
                    Response.Write("<script>alert('Dont send same message:');</script>");
                    return;
                }
                else if (flag == 2)
                {
                    Response.Write("<script> alert('Successfully send the message'); </script>");
                    Response.Redirect("SellerContact.aspx");
                }

            }
        }
        protected void LinkButton3_Click(object sender, EventArgs e)
        {
            Response.Redirect("product-list.aspx");
        }
        protected void LinkButton2_Click(object sender, EventArgs e)
        {
            Response.Redirect("index.aspx");
        }
        bool CheckBlankBox()
        {
            if (string.IsNullOrWhiteSpace(TextBox1.Text) || string.IsNullOrWhiteSpace(TextBox2.Text))
            {
                return true;
            }
            else
            {
                return false;
            }
        }
        void clear()
        {
            TextBox1 = TextBox2 = null;
        }
    }
}