using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ElibraryManagementSystem
{
    public partial class Site1 : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                if (Session["role"]==null)
                {
                    LinkButtonUserLogin.Visible = true;
                    LinkButtonSignUp.Visible = true;
                    LinkButtonLogOut.Visible = false;
                    LinkButtonHelloUser.Visible = false;

                    LinkButtonAdminLogin.Visible = true;
                    LinkButtonAuthor.Visible = false;
                    LinkButtonPublisher.Visible = false;
                    LinkButtonBookInventory.Visible = false;
                    LinkButtonBookIsuing.Visible = false;
                    LinkButtonMemberManagement.Visible = false; 
                }
                else if (Session["role"].Equals("user"))
                {
                    LinkButtonUserLogin.Visible = false;
                    LinkButtonSignUp.Visible = false;
                    LinkButtonLogOut.Visible = true;
                    LinkButtonHelloUser.Visible = true;
                    LinkButtonHelloUser.Text = "Hello "+Session["username"].ToString();

                    LinkButtonAdminLogin.Visible = true;
                    LinkButtonAuthor.Visible = false;
                    LinkButtonPublisher.Visible = false;
                    LinkButtonBookInventory.Visible = false;
                    LinkButtonBookIsuing.Visible = false;
                    LinkButtonMemberManagement.Visible = false;
                }
                else if (Session["role"].Equals("admin"))
                {
                    LinkButtonUserLogin.Visible = false;
                    LinkButtonSignUp.Visible = false;
                    LinkButtonLogOut.Visible = true;
                    LinkButtonHelloUser.Visible = true;
                    LinkButtonHelloUser.Text = "Hello Admin";

                    LinkButtonAdminLogin.Visible = false;
                    LinkButtonAuthor.Visible = true;
                    LinkButtonPublisher.Visible = true;
                    LinkButtonBookInventory.Visible = true;
                    LinkButtonBookIsuing.Visible = true;
                    LinkButtonMemberManagement.Visible = true;
                }


            }
            catch (Exception ex)
            {

                throw ex; 
            }
        }

        protected void LinkButtonAdminLogin_Click(object sender, EventArgs e)
        {
            Response.Redirect("adminLogin.aspx");
        }

        protected void LinkButtonAuthor_Click(object sender, EventArgs e)
        {
            Response.Redirect("adminauthormanagement.aspx");

        }

        protected void LinkButtonPublisher_Click(object sender, EventArgs e)
        {
            Response.Redirect("adminpublishermanagement.aspx");
        }

        protected void LinkButtonBookInventory_Click(object sender, EventArgs e)
        {
            Response.Redirect("adminbookinventory.aspx");
        }

        protected void LinkButtonBookIsuing_Click(object sender, EventArgs e)
        {
            Response.Redirect("adminbookissuing.aspx");

        }

        protected void LinkButtonMemberManagement_Click(object sender, EventArgs e)
        {
            Response.Redirect("adminmembermanagement.aspx");
        }

        protected void LinkButtonViewBooks_Click(object sender, EventArgs e)
        {
            Response.Redirect("adminbookinventory.aspx");
        }

        protected void LinkButtonUserLogin_Click(object sender, EventArgs e)
        {
            Response.Redirect("userlogin.aspx");
        }

        protected void LinkButtonSignUp_Click(object sender, EventArgs e)
        {
            Response.Redirect("usersignup.aspx");
        }

        protected void LinkButtonLogOut_Click(object sender, EventArgs e)
        {
            Session["username"] = null;
            Session["fullname"] = null;
            Session["role"] = null;
            Session["status"] = null;
            LinkButtonUserLogin.Visible = true;
            LinkButtonSignUp.Visible = true;
            LinkButtonLogOut.Visible = false;
            LinkButtonHelloUser.Visible = false;

            LinkButtonAdminLogin.Visible = true;
            LinkButtonAuthor.Visible = false;
            LinkButtonPublisher.Visible = false;
            LinkButtonBookInventory.Visible = false;
            LinkButtonBookIsuing.Visible = false;
            LinkButtonMemberManagement.Visible = false;
            Response.Redirect("HomePage.aspx");
        }
    }
}