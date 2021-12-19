using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace WebApplication1.DAL
{
    public class myDal
    {
        private static readonly string strcon = System.Configuration.ConfigurationManager.ConnectionStrings["con"].ConnectionString;

        public int SignUP(string FName, string LName, string Email, string Pno, string Pass)
        {
            int flag = 0;
            SqlConnection con = new SqlConnection(strcon);
            if (con.State == ConnectionState.Closed)
            {
                con.Open();
            }
            SqlCommand cmd;
            try
            {
                cmd = new SqlCommand("SignIn", con);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@First_Name", FName);
                cmd.Parameters.AddWithValue("@Last_Name", LName);
                cmd.Parameters.AddWithValue("@Email", Email);
                cmd.Parameters.AddWithValue("@MobileNo", Pno);
                cmd.Parameters.AddWithValue("@Pass", Pass);
                cmd.ExecuteNonQuery();
                flag = 2;
            }
            catch (Exception ex)
            {
                flag = 1;
                return flag;
            }
            finally
            {
                con.Close();
            }

            return flag;
        }

        public string Login(string Email, string Pass)
        {
            SqlConnection con = new SqlConnection(strcon);
            if (con.State == ConnectionState.Closed)
            {
                con.Open();
            }
            string foundName = "";
            SqlCommand cmd;
            try
            {
                cmd = new SqlCommand("Login_", con);
                cmd.CommandType = CommandType.StoredProcedure;

                cmd.Parameters.AddWithValue("@Email", Email);
                cmd.Parameters.AddWithValue("@Password", Pass);
                foundName = Convert.ToString(cmd.ExecuteScalar());

            }
            catch (Exception ex)
            {
                Console.WriteLine("Sql Error" + ex.Message);
            }
            finally
            {
                con.Close();
            }
            return foundName;
        }
        public int AddProduct(string PID, string PNAME, string Price, string path,string Description,string Quantity)
        {
            int flag = 0;
            SqlConnection con = new SqlConnection(strcon);
            if (con.State == ConnectionState.Closed)
            {
                con.Open();
            }
            SqlCommand cmd;
            try
            {
                int price = Int16.Parse(Price);
                int Quan= Int16.Parse(Quantity);
                cmd = new SqlCommand("AddProduct_", con);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@ProductID", PID);
                cmd.Parameters.AddWithValue("@ProductName", PNAME);
                cmd.Parameters.AddWithValue("@Price", price);
                cmd.Parameters.AddWithValue("@imgpath", path);
                cmd.Parameters.AddWithValue("@Quantity",Quan);
                cmd.Parameters.AddWithValue("@Description", Description);
                cmd.ExecuteNonQuery();
                flag = 2;
            }
            #pragma warning disable CS0168 // Variable is declared but never used
            catch (Exception ex)
            #pragma warning restore CS0168 // Variable is declared but never used
            {
                flag = 1;
                return flag;
            }
            finally
            {
                con.Close();
            }
            return flag;
        }
        public int UpdateProduct(string PID, string PNAME, string Price, string path,string description,string Quantity)
        {
            int flag = 0;
            SqlConnection con = new SqlConnection(strcon);
            if (con.State == ConnectionState.Closed)
            {
                con.Open();
            }
            SqlCommand cmd;
            try
            {
                int price = Int16.Parse(Price);
                int Quan= Int16.Parse(Quantity);
                cmd = new SqlCommand("UpdateProduct", con);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@ProductID", PID);
                cmd.Parameters.AddWithValue("@ProductName", PNAME);
                cmd.Parameters.AddWithValue("@Price", Price);
                cmd.Parameters.AddWithValue("@imgpath", path);
                cmd.Parameters.AddWithValue("@Quantity", Quan);
                cmd.Parameters.AddWithValue("@Description",description);
                cmd.ExecuteNonQuery();
                flag = 2;
            }
            #pragma warning disable CS0168 // Variable is declared but never used
            catch (Exception ex)
            #pragma warning restore CS0168 // Variable is declared but never used
            {
                flag = 1;
                return flag;
            }
            finally
            {
                con.Close();
            }

            return flag;
        }
        public int RemoveProduct_(string PID)
        {
            int flag = 0;
            SqlConnection con = new SqlConnection(strcon);
            if (con.State == ConnectionState.Closed)
            {
                con.Open();
            }
            SqlCommand cmd;
            try
            {

                cmd = new SqlCommand("RemoveProduct", con);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@ProductID", PID);
                cmd.ExecuteNonQuery();
                flag = 2;
            }
            #pragma warning disable CS0168 // Variable is declared but never used
            catch (Exception ex)
            #pragma warning restore CS0168 // Variable is declared but never used
            {
                flag = 1;
                return flag;
            }
            finally
            {
                con.Close();
            }
            return flag;
        }
        public int UpdateAccount(string FName, string LName, string Email, string Pno)
        {
            int flag = 0;
            SqlConnection con = new SqlConnection(strcon);
            if (con.State == ConnectionState.Closed)
            {
                con.Open();
            }
            SqlCommand cmd;
            try
            {
                cmd = new SqlCommand("UpdateAccount", con);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@First_Name", FName);
                cmd.Parameters.AddWithValue("@Last_Name", LName);
                cmd.Parameters.AddWithValue("@Email", Email);
                cmd.Parameters.AddWithValue("@MobileNo", Pno);
                cmd.ExecuteNonQuery();
                flag = 2;
            }
            catch (Exception ex)
            {
                flag = 1;
                return flag;
            }
            finally
            {
                con.Close();
            }

            return flag;
        }
        public int UpdatePassAccount(string Email,string NPass)
        {
            int flag = 0;
            SqlConnection con = new SqlConnection(strcon);
            if (con.State == ConnectionState.Closed)
            {
                con.Open();
            }
            SqlCommand cmd;
            try
            {
                cmd = new SqlCommand("UpdatePassAccount", con);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@Email", Email);
                cmd.Parameters.AddWithValue("@NPass", NPass);
                cmd.ExecuteNonQuery();
                flag = 2;
            }
            catch (Exception ex)
            {
                flag = 1;
                return flag;
            }
            finally
            {
                con.Close();
            }

            return flag;
        }
        public int CheckOut(string OrderNumber,string Fname, string Lname,string Email,string Mobile,string Address,string City,string Country,string State,string Zip,string Gtotal)
        {
            int flag = 0;
            SqlConnection con = new SqlConnection(strcon);
            if (con.State == ConnectionState.Closed)
            {
                con.Open();
            }
            SqlCommand cmd;
            try
            {
                int total = Int16.Parse(Gtotal);
                cmd = new SqlCommand("PlaceOrder", con);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@oid", OrderNumber);
                cmd.Parameters.AddWithValue("@First_Name", Fname);
                cmd.Parameters.AddWithValue("@Last_Name", Lname);
                cmd.Parameters.AddWithValue("@Email", Email);
                cmd.Parameters.AddWithValue("@MobileNo", Mobile);
                cmd.Parameters.AddWithValue("@Address", Address);
                cmd.Parameters.AddWithValue("@city", City);
                cmd.Parameters.AddWithValue("@country", Country);
                cmd.Parameters.AddWithValue("@state", State);
                cmd.Parameters.AddWithValue("@zip",Zip);
                cmd.Parameters.AddWithValue("@grandtotal",total);
                cmd.ExecuteNonQuery();
                flag = 2;
            }
            #pragma warning disable CS0168 // Variable is declared but never used
            catch (Exception ex)
            #pragma warning restore CS0168 // Variable is declared but never used
            {
               flag = 1;
               return flag;
            }
            finally
            {
                con.Close();
            }

            return flag;
        }
        public int DeleteAccount(string Email)
        {
            int flag = 0;
            SqlConnection con = new SqlConnection(strcon);
            if (con.State == ConnectionState.Closed)
            {
                con.Open();
            }
            SqlCommand cmd;
            try
            {
                cmd = new SqlCommand("DeleteAccount", con);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@Email", Email);
                cmd.ExecuteNonQuery();
                flag = 2;
            }
            catch (Exception ex)
            {
                flag = 1;
                return flag;
            }
            finally
            {
                con.Close();
            }

            return flag;
        }
        public int AddReview(string ProductID, string Email, string feedback)
        {
            int flag = 0;
            SqlConnection con = new SqlConnection(strcon);
            if (con.State == ConnectionState.Closed)
            {
                con.Open();
            }
            SqlCommand cmd;
            try
            {
                cmd = new SqlCommand("AddReview", con);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@ProductID",ProductID);
                cmd.Parameters.AddWithValue("@Email", Email);
                cmd.Parameters.AddWithValue("@Feedback", feedback);
                cmd.ExecuteNonQuery();
                flag = 2;
            }
            #pragma warning disable CS0168 // Variable is declared but never used
            catch (Exception ex)
            #pragma warning restore CS0168 // Variable is declared but never used
            {
                flag = 1;
                return flag;
            }
            finally
            {
                con.Close();
            }
            return flag;
        }
    }
    
}