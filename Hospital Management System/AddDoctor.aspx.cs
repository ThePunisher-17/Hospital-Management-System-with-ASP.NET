using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Hospital_Management_System
{
    public partial class AddDoctor : System.Web.UI.Page
    {
        SqlConnection conn;
        protected void Page_Load(object sender, EventArgs e)
        {
            conn = new SqlConnection("Data Source=DESKTOP-H5KI1PR;Integrated Security=True;Encrypt=False;");
        }
        public void btnSubmit_Click(object sender, EventArgs e)
        {
            string name, speciality, password1, password2, age, genders, mob;
            name = txtFullName.Text.ToString();
            speciality = txtSpecialization.Text.ToString();
            password1 = Password.Text.ToString(); 
            password2 = confPassword.Text.ToString();
            age = Age.ToString();
            genders = gender.SelectedValue.ToString();
            mob = mobile.Text.ToString();


            conn.Open();
            if(password1 == password2)
            {
                string query = "insert into Doctor_Details (Name, Speciality, Password, MobileNo, Age, Gender) values(@name, @speciality, @password1, @mobile, @age, @genders)";
                SqlCommand cmd = new SqlCommand(query, conn);
                cmd.Parameters.AddWithValue("@name", name);
                cmd.Parameters.AddWithValue("@speciality", speciality);
                cmd.Parameters.AddWithValue("@password1", password1);
                cmd.Parameters.AddWithValue("@mobile", mob);
                cmd.Parameters.AddWithValue("@age", age);
                cmd.Parameters.AddWithValue("@genders", genders);

                int n = cmd.ExecuteNonQuery();
                if (n > 0)
                    {
                        Response.Write("<script>alert('Doctor added successfully!');</script>");
                    }
                else
                    {
                        Response.Write("<script>alert('Doctor not added!');</script>");
                    }
            }
            else
            {
                Response.Write("<script>alert('Password did not match!');</script>");
            }
            conn.Close();

        }
    }
}