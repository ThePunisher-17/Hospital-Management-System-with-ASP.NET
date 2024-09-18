using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Hospital_Management_System
{
    public partial class Admin_login : System.Web.UI.Page
    {
        SqlConnection conn; 
        protected void Page_Load(object sender, EventArgs e)
        {
            conn = new SqlConnection("Data Source=DESKTOP-H5KI1PR;Integrated Security=True;Encrypt=True;");
        }

        protected bool verify()
        {
            //

            return true;
        }
        public void btnLogin_clicked(object sender, EventArgs e)
        {
            verify();
            if (verify())
            {
                Response.Redirect("AdminDashboard.aspx");
            }
            else
            {
                Response.Redirect("Admin_login.aspx");
                Response.Write("<script>alert('Invalid Credentials');</script>");
            }
        }
    }
}