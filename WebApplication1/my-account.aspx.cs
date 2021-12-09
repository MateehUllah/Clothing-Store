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
    public partial class WebForm6 : System.Web.UI.Page
    {
        string strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
            string str = Session["E-mail"].ToString();
            TextBox4.Text = str;
            TextBox4.ReadOnly = true;
            TextBox4.Enabled = false;
        }
        protected void LinkButton1_Click(object sender, EventArgs e)//Logout
        {
            Session["E-mail"] = null;
            Session["Password"] = null;
            Response.Redirect("index.aspx");
        }

        protected void LinkButton6_Click(object sender, EventArgs e)//Update
        {
            myDal dal = new myDal();
            if (CheckBlankBox())
            {
                Response.Write("<script>alert('Kindly fill all the fields');</script>");
                return;
            }
            else
            {
                string FirstName = TextBox1.Text.Trim().ToString();
                string LastName = TextBox2.Text.Trim().ToString();
                string Email = TextBox4.Text.Trim().ToString();
                string PhoneNo = TextBox3.Text.Trim().ToString();
                int flag = dal.UpdateAccount(FirstName, LastName, Email, PhoneNo);
                if (flag == 1)
                {
                    Response.Write("<script>alert('Error');</script>");
                    return;
                }
                else if (flag == 2)
                {
                    Response.Write("<script>alert('Updated Successfully!!!');</script>");
                    Response.Redirect("index.aspx");

                }
                clear();
            }
        }

        protected void LinkButton7_Click(object sender, EventArgs e)//Password Change
        {
            myDal dal = new myDal();
            if (CheckBlankBoxUP())
            {
                Response.Write("<script>alert('Kindly fill all the fields');</script>");
                return;
            }
            else
            {
       
                string NewPassword = TextBox5.Text.Trim().ToString();
                string ConfirmPassword = TextBox6.Text.Trim().ToString();
                string Email= Session["E-mail"].ToString();
                    if (NewPassword != ConfirmPassword)
                    {
                        Response.Write("<script>alert('New Password Not Matched');</script>");
                        return;
                    }
                    else
                    {
                        int flag = dal.UpdatePassAccount(Email, NewPassword);
                        if (flag == 1)
                        {
                            Response.Write("<script>alert('Error');</script>");
                            return;
                        }
                        else if (flag == 2)
                        {
                            Response.Write("<script>alert('Updated Successfully!!!');</script>");
                            Response.Redirect("index.aspx");

                        }
                        clearUP();
                    }
            }
        }

        protected void LinkButton8_Click(object sender, EventArgs e)//Delete
        {
            myDal dal = new myDal();
            string Email = Session["E-mail"].ToString();
            int flag = dal.DeleteAccount(Email);
            if (flag == 1)
            {
                Response.Write("<script>alert('Error');</script>");
                return;
            }
            else if (flag == 2)
            {
                Response.Write("<script>alert('Deleted Successfully!!!');</script>");
                Session["E-mail"] = null;
                Session["Password"] = null;
                Response.Redirect("index.aspx");

            }
        }
            bool CheckBlankBox()
            {
                if (string.IsNullOrWhiteSpace(TextBox1.Text) || string.IsNullOrWhiteSpace(TextBox2.Text) ||
                    string.IsNullOrWhiteSpace(TextBox3.Text) || string.IsNullOrWhiteSpace(TextBox4.Text))
                {
                    return true;
                }
                else
                {
                    return false;
                }
            }
        bool CheckBlankBoxUP()
        {
            if (string.IsNullOrWhiteSpace(TextBox5.Text) || string.IsNullOrWhiteSpace(TextBox6.Text))
            {
                return true;
            }
            else
            {
                return false;
            }
        }
        //Clearing all the boxes
        void clear()
        {
            TextBox1 = TextBox2 = TextBox3 = TextBox4 = null;
        }
        void clearUP()
        {
            TextBox5 = TextBox6 =null;
        }
    }
}