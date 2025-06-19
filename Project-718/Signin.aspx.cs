using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Runtime.Remoting.Messaging;

namespace Project_718
{
    public partial class AdminLogin : System.Web.UI.Page
    {
        SqlCommand cmd;
        SqlConnection cnn;
        SqlDataReader read;
        SqlDataAdapter adapter;
        string sql, output = "";
        string connectionstring;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {

            connectionstring = "Data Source=SELVA-COMP\\SQLEXPRESS;Initial Catalog=FreshMart;Persist Security Info=True;User ID=sa;Password=data";
            cnn = new SqlConnection(connectionstring);
            cnn.Open();
            sql = "select Email from Sample where Email='" + TextBox1.Text + "'and Password='" + TextBox2.Text + "'";
            cmd = new SqlCommand(sql, cnn);
            read = cmd.ExecuteReader();
            while(read.Read())
            {
                output += read.GetValue(0);
            }
            string useremail = TextBox1.Text;
            if (useremail != output)
            {
                Response.Write("<script>alert ('Invalid Username or Password')</script>");
                read.Close();
                cnn.Close();
            }
            else
            {
                Response.Write("<script>alert ('Logined in Successfully')</script>");
                read.Close();
                cnn.Close();
                
                useremail = TextBox1.Text;
                Session["Username"] = useremail;
                Response.Redirect("ProductsList.aspx");
            }
          //  Response.Redirect("ProductList.aspx");
        }
    }
}