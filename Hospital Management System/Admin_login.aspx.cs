using System;
using System.Data.SqlClient;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Hospital_Management_System
{
    public partial class Admin_login : System.Web.UI.Page
    {
        string adminId, hospitalCode, admin_Password;
        ContentPlaceHolder content;

        SqlConnection conn; 
        protected void Page_Load(object sender, EventArgs e)
        {
            conn = new SqlConnection("Data Source=DESKTOP-H5KI1PR;Integrated Security=True;Encrypt=False;");
            content = (ContentPlaceHolder)this.FindControl("ContentPlaceHolder1");
        }

        protected bool verify()
        {
            //Console.WriteLine(adminId.Text.ToString() + hospitalCode.Text.ToString() + admin_Password.Text.ToString());
            

            if (adminId != null || hospitalCode != null || admin_Password != null)
            {
                string query = "select * from Admin_login where adminId=@adminId and hospitalCode=@hospitalCode and adminPassword=@adminPassword";
                SqlCommand cmd = new SqlCommand(query, conn);
                cmd.Parameters.AddWithValue("@adminId", adminId);
                cmd.Parameters.AddWithValue("@hospitalCode", hospitalCode);
                cmd.Parameters.AddWithValue("@adminPassword", admin_Password);

                conn.Open();
                SqlDataReader reader = cmd.ExecuteReader();
                String adminId_db= "", hospitalCode_db = "", admin_Password_db = "";

                    while (reader.Read())
                    {
                        adminId_db = reader["adminId"].ToString();
                        hospitalCode_db = reader["hospitalCode"].ToString();
                        admin_Password_db = reader["adminPassword"].ToString();
                    }
                        Session["admin_id"] = adminId_db;

                    if (adminId.ToString() == adminId_db && hospitalCode.ToString() == hospitalCode_db && admin_Password.ToString() == admin_Password_db)
                    {
                        return true;
                    }

            }
            return false;
        }
        public void btnLogin_clicked(object sender, EventArgs e)
        {
            adminId = txtAdminId.Text.Trim();
            hospitalCode =txtHospitalCode.Text.Trim();
            admin_Password = adminPassword.Text.Trim();
            Console.WriteLine(admin_Password);
            if (verify())
            {
                Response.Redirect("AdminDashboard.aspx");
            }
            else
            {
                Response.Write("<script>alert('Invalid Credentials');</script>");
                //Response.Redirect("Admin_login.aspx");
            }
        }
    }
}