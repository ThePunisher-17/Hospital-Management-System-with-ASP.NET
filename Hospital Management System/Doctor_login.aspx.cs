using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Hospital_Management_System
{
    public partial class WebForm3 : System.Web.UI.Page
    {
        SqlConnection conn;
        protected void Page_Load(object sender, EventArgs e)
        {
            conn = new SqlConnection("Data Source=DESKTOP-H5KI1PR;Integrated Security=True;Encrypt=True;Trust Server Certificate=True;");
        }
        public bool verify()
        {
            //
            return true;
        }
        public void btnLogin_Click(object sender, EventArgs e)
        {
            verify();
            Response.Redirect("DoctorDashboard.aspx");
        }
    }
}