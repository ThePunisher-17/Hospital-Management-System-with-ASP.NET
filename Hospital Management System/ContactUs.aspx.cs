using System;
using System.Collections.Generic;
using System.Linq;
using System.Net.Mail;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Hospital_Management_System
{
    public partial class ContactUs : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            string name = txtName.Text;
            string email = txtEmail.Text;
            string message = txtMessage.Text;

            // Here you can add logic to send the message, for example:
            try
            {
                MailMessage mail = new MailMessage();
                mail.From = new MailAddress("info@hospitaloftheghost.com");
                mail.To.Add("info@hospitaloftheghost.com"); // Your email address
                mail.Subject = "Contact Us Message from " + name;
                mail.Body = $"Name: {name}\nEmail: {email}\nMessage:\n{message}";

                SmtpClient smtp = new SmtpClient("your_smtp_server");
                smtp.Port = 587; // or your SMTP port
                smtp.Credentials = new System.Net.NetworkCredential("your_username", "your_password");
                smtp.EnableSsl = true;

                smtp.Send(mail);

                // Optionally, show a success message
                Response.Write("<script>alert('Message sent successfully!');</script>");
            }
            catch (Exception ex)
            {
                // Handle the error
                Response.Write("<script>alert('Error sending message: " + ex.Message + "');</script>");
            }
        }
    }
}