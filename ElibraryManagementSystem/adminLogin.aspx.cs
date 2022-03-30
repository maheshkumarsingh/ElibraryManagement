using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ElibraryManagementSystem
{
    public partial class adminLogin : System.Web.UI.Page
    {
        public static string connectionString = ConfigurationManager.
            ConnectionStrings["SQLConnection"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            try
            {
                SqlConnection sqlConnection = new SqlConnection(connectionString);
                if (sqlConnection.State == ConnectionState.Closed)
                    sqlConnection.Open();

                string sqlQuery = "select * from admin_login_tbl where username = '" +
                    textAdminID.Text.Trim() + "' and password = '" + textAdminPassword.Text.Trim() + "';";

                SqlCommand sqlCommand = new SqlCommand(sqlQuery, sqlConnection);

                SqlDataReader sqlDataReader = sqlCommand.ExecuteReader
                    (CommandBehavior.SingleRow);

                if (sqlDataReader.HasRows)
                {
                    sqlDataReader.Read();

                    Response.Write("<script>alert('" + sqlDataReader.GetValue(0).ToString() + "')</script>");
                    Session["username"] = sqlDataReader.GetValue(0).ToString();
                    Session["fullname"] = sqlDataReader.GetValue(2).ToString();
                    Session["role"] = "admin";
                    Response.Redirect("HomePage.aspx");
                }
                else
                    Response.Write("<script>alert('Invalid Credentials')</script>");


            }
            catch (Exception ex)
            {

                Response.Write("<script>alert('" + ex.Message + "'); </script>");
            }

        }
    }
}