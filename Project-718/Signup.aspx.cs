using System;
using System.Collections.Generic;
using System.Linq;
using System.Data.SqlClient;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Runtime.Remoting.Messaging;
namespace Project_718
{
    public partial class Loginpage : System.Web.UI.Page
    {
        SqlCommand cmd;
        SqlConnection cnn;
        SqlDataAdapter adapter;
        string sql, output = "";
        string connectionstring;
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void Button1_Click1(object sender, EventArgs e)
        {
            #region 
            //string uname = "2004selvamani@gmail.com";
            //string pass = "123Selva";
            //string uname1 = "Raja";
            //string pass1 = "123Raja";
            //string uname2 = "Rahul";
            //string pass2 = "123Rahul";
            //if (TextBox1.Text == uname && TextBox2.Text == pass)
            //{
            //    Session["Username"] = uname;
            //    Response.Redirect("ProductsList.aspx");

            //}
            //else if (TextBox1.Text == uname1 && TextBox2.Text == pass1)
            //{
            //    Response.Redirect("ProductsList.aspx");

            //}
            //else if (TextBox1.Text == uname2 && TextBox2.Text == pass2)
            //{
            //    Response.Redirect("ProductsList.aspx");

            //}
            //connectionstring = "Data Source = SELVA - COMP\\SQLEXPRESS; Initial Catalog = FreshMart; Persist Security Info = True; User ID = sa; Password =data";
            //cnn = new SqlConnection(connectionstring);
            //cnn.Open();
            //Response.Write("connection established/n");
            //sql = "";
            //sql = "insert into login(email,password) values ('" + TextBox1.Text + "','" + TextBox2.Text  + "')";
            //cmd = new SqlCommand(sql, cnn);
            //adapter = new SqlDataAdapter();
            //adapter.InsertCommand = cmd;
            //adapter.InsertCommand.ExecuteNonQuery();
            //cmd = new SqlCommand(sql, cnn);
            //reader = cmd.ExecuteReader();
            //while (reader.Read())
            //{
            //    output += reader.GetValue(0) + "-" + reader.GetValue(1) + "</br>";

            //}
            //Response.Write(output);
            //reader.Close();
            //cnn.Close();

            //connectionstring = "Data Source=SELVA-COMP\\SQLEXPRESS;Initial Catalog=FreshMart;Persist Security Info=True;User ID=sa;Password=data ";
            //cnn = new SqlConnection(connectionstring);
            //cnn.Open();
            //Response.Write("connection established/n");
            //sql = "";
            //sql = "insert into login(email,password) values ('" + TextBox1.Text + "','" + TextBox2.Text  + "')";
            //cmd = new SqlCommand(sql, cnn);
            //adapter = new SqlDataAdapter();
            //adapter.InsertCommand = cmd;
            //adapter.InsertCommand.ExecuteNonQuery();
            //cmd = new SqlCommand(sql, cnn);
            //reader = cmd.ExecuteReader();
            //while (reader.Read())
            //{
            //    output += reader.GetValue(0) + "-" + reader.GetValue(1) + "</br>";

            //}
            //Response.Write(output);
            //reader.Close();
            //cnn.Close();



            //if (CheckBox1.Checked)
            //{
            connectionstring = "Data Source=SELVA-COMP\\SQLEXPRESS;Initial Catalog=FreshMart;Persist Security Info=True;User ID=sa;Password=data";
            cnn = new SqlConnection(connectionstring);
            cnn.Open();
            Response.Write("Connection Established");
            sql = "";
            if (RadioButton1.Checked)
            { 
               sql = "Insert into Sample(Name,Age,Gender,Email,Password,City,Mobileno) values('" + TextBox3.Text + "','" + TextBox4.Text + "','" + RadioButton1.Text+ "','" + TextBox1.Text + "','" + TextBox2.Text + "','" + TextBox5.Text + "','" + TextBox6.Text + "')";
            }
            else if(RadioButton2.Checked)
            {
                sql = "Insert into Sample(Name,Age,Gender,Email,Password,City,Mobileno) values('" + TextBox3.Text + "','" + TextBox4.Text + "','" + RadioButton2.Text + "','" + TextBox1.Text + "','" + TextBox2.Text + "','" + TextBox5.Text + "','" + TextBox6.Text + "')";

            }
            else
            {
                sql = "Insert into Sample(Name,Age,Gender,Email,Password,City,Mobileno) values('" + TextBox3.Text + "','" + TextBox4.Text + "','" + RadioButton3.Text + "','" + TextBox1.Text + "','" + TextBox2.Text + "','" + TextBox5.Text + "','" + TextBox6.Text + "')";

            }
            cmd = new SqlCommand(sql, cnn);
            adapter = new SqlDataAdapter();
            adapter.InsertCommand = cmd;
            adapter.InsertCommand.ExecuteNonQuery();
            cmd.Dispose();

            cnn.Close();
            Response.Write("<script>alert ('Signed up Successfully')</script>");
        //}
        //else if (CheckBox2.Checked)
        //{

        //    connectionstring = "Data Source=SELVA-COMP\\SQLEXPRESS;Initial Catalog=FreshMart;Persist Security Info=True;User ID=sa;Password=data";
        //    cnn = new SqlConnection(connectionstring);
        //    cnn.Open();
        //    sql = "select email from login where email='" + TextBox1.Text + "'and password='" + TextBox2.Text + "'";
        //    cmd = new SqlCommand(sql, cnn);
        //    string useremail = TextBox1.Text;
        //    if (useremail != output)
        //    {
        //        Response.Write("<script>alert ('Invalid Username or Password')</script>");

        //        cnn.Close();
        //    }
        //    else
        //    {
        //        Response.Write("<script>alert ('Logined in Successfully')</script>");
        //        cnn.Close();
        //        useremail = TextBox1.Text.Split('@')[0];
        //        Session["Username"] = useremail;
        //        Response.Redirect("ProductList.aspx");
        //    }
        //}
        //else if (CheckBox1.Checked && CheckBox2.Checked)
        //{
        //    Response.Write("<script>alert ('Invalid Selection of Entry ')</script>");
        //}
        //else
        //{
        //    Response.Write("<script>alert ('Please select any of the below box ')</script>");
        //}

        //else
        //{
        //    Response.Write("<script>alert('Enter Valid Username And Password')</script>");
        //}
        #endregion

    }

        protected void RadioButton1_CheckedChanged(object sender, EventArgs e)
        {


        }
    }
}