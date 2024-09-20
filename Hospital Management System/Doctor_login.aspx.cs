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
        TextBox AdminId, AdminPassword;
        SqlConnection conn;
        protected void Page_Load(object sender, EventArgs e)
        {
            conn = new SqlConnection("Data Source=DESKTOP-H5KI1PR;Integrated Security=True;Encrypt=False;");
        }
        public bool verify()
        {
            string DoctorId, Password, query;
            DoctorId = txtDoctorId.Text.Trim();
            Password = txtPassword.Text.Trim();

            query = "select * from Doctor_Details where DoctorId=@DoctorId and Password=@Password";
            SqlCommand cmd = new SqlCommand(query, conn);
            cmd.Parameters.AddWithValue("@DoctorId", DoctorId);
            cmd.Parameters.AddWithValue("@Password", Password);

            conn.Open();    
            SqlDataReader reader = cmd.ExecuteReader();

            while (reader.Read())
            {
                Session["DoctorId"] = reader["DoctorId"].ToString();
                Session["DoctorName"] = reader["Name"].ToString();
                return true;
            }

            return false;
        }
        public void btnLogin_Click(object sender, EventArgs e)
        {
            if (verify())
            {
                Response.Write("<script>alert('Login Successful');</script>");
                Response.Redirect("DoctorDashboard.aspx");
            }
            else
            {
                Response.Write("<script>alert('Invalid Credentials');</script>");
            }
        }
    }
}