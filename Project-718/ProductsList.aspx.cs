using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Net.Mail;
using System.Net;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;
using System.IO;

namespace Project_718
{
    public partial class ProductsList : System.Web.UI.Page
    {
        SqlCommand cmd;
        SqlConnection cnn;
        SqlDataReader read;
        SqlDataAdapter adapter;
        string sql, output = "";
        string connectionstring;
        protected void Page_Load(object sender, EventArgs e)
        {
            //if (!IsPostBack)
            //{
            //    lblMessage.Visible = false;
            //    //hyperlink.Visible = false;
            //}
        }

        //protected void btnUpload_Click(object sender, EventArgs e)
        //{
        //    HttpPostedFile postedFile = FileUpload1.PostedFile;
        //    string filename = Path.GetFileName(postedFile.FileName);

        //    string fileExtension = Path.GetExtension(filename);
        //    int fileSize = postedFile.ContentLength;

        //    if (fileExtension.ToLower() == ".jpg" || fileExtension.ToLower() == ".gif"
        //        || fileExtension.ToLower() == ".png" || fileExtension.ToLower() == ".bmp")
        //    {
        //        Stream stream = postedFile.InputStream;
        //        BinaryReader binaryReader = new BinaryReader(stream);
        //        Byte[] bytes = binaryReader.ReadBytes((int)stream.Length);
        //        string cs = ConfigurationManager.ConnectionStrings["DBCS"].ConnectionString;
        //        using (SqlConnection con = new SqlConnection(cs))
        //        {
        //            SqlCommand cmd = new SqlCommand("spUploadImage", con);
        //            cmd.CommandType = CommandType.StoredProcedure;

        //            SqlParameter paramName = new SqlParameter()
        //            {
        //                ParameterName = @"Name",
        //                Value = filename
        //            };
        //            cmd.Parameters.Add(paramName);

        //            SqlParameter paramSize = new SqlParameter()
        //            {
        //                ParameterName = "@Size",
        //                Value = fileSize
        //            };
        //            cmd.Parameters.Add(paramSize);

        //            SqlParameter paramImageData = new SqlParameter()
        //            {
        //                ParameterName = "@ImageData",
        //                Value = bytes
        //            };
        //            cmd.Parameters.Add(paramImageData);

        //            SqlParameter paramNewId = new SqlParameter()
        //            {
        //                ParameterName = "@NewId",
        //                Value = -1,
        //                Direction = ParameterDirection.Output
        //            };
        //            cmd.Parameters.Add(paramNewId);

        //            con.Open();
        //            cmd.ExecuteNonQuery();
        //            con.Close();

        //            lblMessage.Visible = true;
        //            lblMessage.ForeColor = System.Drawing.Color.Green;
        //            lblMessage.Text = "Upload Successful";
        //            //hyperlink.Visible = true;
        //            //hyperlink.NavigateUrl = "~/WebForm2.aspx?Id=" +
        //            //    cmd.Parameters["@NewId"].Value.ToString();
        //        }
        //    }
        //    else
        //    {
        //        lblMessage.Visible = true;
        //        lblMessage.ForeColor = System.Drawing.Color.Red;
        //        lblMessage.Text = "Only images (.jpg, .png, .gif and .bmp) can be uploaded";
        //        //hyperlink.Visible = false;
        //    }



            // Your existing code for sending email
            //protected void Button2_Click(object sender, EventArgs e)
            //{
            //    Response.Redirect("MailSending.aspx");
            //}

        //}

        protected void Button1_Click1(object sender, EventArgs e)
        {
            int apple = 120;
            int orange = 110;
            int banana = 7;
            int grape = 70;
            int plums = 80;
            int pomegranate = 150;
            int watermelon = 40;
            int guava = 50;
            int strawberry = 100;
            int potato = 20;
            int radish = 25;
            int ladisfinger = 20;
            int tomato = 30;
            int onion = 35;
            int brinjal = 25;
            int peans = 15;
            int capsicum = 30;
            int beetroot = 35;
            int total = 0;
            int temp;
            ListBox1.Items.Clear();
            ListBox1.Items.Add("\t\tWelcome to FreshMart!!!\n");
            ListBox1.Items.Add("");
            if (CheckBox1.Checked)
            {
                ListBox1.Items.Add(" Quantity of Apple:" + TextBox1.Text + "Kgs");
                temp = Convert.ToInt32(TextBox1.Text) * apple;
                ListBox1.Items.Add(" Apple Ammount :" + temp);
                total += temp;
            }
            if (CheckBox2.Checked)
            {
                ListBox1.Items.Add(" Quantity of Orange:" + TextBox2.Text + "Kgs");
                temp = Convert.ToInt32(TextBox2.Text) * orange;
                ListBox1.Items.Add(" Orange Ammount :" + temp);
                total += temp;


            }
            if (CheckBox3.Checked)
            {
                ListBox1.Items.Add(" Quantity of Grapes:" + TextBox3.Text + "Kgs");
                temp = Convert.ToInt32(TextBox3.Text) * grape;
                ListBox1.Items.Add(" Grapes Ammount :" + temp);
                total += temp;

            }
            if (CheckBox4.Checked)
            {
                ListBox1.Items.Add(" Quantity of Guava:" + TextBox4.Text + "Kgs");
                temp = Convert.ToInt32(TextBox4.Text) * guava;
                ListBox1.Items.Add(" Guava Ammount :" + temp);
                total += temp;


            }
            if (CheckBox5.Checked)
            {
                ListBox1.Items.Add(" Quantity of Pomegranate:" + TextBox5.Text + "Kgs");
                temp = Convert.ToInt32(TextBox5.Text) * pomegranate;
                ListBox1.Items.Add(" Pomegranate Ammount :" + temp);
                total += temp;
            }
            if (CheckBox6.Checked)
            {
                ListBox1.Items.Add(" Quantity of Plums:" + TextBox6.Text + "Kgs");
                temp = Convert.ToInt32(TextBox6.Text) * plums;
                ListBox1.Items.Add(" Plums Ammount :" + temp);
                total += temp;


            }
            if (CheckBox7.Checked)
            {
                ListBox1.Items.Add(" Quantity of Watermelon:" + TextBox7.Text + "Kgs");
                temp = Convert.ToInt32(TextBox7.Text) * watermelon;
                ListBox1.Items.Add(" Warermelon Ammount :" + temp);
                total += temp;


            }
            if (CheckBox8.Checked)
            {
                ListBox1.Items.Add(" Quantity of Banana:" + TextBox8.Text + "Pieces");
                temp = Convert.ToInt32(TextBox8.Text) * banana;
                ListBox1.Items.Add(" Banana Ammount :" + temp);
                total += temp;


            }
            if (CheckBox9.Checked)
            {
                ListBox1.Items.Add(" Quantity of Strawberry:" + TextBox9.Text + "Kgs");
                temp = Convert.ToInt32(TextBox9.Text) * strawberry;
                ListBox1.Items.Add(" Strawberry Ammount :" + temp);
                total += temp;


            }
            if (CheckBox10.Checked)
            {
                ListBox1.Items.Add(" Quantity of Tomato:" + TextBox10.Text + "Kgs");
                temp = Convert.ToInt32(TextBox10.Text) * tomato;
                ListBox1.Items.Add(" Tomato Ammount :" + temp);
                total += temp;
            }
            if (CheckBox11.Checked)
            {
                ListBox1.Items.Add(" Quantity of Onion:" + TextBox11.Text + "Kgs");
                temp = Convert.ToInt32(TextBox11.Text) * onion;
                ListBox1.Items.Add(" Onion Ammount :" + temp);
                total += temp;
            }
            if (CheckBox12.Checked)
            {
                ListBox1.Items.Add(" Quantity of Radish:" + TextBox12.Text + "Kgs");
                temp = Convert.ToInt32(TextBox12.Text) * radish;
                ListBox1.Items.Add(" Radish Ammount :" + temp);
                total += temp;
            }
            if (CheckBox13.Checked)
            {
                ListBox1.Items.Add(" Quantity of Potato:" + TextBox13.Text + "Kgs");
                temp = Convert.ToInt32(TextBox13.Text) * potato;
                ListBox1.Items.Add("Potato Ammount :" + temp);
                total += temp;
            }
            if (CheckBox14.Checked)
            {
                ListBox1.Items.Add(" Quantity of Ladies finger:" + TextBox14.Text + "Kgs");
                temp = Convert.ToInt32(TextBox14.Text) * ladisfinger;
                ListBox1.Items.Add(" Ladiesfinger Ammount :" + temp);
                total += temp;
            }
            if (CheckBox16.Checked)
            {
                ListBox1.Items.Add(" Quantity of Brinjal:" + TextBox15.Text + "Kgs");
                temp = Convert.ToInt32(TextBox15.Text) * brinjal;
                ListBox1.Items.Add(" Brinjal Ammount :" + temp);
                total += temp;
            }
            if (CheckBox17.Checked)
            {
                ListBox1.Items.Add(" Quantity of Peans:" + TextBox16.Text + "Kgs");
                temp = Convert.ToInt32(TextBox16.Text) * peans;
                ListBox1.Items.Add(" Peans Ammount :" + temp);
                total += temp;
            }
            if (CheckBox18.Checked)
            {
                ListBox1.Items.Add(" Quantity of Capsigum:" + TextBox17.Text + "Kgs");
                temp = Convert.ToInt32(TextBox17.Text) * capsicum;
                ListBox1.Items.Add(" Capsigum Ammount :" + temp);
                total += temp;
            }

            if (CheckBox19.Checked)
            {
                ListBox1.Items.Add(" Quantity of Beetroot:" + TextBox18.Text + "Kgs");
                temp = Convert.ToInt32(TextBox18.Text) * beetroot;
                ListBox1.Items.Add(" Beetroot Ammount :" + temp);
                total += temp;
            }
            ListBox1.Items.Add("Total Purchasing Ammount :" + total);
            string uname = Session["Username"].ToString();
            string emailContent = "";
            foreach (ListItem item in ListBox1.Items)
            {
                emailContent += item.Text + "<br />";
            }
            string fromMail = "12selvamani47@gmail.com";
            string fromPassword = "ijio scwm pokn zhca";
            MailMessage message = new MailMessage();
            message.From = new MailAddress(fromMail);
            message.Subject = "FreshMart";
            message.To.Add(new MailAddress(uname));
            message.Body = "<html><body> " + emailContent + " </body></html>";
            message.IsBodyHtml = true;
            var smtpclient = new SmtpClient("smtp.gmail.com")
            {
                Port = 587,
                Credentials = new NetworkCredential(fromMail, fromPassword),
                EnableSsl = true,
            };
            smtpclient.Send(message);

            // Your existing code for calculating total amount and sending email

            // Database connection string
            string connectionString = "Data Source=SELVA-COMP\\SQLEXPRESS;Initial Catalog=FreshMart;User ID=sa;Password=data";

            // SQL INSERT statement
            string insertQuery = "INSERT INTO UserProducts (ProductName, Quantity, Amount) VALUES (@ProductName, @Quantity, @Amount)";

            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                using (SqlCommand command = new SqlCommand(insertQuery, connection))
                {
                    connection.Open();

                    // Add parameters for each selected product to the SQL command
                    if (CheckBox1.Checked)
                    {
                        command.Parameters.AddWithValue("@ProductName", "Apple");
                        command.Parameters.AddWithValue("@Quantity", TextBox1.Text);
                        command.Parameters.AddWithValue("@Amount", Convert.ToInt32(TextBox1.Text) * apple);
                        command.ExecuteNonQuery();
                    }

                    if (CheckBox2.Checked)
                    {
                        command.Parameters.Clear(); // Clear previous parameters
                        command.Parameters.AddWithValue("@ProductName", "Orange");
                        command.Parameters.AddWithValue("@Quantity", TextBox2.Text);
                        command.Parameters.AddWithValue("@Amount", Convert.ToInt32(TextBox2.Text) * orange);
                        command.ExecuteNonQuery();
                    }
                    if (CheckBox3.Checked)
                    {
                        command.Parameters.Clear(); // Clear previous parameters
                        command.Parameters.AddWithValue("@ProductName", "Grapes");
                        command.Parameters.AddWithValue("@Quantity", TextBox3.Text);
                        command.Parameters.AddWithValue("@Amount", Convert.ToInt32(TextBox3.Text) * grape);
                        command.ExecuteNonQuery();
                    }
                    if (CheckBox4.Checked)
                    {
                        command.Parameters.Clear(); // Clear previous parameters
                        command.Parameters.AddWithValue("@ProductName", "Guava");
                        command.Parameters.AddWithValue("@Quantity", TextBox4.Text);
                        command.Parameters.AddWithValue("@Amount", Convert.ToInt32(TextBox4.Text) * guava);
                        command.ExecuteNonQuery();
                    }
                    if (CheckBox5.Checked)
                    {
                        command.Parameters.Clear(); // Clear previous parameters
                        command.Parameters.AddWithValue("@ProductName", "Pomegranate");
                        command.Parameters.AddWithValue("@Quantity", TextBox5.Text);
                        command.Parameters.AddWithValue("@Amount", Convert.ToInt32(TextBox5.Text) * pomegranate);
                        command.ExecuteNonQuery();
                    }
                    if (CheckBox6.Checked)
                    {
                        command.Parameters.Clear(); // Clear previous parameters
                        command.Parameters.AddWithValue("@ProductName", "Plums");
                        command.Parameters.AddWithValue("@Quantity", TextBox6.Text);
                        command.Parameters.AddWithValue("@Amount", Convert.ToInt32(TextBox6.Text) * plums);
                        command.ExecuteNonQuery();
                    }
                    if (CheckBox7.Checked)
                    {
                        command.Parameters.Clear(); // Clear previous parameters
                        command.Parameters.AddWithValue("@ProductName", "Watermelon");
                        command.Parameters.AddWithValue("@Quantity", TextBox7.Text);
                        command.Parameters.AddWithValue("@Amount", Convert.ToInt32(TextBox7.Text) * watermelon);
                        command.ExecuteNonQuery();
                    }
                    if (CheckBox8.Checked)
                    {
                        command.Parameters.Clear(); // Clear previous parameters
                        command.Parameters.AddWithValue("@ProductName", "Banana");
                        command.Parameters.AddWithValue("@Quantity", TextBox8.Text);
                        command.Parameters.AddWithValue("@Amount", Convert.ToInt32(TextBox8.Text) * banana);
                        command.ExecuteNonQuery();
                    }
                    if (CheckBox9.Checked)
                    {
                        command.Parameters.Clear(); // Clear previous parameters
                        command.Parameters.AddWithValue("@ProductName", "Strawberry");
                        command.Parameters.AddWithValue("@Quantity", TextBox9.Text);
                        command.Parameters.AddWithValue("@Amount", Convert.ToInt32(TextBox9.Text) * strawberry);
                        command.ExecuteNonQuery();
                    }
                    if (CheckBox10.Checked)
                    {
                        command.Parameters.Clear(); // Clear previous parameters
                        command.Parameters.AddWithValue("@ProductName", "Tomato");
                        command.Parameters.AddWithValue("@Quantity", TextBox10.Text);
                        command.Parameters.AddWithValue("@Amount", Convert.ToInt32(TextBox10.Text) * tomato);
                        command.ExecuteNonQuery();
                    }
                    if (CheckBox11.Checked)
                    {
                        command.Parameters.Clear(); // Clear previous parameters
                        command.Parameters.AddWithValue("@ProductName", "Onion");
                        command.Parameters.AddWithValue("@Quantity", TextBox11.Text);
                        command.Parameters.AddWithValue("@Amount", Convert.ToInt32(TextBox11.Text) * onion);
                        command.ExecuteNonQuery();
                    }
                    if (CheckBox12.Checked)
                    {
                        command.Parameters.Clear(); // Clear previous parameters
                        command.Parameters.AddWithValue("@ProductName", "Radish");
                        command.Parameters.AddWithValue("@Quantity", TextBox12.Text);
                        command.Parameters.AddWithValue("@Amount", Convert.ToInt32(TextBox12.Text) * radish);
                        command.ExecuteNonQuery();
                    }
                    if (CheckBox13.Checked)
                    {
                        command.Parameters.Clear(); // Clear previous parameters
                        command.Parameters.AddWithValue("@ProductName", "Potato");
                        command.Parameters.AddWithValue("@Quantity", TextBox13.Text);
                        command.Parameters.AddWithValue("@Amount", Convert.ToInt32(TextBox13.Text) * potato);
                        command.ExecuteNonQuery();
                    }
                    if (CheckBox14.Checked)
                    {
                        command.Parameters.Clear(); // Clear previous parameters
                        command.Parameters.AddWithValue("@ProductName", "Ladisfinger");
                        command.Parameters.AddWithValue("@Quantity", TextBox14.Text);
                        command.Parameters.AddWithValue("@Amount", Convert.ToInt32(TextBox14.Text) * ladisfinger);
                        command.ExecuteNonQuery();
                    }
                    if (CheckBox16.Checked)
                    {
                        command.Parameters.Clear(); // Clear previous parameters
                        command.Parameters.AddWithValue("@ProductName", "Brinjal");
                        command.Parameters.AddWithValue("@Quantity", TextBox15.Text);
                        command.Parameters.AddWithValue("@Amount", Convert.ToInt32(TextBox15.Text) * brinjal);
                        command.ExecuteNonQuery();
                    }
                    if (CheckBox17.Checked)
                    {
                        command.Parameters.Clear(); // Clear previous parameters
                        command.Parameters.AddWithValue("@ProductName", "Beans");
                        command.Parameters.AddWithValue("@Quantity", TextBox16.Text);
                        command.Parameters.AddWithValue("@Amount", Convert.ToInt32(TextBox16.Text) * peans);
                        command.ExecuteNonQuery();
                    }
                    if (CheckBox18.Checked)
                    {
                        command.Parameters.Clear(); // Clear previous parameters
                        command.Parameters.AddWithValue("@ProductName", "Capsicum");
                        command.Parameters.AddWithValue("@Quantity", TextBox17.Text);
                        command.Parameters.AddWithValue("@Amount", Convert.ToInt32(TextBox17.Text) * capsicum);
                        command.ExecuteNonQuery();
                    }
                    if (CheckBox19.Checked)
                    {
                        command.Parameters.Clear(); // Clear previous parameters
                        command.Parameters.AddWithValue("@ProductName", "Beetroot");
                        command.Parameters.AddWithValue("@Quantity", TextBox18.Text);
                        command.Parameters.AddWithValue("@Amount", Convert.ToInt32(TextBox18.Text) * beetroot);
                        command.ExecuteNonQuery();
                    }
                    // Repeat the above block for each selected product

                    connection.Close();
                }
            }


        }
    }
}
