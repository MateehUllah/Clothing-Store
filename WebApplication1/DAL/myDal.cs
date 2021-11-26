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

        public int SignUP(string FName, string LName, string Email,string Pno, string Pass)
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
    }
}