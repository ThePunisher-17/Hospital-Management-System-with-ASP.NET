using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Hospital_Management_System
{
    public partial class DoctorDashboard : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["DoctorName"] != null)
            {
                lblDoctorName.Text = Session["DoctorName"].ToString();
            }

            SqlConnection conn = new SqlConnection("Data Source=DESKTOP-H5KI1PR;Integrated Security=True;Encrypt=False;");
            string query = "select * from Appointments where DoctorName='" + lblDoctorName.Text + "'";

            SqlCommand cmd = new SqlCommand(query, conn);
            conn.Open();
            SqlDataReader reader = cmd.ExecuteReader();
            gvTodaysAppointments.DataSource = reader;
            gvTodaysAppointments.DataBind();
            conn.Close();
        }


        public void btnLogout_Click(object sender, EventArgs e)
        {
            Response.Redirect("Doctor_login.aspx");
        }
    }
}