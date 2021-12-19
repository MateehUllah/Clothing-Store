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
    public partial class admin : System.Web.UI.Page
    {
        string strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
       // string Guid = new Guid().ToString();
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void Add_Product_Click(object sender, EventArgs e)
        {
            myDal dal = new myDal();
            if (CheckBlankBox())
            {
                Response.Write("<script>alert('Kindly fill all the fields');</script>");
                return;
            }
            else
            {
                string ProductID = TextBox50.Text.Trim().ToString();
                string ProductName = TextBox51.Text.Trim().ToString();
                string Price = TextBox52.Text.Trim().ToString();
                string Path = CheckImageUpload();
                string descrip = TextBox1.Text.Trim().ToString();
                string Quantity = TextBox2.Text.Trim().ToString();
                int flag = dal.AddProduct(ProductID, ProductName, Price,Path,descrip,Quantity);
                if (flag == 1)
                {
                    Response.Write("<script>alert('Error');</script>");
                    return;
                }
                else if (flag == 2)
                {
                    Response.Write("<script>alert('Successfully Added the product');</script>");
                    Response.Redirect("Admin-panel.aspx");
                   
                }
                clearAddUpdate();

            }
        }

        protected void Update_Product_Click(object sender, EventArgs e)
        {
            myDal dal = new myDal();
            if (CheckBlankBox())
            {
                Response.Write("<script>alert('Kindly fill all the fields');</script>");
                return;
            }
            else
            {
                string ProductID = TextBox50.Text.Trim().ToString();
                string ProductName = TextBox51.Text.Trim().ToString();
                string Price = TextBox52.Text.Trim().ToString();
                string descrip = TextBox1.Text.Trim().ToString();
                string Path = CheckImageUpload();
                string Quantity = TextBox2.Text.Trim().ToString();
                int flag = dal.UpdateProduct(ProductID, ProductName, Price, Path,descrip, Quantity);
                if (flag == 1)
                {
                    Response.Write("<script>alert('Error');</script>");
                    return;
                }
                else if (flag == 2)
                {
                    Response.Redirect("Admin-panel.aspx");
                    Response.Write("<script>alert('Successfully Updated the product');</script>");
                }
                clearAddUpdate();

            }
        }
        protected void Remove_Product_Click(object sender, EventArgs e)
        {
            myDal dal = new myDal();
            if (CheckBlankBoxR())
            {
                Response.Write("<script>alert('Kindly fill all the fields');</script>");
                return;
            }
            else
            {
                string ProductID = TextBox53.Text.Trim().ToString();
                int flag = dal.RemoveProduct_(ProductID);
                if (flag == 1)
                {
                    Response.Write("<script>alert('Error');</script>");
                    return;
                }
                else if (flag == 2)
                {
                    Response.Write("<script>alert('Successfully Remove the pproduct');</script>");
                    Response.Redirect("Admin-panel.aspx");
                   
                }
                clearRemove();

            }
        }
        bool CheckBlankBox()
        {
            if (string.IsNullOrWhiteSpace(TextBox50.Text) || string.IsNullOrWhiteSpace(TextBox51.Text) || string.IsNullOrWhiteSpace(TextBox52.Text)|| string.IsNullOrWhiteSpace(TextBox1.Text) || string.IsNullOrWhiteSpace(TextBox2.Text))
            {
                return true;
            }
            else
            {
                return false;
            }
        }
        void clearAddUpdate()
        {
           TextBox1=TextBox2= TextBox50 = TextBox51 = TextBox52 = null;
        }
        protected string CheckImageUpload()
        {
            string SavePath = "";
            if (FileUpload1.HasFile)
            {
                string extension = System.IO.Path.GetExtension(FileUpload1.FileName);

                if (extension == ".jpg" || extension == ".png" || extension == ".jpeg")
                {
                    string path = Server.MapPath("product\\");
                    string imageName =FileUpload1.FileName;
                    FileUpload1.SaveAs(path + imageName);
                    SavePath = "product\\" + imageName;
                }
                else
                {
                    Response.Write("<script> alert('Please upload a valid image!'); </script>");
                }
            }

            return SavePath;
        }
        bool CheckBlankBoxR()
        {
            if (string.IsNullOrWhiteSpace(TextBox53.Text))
            {
                return true;
            }
            else
            {
                return false;
            }
        }
        void clearRemove()
        {
            TextBox53 = null;
        }
        protected void Logout_Click(object sender, EventArgs e)
        {
            Session["E-mail"] = null;
            Session["Password"] = null;
            Response.Redirect("index.aspx");
        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            Response.Redirect("index.aspx");
        }

        protected void LinkButton2_Click(object sender, EventArgs e)
        {
            Response.Redirect("product-list.aspx");
        }
    }
}