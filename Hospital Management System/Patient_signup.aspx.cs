using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Hospital_Management_System
{
    public partial class WebForm2 : System.Web.UI.Page
    {
        SqlConnection conn;
        protected void Page_Load(object sender, EventArgs e)
        {
            conn = new SqlConnection("Data Source=DESKTOP-H5KI1PR;Integrated Security=True;Encrypt=False;");
        }
        private bool verify()
        {
            string FullName = txtFullName.Text.Trim();
            string Email = txtEmail.Text.Trim();
            string Password = txtPassword.Text.Trim();
            string ConfirmPassword = txtConfirmPassword.Text.Trim();
            string age = txtAge.Text.Trim();
            string mobileNo = txtMobileNo.Text.Trim().ToString();
            string gender = ddlGender.SelectedValue.ToString();
            string diabetes_check = chkDiabetes.Checked ? "Yes" : "No";
            string hypertension = chkHypertension.Checked ? "Yes" : "No";
            string pre_disease="";
            if (diabetes_check == "Yes" && hypertension == "Yes")
            {
                pre_disease = "Diabetes, Hypertension";
            }
            else if(diabetes_check == "Yes")
            {
                pre_disease = "Diabetes";
            }
            else
            {
                pre_disease = "Hypertension";
            }

            if (Password == ConfirmPassword)
            {
                string query = "insert into PatientDetails values(@mobileNo, @FullName, @Email, @Password, @age, @gender, @pre_disease)";

                SqlCommand cmd = new SqlCommand(query, conn);
                cmd.Parameters.AddWithValue("@FullName", FullName);
                cmd.Parameters.AddWithValue("@Email", Email);
                cmd.Parameters.AddWithValue("@Password", Password);
                cmd.Parameters.AddWithValue("@age", age);
                cmd.Parameters.AddWithValue("@mobileNo", mobileNo);
                cmd.Parameters.AddWithValue("@gender", gender);
                cmd.Parameters.AddWithValue("@pre_disease", pre_disease);

                conn.Open();
                
                
                if (cmd.ExecuteNonQuery() > 0)
                {
                    Response.Write("<script>alert('Registration Successful');</script>");
                    Response.Redirect("Patient_Login.aspx");
                }
                else
                {
                    Response.Write("<script>alert('Registration Failed');</script>");
                }
            }
            else
            {
                Response.Write("<script>alert('Password and Confirm Password do not match');</script>");
            }

            conn.Close();
            return true;
        }



        public void btnRegister_Click(object sender, EventArgs e)
        {
            verify();
        }
    }
}