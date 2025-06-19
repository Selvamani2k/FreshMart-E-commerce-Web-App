using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Net.Mail;
using System.Net;


namespace Project_718
{
    public partial class MailSending : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string fromMail = "12selvamani47@gmail.com";
            string fromPassword = "ijio scwm pokn zhca";
            MailMessage message = new MailMessage();
            message.From = new MailAddress(fromMail);
            message.Subject = "FreshMart";

            message.To.Add(new MailAddress(TextBox1.Text));
            message.Body = "<html><body> "  +"Greetings from FreshMart"+ " </body></html>";
            message.IsBodyHtml = true;

            var smtpclient = new SmtpClient("smtp.gmail.com")
            {
                Port = 587,
                Credentials = new NetworkCredential(fromMail, fromPassword),
                EnableSsl = true,
            };
            smtpclient.Send(message);

        }
    }
}