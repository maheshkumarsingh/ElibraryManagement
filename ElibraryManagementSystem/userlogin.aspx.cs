using System;
using System.Collections.Generic;
using System.Configuration;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

namespace ElibraryManagementSystem
{
    public partial class userlogin : System.Web.UI.Page
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

                string sqlQuery = "select * from member_master_tbl where member_id = '" +
                    textMemberID.Text.Trim()+"' and password = '"+textMemberPassword.Text.Trim()+"';";
                
                SqlCommand sqlCommand = new SqlCommand(sqlQuery, sqlConnection);

                SqlDataReader sqlDataReader = sqlCommand.ExecuteReader(CommandBehavior.SingleRow);

                if (sqlDataReader.HasRows)
                {
                    sqlDataReader.Read();

                    Response.Write("<script>alert('"+sqlDataReader.GetValue(0).ToString()+"')</script>");
                    Session["username"] = sqlDataReader.GetValue(8).ToString();
                    Session["fullname"] = sqlDataReader.GetValue(0).ToString();
                    Session["role"] = "user";
                    Session["status"] = sqlDataReader.GetValue(10).ToString();
                    Response.Redirect("HomePage.aspx");
                }
                else
                    Response.Write("<script>alert('Invalid Credentials')</script>");


            }
            catch (Exception ex)
            {

                Response.Write("<script>alert('"+ex.Message+"'); </script>");
            }
        }
    }
}