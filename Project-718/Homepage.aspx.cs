using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Project_718
{
    public partial class Homepage : System.Web.UI.Page
    {
        

        

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("Signup.aspx");
        }

        protected void Page_Load(object sender, EventArgs e)
        {

        }
    }
}