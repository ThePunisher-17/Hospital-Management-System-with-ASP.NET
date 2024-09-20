using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Hospital_Management_System
{
    public partial class AdminDashboard : System.Web.UI.Page
    {
        SqlConnection conn;
        protected void Page_Load(object sender, EventArgs e)
        {
            conn = new SqlConnection("Data Source=DESKTOP-H5KI1PR;Integrated Security=True;Encrypt=False;");

            lblAdminName.Text = "Welcome, admin "+ Session["admin_id"].ToString();

            //for Doctors count
            string query = "select count(*) from Doctor_Details";
            conn.Open();
            using (SqlCommand cmd = new SqlCommand(query, conn))
            {

            SqlDataReader reader = cmd.ExecuteReader();
            while (reader.Read())
                {
                    lblDoctorsCount.Text = reader.GetValue(0).ToString();
                }
            }
            conn.Close();

            //for appointment count
            //for total earning
            query = "select count(*) from Appointments";
            conn.Open();
            using (SqlCommand cmd = new SqlCommand(query, conn))
            {
                SqlDataReader reader = cmd.ExecuteReader();
                while (reader.Read())
                {
                    lblTodaysAppointments.Text = reader.GetValue(0).ToString();
                    //string s = reader.GetValue(0).ToString();
                    lblTotalPayments.Text = "Rs "+ int.Parse(reader.GetValue(0).ToString()) * 500 ;
                }
            }
            conn.Close();

            //Displaying data in GridView for doctors
            query = "select * from Doctor_Details";
            conn.Open();
            using (SqlCommand cmd = new SqlCommand(query, conn))
            {
                SqlDataReader reader = cmd.ExecuteReader();

                gvDoctors.DataSource = reader;
                gvDoctors.DataBind();
            }
            conn.Close();
        }

        protected void btnViewPatients_Click(object sender, EventArgs e)
        {
            string query = "select * from PatientDetails";
            conn.Open();
            using (SqlCommand cmd = new SqlCommand(query, conn))
            {
                SqlDataReader reader = cmd.ExecuteReader();

                gvPatients.DataSource = reader;
                gvPatients.DataBind();
            }
            conn.Close();

        }

        protected void btnAddDoctor_Click(object sender, EventArgs e)
        {
            Response.Redirect("AddDoctor.aspx");
        }

        public void btnLogout_Click(object sender, EventArgs e)
        {
            Response.Redirect("Admin_login.aspx");
        }
    }
}