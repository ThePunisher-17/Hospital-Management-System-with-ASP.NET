using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace Hospital_Management_System
{
    public partial class Patient_Login : System.Web.UI.Page
    {
        SqlConnection conn;

        protected void Page_Load(object sender, EventArgs e)
        {
            conn = new SqlConnection("Data Source=DESKTOP-H5KI1PR;Integrated Security=True;Encrypt=True;");
        }
        private bool verify()
        {
            //
            return true;
        }
        public void btnLogin_Click(object sender, EventArgs e)
        {
            verify();
        }
        public void btnDoctorLogin_Click(object sender, EventArgs e)
        {
            Response.Redirect("Doctor_login.aspx");
        }
        public void toForgotPassword_clicked(object sender, EventArgs e)
        {
            Response.Redirect("Forgotpassword.aspx");
        }
    }
}