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
    public partial class login : System.Web.UI.Page
    {
        string strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void Button_Login_Click(object sender, EventArgs e)
        {
            myDal dal = new myDal();

            string found = dal.Login(TextBox7.Text.Trim().ToString(), TextBox8.Text.Trim().ToString());

            if (found.Length > 0)
            {
               
                Session["E-mail"] = TextBox7.Text.Trim().ToString();
                Session["Password"] = TextBox7.Text.Trim().ToString();
                Response.Redirect("index.aspx");
            }
            else
            {
                Response.Write("<script>alert('Invalid credentials');</script>");
            }
        }
        protected void Button_SignUp_Click(object sender, EventArgs e)
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
                string Email = TextBox3.Text.Trim().ToString();
                string PhoneNo = TextBox4.Text.Trim().ToString();
                string Pass = TextBox5.Text.Trim().ToString();
                string RePass = TextBox6.Text.Trim().ToString();
                
                if (Pass != RePass)
                {
                    Response.Write("<script>alert('Password Not Matched');</script>");
                    return;
                }

                int flag = dal.SignUP(FirstName, LastName, Email,PhoneNo,Pass);
                if (flag == 1)
                {
                    Response.Write("<script>alert('Email already Exist:');</script>");
                    return;
                }
                else if (flag == 2)
                {
                    Response.Write("<script> alert('Successfully Signed Up. Login to enjoy more features:)'); </script>");
                    Response.Redirect("login.aspx");
                   
                }
                clear();
            }
        }

        bool CheckBlankBox()
        {
            if (string.IsNullOrWhiteSpace(TextBox1.Text) || string.IsNullOrWhiteSpace(TextBox2.Text) ||
                string.IsNullOrWhiteSpace(TextBox3.Text) || string.IsNullOrWhiteSpace(TextBox4.Text) ||
                string.IsNullOrWhiteSpace(TextBox5.Text) || string.IsNullOrWhiteSpace(TextBox6.Text))
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
            TextBox1 = TextBox2 = TextBox3 = TextBox4 = TextBox5 = TextBox6= null;
        }
    }
}