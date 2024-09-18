using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Hospital_Management_System
{
    public partial class Site1 : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        public void btnSignup_Click(object sender, EventArgs e)
        {
            Response.Redirect("Patient_signup.aspx");
        }
        public void btnLogin_Click(object sender, EventArgs e)
        {
            Response.Redirect("Patient_Login.aspx");
        }
    }
}