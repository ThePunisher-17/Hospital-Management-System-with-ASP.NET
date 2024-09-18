using System;
using System.Data.SqlClient;

namespace Hospital_Management_System
{
    public partial class ForgotPassword : System.Web.UI.Page
    {
        protected void btnResetPassword_Click(object sender, EventArgs e)
        {
            string name = txtName.Text;
            string email = txtEmail.Text;
            int age;

            if (int.TryParse(txtAge.Text, out age))
            {
                // Logic to validate name, age, and email against the database
                using (SqlConnection conn = new SqlConnection("your_connection_string"))
                {
                    conn.Open();
                    string query = "SELECT COUNT(*) FROM Patients WHERE Name = @Name AND Age = @Age AND Email = @Email";
                    SqlCommand cmd = new SqlCommand(query, conn);
                    cmd.Parameters.AddWithValue("@Name", name);
                    cmd.Parameters.AddWithValue("@Age", age);
                    cmd.Parameters.AddWithValue("@Email", email);

                    int count = (int)cmd.ExecuteScalar();

                    if (count > 0)
                    {
                        // Here, you can proceed to send a reset password link or generate a new password
                        // For demonstration, we'll just show a success message
                        Response.Write("<script>alert('A password reset link has been sent to your registered email.');</script>");
                    }
                    else
                    {
                        Response.Write("<script>alert('Invalid details. Please check your name, age, and email.');</script>");
                    }
                }
            }
            else
            {
                Response.Write("<script>alert('Please enter a valid age.');</script>");
            }
        }
    }
}
