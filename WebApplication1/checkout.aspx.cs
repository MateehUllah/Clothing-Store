using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

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
    }
}