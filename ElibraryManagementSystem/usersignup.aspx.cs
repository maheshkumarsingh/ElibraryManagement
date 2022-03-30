using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data.SqlClient;
using System.Data;

namespace ElibraryManagementSystem
{
    public partial class usersignup : System.Web.UI.Page
    {

        public static string connectionString = ConfigurationManager.
            ConnectionStrings["SQLConnection"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        //signup button
        public void Button1_Click(object sender, EventArgs e)
        {
            if (checMemberExist())
            {
                    Response.Write("<script>alert('Member already exists'); </script>");
            }
            else
            {
                signUpMember();
            }

        }

        public bool checMemberExist()
        {
            try
            {
                SqlConnection sqlConnection = new SqlConnection(connectionString);
                if (sqlConnection.State == ConnectionState.Closed)
                    sqlConnection.Open();


                string sqlQuery = "select * from member_master_tbl where " +
                    "member_id = '"+ TextBox7.Text.Trim()+"';";
                SqlCommand sqlCommand = new SqlCommand(sqlQuery, sqlConnection);

                SqlDataAdapter sqlDataAdapter = new SqlDataAdapter(sqlCommand);

                DataTable dataTable = new DataTable();

                sqlDataAdapter.Fill(dataTable);

                if (dataTable.Rows.Count > 0)
                    return true;
                else
                    return false;
            }
            catch (Exception)
            {
                throw;
            }

            
        }
        public void signUpMember()
        {
            try
            {
                SqlConnection sqlConnection = new SqlConnection(connectionString);
                if (sqlConnection.State == ConnectionState.Closed)
                    sqlConnection.Open();


                string sqlQuery = "insert into member_master_tbl " +
                    "(full_name, dob, contact_no, email, state, city, pincode," +
                    "full_address, member_id, password, account_status) values" +
                    "(@full_name, @dob, @contact_no, @email, @state, @city, @pincode," +
                    "@full_address, @member_id, @password, @account_status)";
                SqlCommand sqlCommand = new SqlCommand(sqlQuery, sqlConnection);

                sqlCommand.Parameters.AddWithValue("@full_name", TextBox1.Text.Trim());
                sqlCommand.Parameters.AddWithValue("@dob", TextBox2.Text.Trim());
                sqlCommand.Parameters.AddWithValue("@contact_no", TextBox3.Text.Trim());
                sqlCommand.Parameters.AddWithValue("@email", TextBox4.Text.Trim());
                sqlCommand.Parameters.AddWithValue("@state", DropDownList1.SelectedItem.Value);
                sqlCommand.Parameters.AddWithValue("@city", TextBox5.Text.Trim());
                sqlCommand.Parameters.AddWithValue("@pincode", TextBox6.Text.Trim());
                sqlCommand.Parameters.AddWithValue("@full_address", TextAddress.Text.Trim());
                sqlCommand.Parameters.AddWithValue("@member_id", TextBox7.Text.Trim());
                sqlCommand.Parameters.AddWithValue("@password", TextBox8.Text.Trim());
                sqlCommand.Parameters.AddWithValue("@account_status", "pending");

                int i = sqlCommand.ExecuteNonQuery();
                sqlConnection.Close();
                if (i >= 0)
                    Response.Write("<script>alert('User Added Successfully'); </script>");


            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "'); </script>");
            }

        }
    }
}