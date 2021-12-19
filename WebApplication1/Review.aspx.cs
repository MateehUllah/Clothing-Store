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
    public partial class Review : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string str = Session["E-mail"].ToString();
            TextBox2.Text = str;
            TextBox2.ReadOnly = true;
            TextBox2.Enabled = false;
        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            Response.Redirect("index.aspx");
        }

        protected void LinkButton2_Click(object sender, EventArgs e)
        {
            Response.Redirect("product-list.aspx");
        }

        protected void Add_Review_Click(object sender, EventArgs e)
        {
            myDal dal = new myDal();
            if (CheckBlankBox())
            {
                Response.Write("<script>alert('Kindly fill all the fields');</script>");
                return;
            }
            else
            {
                string ProductID = TextBox1.Text.Trim().ToString();
                string Email = TextBox2.Text.Trim().ToString();
                string Review = TextBox3.Text.Trim().ToString();
                int flag = dal.AddReview(ProductID,Email,Review);
                if (flag == 1)
                {
                    Response.Write("<script>alert('Product doesn't Exist');</script>");
                    return;
                }
                else if (flag == 2)
                {
                    Response.Write("<script> alert('Successfully Added the review'); </script>");
                    Response.Redirect("index.aspx");
                }
                clear();

            }
        }
        bool CheckBlankBox()
        {
            if (string.IsNullOrWhiteSpace(TextBox1.Text) || string.IsNullOrWhiteSpace(TextBox2.Text) || string.IsNullOrWhiteSpace(TextBox3.Text))
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
            TextBox1 = TextBox2 = TextBox3 = null;
        }
    }
}