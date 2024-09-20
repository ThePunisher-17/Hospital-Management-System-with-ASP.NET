using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Xml.Linq;

namespace Hospital_Management_System
{
    public partial class Patient_Login : System.Web.UI.Page
    {
        SqlConnection conn;

        protected void Page_Load(object sender, EventArgs e)
        {
            conn = new SqlConnection("Data Source=DESKTOP-H5KI1PR;Integrated Security=True;Encrypt=False;");
        }
        private bool verify()
        {
            string mobile, password, query, mobile_db="", password_db="", name_db="";
            mobile = MobileNo.Text.ToString();
            password = txtPassword.Text.ToString();



            query = "select * from PatientDetails where mobileNo=@mobile and password=@password";
            SqlCommand cmd = new SqlCommand(query, conn);
            cmd.Parameters.AddWithValue("@mobile", mobile);
            cmd.Parameters.AddWithValue("@password", password);


            conn.Open();
            SqlDataReader reader = cmd.ExecuteReader();
            while (reader.Read())
            {
                mobile_db = reader["MobileNo"].ToString();
                password_db = reader["Password"].ToString();
                name_db = reader["FullName"].ToString();
            }
            Session["name_db"] = name_db;
            if (mobile == mobile_db && password == password_db)
            {
                Response.Write("<script>alert('"+name_db+"');</script>");
                Response.Redirect("PatientPanel.aspx");
            }
            else
            {
                Response.Write("<script>alert('Invalid Credentials');</script>");
            }
            return false;
            
        }
        public void btnLogin_Click(object sender, EventArgs e)
        {
            if (verify())
            {
                Response.Redirect("Patient_Dashboard.aspx");
            }
            else
            {
                Response.Write("<script>alert('Invalid Credentials');</script>");
            }
        }
        
        public void toForgotPassword_clicked(object sender, EventArgs e)
        {
            Response.Redirect("Forgotpassword.aspx");
        }

        public void btnDoctorLogin_Click(object sender, EventArgs e)
        {
            Response.Redirect("Doctor_login.aspx");
        }
    }
}