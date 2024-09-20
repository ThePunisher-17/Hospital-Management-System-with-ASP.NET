using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Hospital_Management_System
{
    public partial class PatientPanel : System.Web.UI.Page
    {
        SqlConnection conn;
        string mobile_no;
        protected void Page_Load(object sender, EventArgs e)
        {
            string name = Session["name_db"].ToString();
            if(name != null)
            {
                    Label1.Text = "Welcome, " + name;
            }

            conn = new SqlConnection("Data Source=DESKTOP-H5KI1PR;Integrated Security=True;Encrypt=False;");
            string query = "select Name, Speciality from Doctor_Details";

            using (SqlCommand cmd = new SqlCommand(query, conn))
            {
            conn.Open();
            SqlDataReader reader = cmd.ExecuteReader();

                ddlDoctors.DataSource = reader;
                ddlDoctors.DataTextField = "Name";
                ddlDoctors.DataValueField = "Name";
                ddlDoctors.DataBind();
            }
            conn.Close();
        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            string patientId, symptoms, doctor_name, query;
            patientId = "121";
            symptoms = txtSymptoms.Text.ToString();
            doctor_name = ddlDoctors.SelectedValue.ToString();

            query = "insert into Appointments (PatientId, DoctorName, VisitReason) values(@patientId, @doctor_name, @symptoms)";
            SqlCommand cmd = new SqlCommand(query, conn);
            cmd.Parameters.AddWithValue("@patientId", patientId);
            cmd.Parameters.AddWithValue("@doctor_name", doctor_name);
            cmd.Parameters.AddWithValue("@symptoms", symptoms);

            conn.Open();
            int n = cmd.ExecuteNonQuery();
            conn.Close();

            if (n > 0)
            {
                Response.Write("<script>alert('Appointment booked successfully!');</script>");
            }

        }
    }


}