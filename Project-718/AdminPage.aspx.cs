using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Project_718
{
    public partial class AdminPage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string username = "Selvamani";
            string password = "2004selva";
            if(TextBox1.Text==username && TextBox2.Text == password)
            {
                Response.Write("<script>alert ('Logined in Successfully')</script>");

            }
            else
            {
                Response.Write("<script>alert ('Incorrect Password or Username')</script>");

            }
        }
    }
}