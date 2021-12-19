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
    public partial class WebForm4 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string str = Session["E-mail"].ToString();
            TextBox3.Text = str;
            TextBox3.ReadOnly = true;
            TextBox3.Enabled = false;
            if (Session["Amount"]!=null)
            {
                string temp = Session["Amount"].ToString();
                TextBox10.Text = temp;
                TextBox10.ReadOnly = true;
                TextBox10.Enabled = false;
            }
            else
            {
                string temp1 = "cart is empty";
                TextBox10.Text = temp1;
                TextBox10.ReadOnly = true;
                TextBox10.Enabled = false;
            }
            findorderId();
        }
        public void findorderId()
        {
            string pass = "abcdefghijklmnopqrstuvwxyz1234567890";
            Random r = new Random();
            char[] mypass = new char[5];
            for(int i=0;i<5;i++)
            {
                mypass[i] = pass[(int)(35 * r.NextDouble())];
            }
            string orderID;
            orderID = "Order" + DateTime.Now.Hour.ToString() + DateTime.Now.Minute.ToString() + DateTime.Now.Second.ToString() + DateTime.Now.Day.ToString() + DateTime.Now.Month.ToString() + DateTime.Now.Year.ToString();
            TextBox9.Text = orderID;
            TextBox9.ReadOnly = true;
            TextBox9.Enabled = false;
        }

        protected void LinkButton1_Click(object sender, EventArgs e)//Placeorder
        {
            myDal dal = new myDal();
            if (Session["Amount"]==null)
            {
                Response.Write("<script>alert('Cart is Empty');</script>");
                return;
            }
            else 
            {
                if(CheckBlankBox())
                {
                    Response.Write("<script>alert('Kindly fill all Text Boxes');</script>");
                    return;
                }
                else
                {
                    string OrderNumber = TextBox9.Text.Trim().ToString();
                    string Fname = TextBox1.Text.Trim().ToString();
                    string Lname = TextBox2.Text.Trim().ToString();
                    string Email = TextBox3.Text.Trim().ToString();
                    string Mobile = TextBox4.Text.Trim().ToString();
                    string Address = TextBox5.Text.Trim().ToString();
                    string City = TextBox6.Text.Trim().ToString();
                    string Country = DropDownList1.SelectedValue.Trim().ToString();
                    string State = TextBox7.Text.Trim().ToString();
                    string Zip = TextBox8.Text.Trim().ToString();
                    string Gtotal = TextBox10.Text.Trim().ToString();

                    int flag = dal.CheckOut(OrderNumber, Fname, Lname, Email, Mobile, Address, City,Country, State, Zip, Gtotal);
                    if (flag == 1)
                    {
                        Response.Write("<script>alert('Error');</script>");
                        return;
                    }
                    else if (flag == 2)
                    {
                        Response.Write("<script> alert('Successfully Order Placed'); </script>");
                        clear();
                        Session["Amount"] = null;
                        Session["Buyitems"] = null;
                        Response.Redirect("index.aspx");
                    }
                }
            }
        }
        bool CheckBlankBox()
        {
            if (string.IsNullOrWhiteSpace(TextBox1.Text) || string.IsNullOrWhiteSpace(TextBox2.Text) ||
                string.IsNullOrWhiteSpace(TextBox3.Text) || string.IsNullOrWhiteSpace(TextBox4.Text) ||
                string.IsNullOrWhiteSpace(TextBox5.Text) || string.IsNullOrWhiteSpace(TextBox6.Text) || 
                string.IsNullOrWhiteSpace(TextBox7.Text) || string.IsNullOrWhiteSpace(TextBox8.Text) || 
                string.IsNullOrWhiteSpace(TextBox9.Text) || string.IsNullOrWhiteSpace(TextBox10.Text))
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
            TextBox1 = TextBox2 = TextBox5 = TextBox4 = TextBox6 = TextBox7 = TextBox8 = null;
        }

    }
}