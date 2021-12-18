using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;

namespace WebApplication1
{
    public partial class WebForm2 : System.Web.UI.Page
    {

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                DataTable dt = new DataTable();
                DataRow dr;
                dt.Columns.Add("itemno");
                dt.Columns.Add("ProductID");
                dt.Columns.Add("ProductName");
                dt.Columns.Add("Price");
                if(Request.QueryString["id"]!=null)
                {
                    if(Session["Buyitems"]==null)
                    {
                        dr = dt.NewRow();
                        string strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
                        SqlConnection scon = new SqlConnection(strcon);
                        string myquery = "select ProductID,ProductName,Price from Product where ProductID=" + Request.QueryString["id"];
                        SqlCommand cmd = new SqlCommand();
                        cmd.CommandText = myquery;
                        cmd.Connection = scon;
                        SqlDataAdapter da = new SqlDataAdapter();
                        da.SelectCommand = cmd;
                        DataSet ds = new DataSet();
                        da.Fill(ds);
                        dr["itemno"] = 1;
                        dr["ProductID"] = ds.Tables[0].Rows[0]["ProductID"].ToString();
                        dr["ProductName"] = ds.Tables[0].Rows[0]["ProductName"].ToString();
                        dr["Price"] = ds.Tables[0].Rows[0]["Price"].ToString();
                        dt.Rows.Add(dr);
                        GridView1.DataSource = dt;
                        GridView1.DataBind();
                        Session["Buyitems"] = dt;

                        GridView1.FooterRow.Cells[2].Text = "Total Amount:";
                        GridView1.FooterRow.Cells[3].Text = getTotalamount().ToString() + "$";
                        Response.Redirect("cart.aspx");
                    }
                    else
                    {
                        dt = (DataTable)Session["Buyitems"];
                        dr = dt.NewRow();
                        int sr;
                        sr = dt.Rows.Count;
                        string strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
                        SqlConnection scon = new SqlConnection(strcon);
                        string myquery = "select ProductID,ProductName,Price from Product where ProductID=" + Request.QueryString["id"];
                        SqlCommand cmd = new SqlCommand();
                        cmd.CommandText = myquery;
                        cmd.Connection = scon;
                        SqlDataAdapter da = new SqlDataAdapter();
                        da.SelectCommand = cmd;
                        DataSet ds = new DataSet();
                        da.Fill(ds);
                        dr["itemno"] = sr + 1;
                        dr["ProductID"] = ds.Tables[0].Rows[0]["ProductID"].ToString();
                        dr["ProductName"] = ds.Tables[0].Rows[0]["ProductName"].ToString();
                        dr["Price"] = ds.Tables[0].Rows[0]["Price"].ToString();
                        dt.Rows.Add(dr);
                        GridView1.DataSource = dt;
                        GridView1.DataBind();
                        Session["Buyitems"] = dt;

                        GridView1.FooterRow.Cells[2].Text = "Total Amount:";
                        GridView1.FooterRow.Cells[3].Text = getTotalamount().ToString() + "$";
                        Response.Redirect("cart.aspx");
                    }
                }
                else
                {
                    dt = (DataTable)Session["Buyitems"];
                    GridView1.DataSource = dt;
                    GridView1.DataBind();

                    if(GridView1.Rows.Count>0)
                    {
                        GridView1.FooterRow.Cells[2].Text = "Total Amount:";
                        GridView1.FooterRow.Cells[3].Text=getTotalamount().ToString()+"$";
                    }

                }
            }

        }
        public int getTotalamount()
        {
            DataTable dt = new DataTable();
            dt = (DataTable)Session["Buyitems"];
            int rows = dt.Rows.Count;
            int i = 0;
            int total = 0;
            while(i<rows)
            {
                total = total + Convert.ToInt32(dt.Rows[i]["Price"].ToString());
                i++;

            }
            return total;
        }

        protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            DataTable dt = new DataTable();
            dt = (DataTable)Session["Buyitems"];
            for(int i=0;i<=dt.Rows.Count-1;i++)
            {
                int sr;
                int sr1;
                string qdata;
                string dtdata;
                sr = Convert.ToInt32(dt.Rows[i]["itemno"].ToString());
                TableCell cell = GridView1.Rows[e.RowIndex].Cells[0];
                qdata = cell.Text;
                dtdata = sr.ToString();
                sr1 = Convert.ToInt32(qdata);
                if(sr==sr1)
                {
                    dt.Rows[i].Delete();
                    dt.AcceptChanges();
                    break;
                }

            }
            for(int i=1;i<=dt.Rows.Count;i++)
            {
                dt.Rows[i - 1]["itemno"] = i;
                dt.AcceptChanges();
            }
            Session["Buyitems"] = dt;
            Response.Redirect("cart.aspx");
        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            Response.Redirect("product-list.aspx");
        }

        protected void LinkButton2_Click(object sender, EventArgs e)
        {

        }
    }
}