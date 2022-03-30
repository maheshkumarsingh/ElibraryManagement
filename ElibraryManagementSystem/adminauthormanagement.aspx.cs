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
    public partial class adminauthormanagement : System.Web.UI.Page
    {
        public static string connectionString = ConfigurationManager.
            ConnectionStrings["SQLConnection"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
            GridView1.DataBind();

        }

        //add
        public void Button1_Click(object sender, EventArgs e)
        {
            try
            {
                if (checkIfAuthorExists())
                    Response.Write("<script>alert('Author already exists'); </script>");
                else
                {
                    if(AddAuthor()>=1)
                        Response.Write("<script>alert('Author Added'); </script>");
                         
                }
            }
            catch (Exception ex)
            {
                throw;
            }
        }
        //update

        protected void Button2_Click(object sender, EventArgs e)
        {
            try
            {
                if (checkIfAuthorExists())
                {
                    if (UpdateAuthor() >= 1)
                        Response.Write("<script>alert('Author Updated'); </script>");
                }else
                    Response.Write("<script>alert('Author doesnot exists'); </script>");
                
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }
        //delete
        protected void Button3_Click(object sender, EventArgs e)
        {
            try
            {
                if (checkIfAuthorExists())
                {
                    if (DeleteAuthor() >= 1)
                        Response.Write("<script>alert('Author Deleted'); </script>");
                }
                else
                    Response.Write("<script>alert('Author doesnot exists'); </script>");

            }
            catch (Exception ex)
            {
                throw ex;
            }
        }

        public bool checkIfAuthorExists()
        {
            try
            {
                SqlConnection sqlConnection = new SqlConnection(connectionString);
                if (sqlConnection.State == ConnectionState.Closed)
                    sqlConnection.Open();

                string sqlQuery = "select * from author_master_tbl where author_id = '"
                    + AuthorID.Text.Trim() + "';";
                SqlCommand sqlCommand = new SqlCommand(sqlQuery, sqlConnection);

                SqlDataAdapter sqlDataAdapter = new SqlDataAdapter(sqlCommand);

                DataTable dataTable = new DataTable();
                sqlDataAdapter.Fill(dataTable);

                if (dataTable.Rows.Count >= 1)
                    return true;
                else
                    return false;
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('"+ex.Message+"'); </script>");

                throw ex;
            }
        }

        public int AddAuthor()
        {
            SqlConnection sqlConnection = new SqlConnection(connectionString);
            if (sqlConnection.State == ConnectionState.Closed)
                sqlConnection.Open();

            string sqlQuery = "insert into author_master_tbl (author_id, author_name)" +
                " values (@author_id, @author_name);";
            SqlCommand sqlCommand = new SqlCommand(sqlQuery,sqlConnection);

            sqlCommand.Parameters.AddWithValue("@author_id", AuthorID.Text.Trim());
            sqlCommand.Parameters.AddWithValue("@author_name", AuthorName.Text.Trim());

            int i = sqlCommand.ExecuteNonQuery();
            sqlConnection.Close();
            clearForm();
            if (i>= 1)
                return i;
            else
            return 0;

            GridView1.DataBind();
        }

        public int UpdateAuthor()
        {
            SqlConnection sqlConnection = new SqlConnection(connectionString);
            if (sqlConnection.State == ConnectionState.Closed)
                sqlConnection.Open();

            string sqlQuery = "update author_master_tbl set author_name = @author_name" +
                " where author_id = @author_id";
            SqlCommand sqlCommand = new SqlCommand(sqlQuery, sqlConnection);

            sqlCommand.Parameters.AddWithValue("@author_name", AuthorName.Text.Trim());
            sqlCommand.Parameters.AddWithValue("@author_id", AuthorID.Text.Trim());

            int i = sqlCommand.ExecuteNonQuery();
            sqlConnection.Close();
            clearForm();
            GridView1.DataBind();

            if (i >= 1)
                return 1;
            else
                return 0;
        }

        public int DeleteAuthor()
        {
            SqlConnection sqlConnection = new SqlConnection(connectionString);
            if (sqlConnection.State == ConnectionState.Closed)
                sqlConnection.Open();

            string sqlQuery = "delete author_master_tbl " +
                " where author_id = @author_id";
            SqlCommand sqlCommand = new SqlCommand(sqlQuery, sqlConnection);

            sqlCommand.Parameters.AddWithValue("@author_id", AuthorID.Text.Trim());

            int i = sqlCommand.ExecuteNonQuery();
            sqlConnection.Close();
            clearForm();
            GridView1.DataBind();

            if (i >= 1)
                return 1;
            else
                return 0;
        }

        public void clearForm()
        {
            AuthorID.Text = "";
            AuthorName.Text = "";
        }
    }
}