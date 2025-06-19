<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Signup.aspx.cs" Inherits="Project_718.Loginpage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
        <link href="./logo.jpg" rel="icon" type="image/x-icon" />
    <style>
        .outerdiv{
            margin-top:110px;
            padding-top:1px;
            border-radius:100px;
            margin-left:30%;
            text-align:center;
            max-width: 700px;
            height: 100px;
           
        }
        h1{
            text-align:center;
            height:42px;
            width:1216px;
            padding-left:120px;
            padding-bottom:20px;
            text-size-adjust:40%;

        }
        h2{
            text-align:center;
        }
        .tb1,.tb2,.But1,.tb3,.tb4,.tb5,.tb6,.tb3
        {
             border-radius:70px; 
             background-color:darkcyan;
             border-color:black;

        }
        ::placeholder
        {
            color:purple;
            text-align:center;
        }
    </style>
    <link href="StyleSheet3.css" rel="stylesheet" />
</head>
<body>
   
    <form id="form1" runat="server">
            <h1 class="h" style="color:gold; margin-left: 200px;"> FreshMart</h1>
        <br />
        <br />
        <div class="outerdiv">      
                 <h2 style="color:white;"> REGISTER HERE</h2>
                 <br />
                 <br />
                 <br />&nbsp;&nbsp;
                 <asp:TextBox class="tb4" ID="TextBox3" runat="server"  BorderColor="Black" Height="54px" Width="197px" placeholder="Name" BackColor="#00FFCC" BorderStyle="Double"></asp:TextBox>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                 <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBox3" ErrorMessage="Enter name" ForeColor="White"></asp:RequiredFieldValidator>
                 <br />
                 <br />
                 <asp:TextBox class="tb4"  type="number" min="10" max="100" BorderColor="Black" ID="TextBox4" runat="server" Height="52px" Width="196px" placeholder="Age" BackColor="#00FFCC" BorderStyle="Double"></asp:TextBox>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                 <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="TextBox4" ErrorMessage="Enter age" ForeColor="White"></asp:RequiredFieldValidator>
                 <br />
                 <br />
                 <br />
                 <asp:RadioButton ID="RadioButton1" runat="server" Text="Male" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                 <asp:RadioButton ID="RadioButton2" runat="server" Text="Female" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                 <asp:RadioButton ID="RadioButton3" runat="server" Text="Others" />
                 <br />
                 <br />
                 <br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                 <asp:TextBox class="tb1" ID="TextBox1" runat="server" Height="50px" Width="197px" placeholder="Email" BackColor="#00FFCC" BorderColor="Black" BorderStyle="Double" TextMode="Email"></asp:TextBox>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                 <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="Enter Email" ForeColor="White" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                 <br />
                 <br />
                 <br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                 <asp:TextBox  class="tb2" ID="TextBox2" runat="server" Height="47px" Width="203px" placeholder="Password" BackColor="#00FFCC" BorderColor="Black" BorderStyle="Double"></asp:TextBox>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                 <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox2" ErrorMessage="Enter Password" ForeColor="White"></asp:RequiredFieldValidator>
                 <br />
                 <br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                 <asp:TextBox  class="tb5" ID="TextBox5" runat="server" Height="55px" BorderColor="Black" Width="202px" placeholder="City" BackColor="#00FFCC" BorderStyle="Double"></asp:TextBox>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                 <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="TextBox5" ErrorMessage="Enter City" ForeColor="White"></asp:RequiredFieldValidator>
                 <br />
                 <br />
                 <br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;
                 <asp:TextBox class="tb6" ID="TextBox6" runat="server" Height="53px" Width="207px" BorderColor="Black" placeholder="Mobile no" BackColor="#00FFCC" BorderStyle="Double"></asp:TextBox>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                 <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="TextBox6" ErrorMessage="Enter mobile no" ForeColor="White"></asp:RequiredFieldValidator>
                 <br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br />
                 <br />
                 <br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                 <asp:Button Class="But1" ID="Button1" runat="server" BackColor="#339966" BorderColor="#FFFF99" BorderStyle="Double" Height="51px" Text="Sign-up" Width="188px" OnClick="Button1_Click1" />
                 <br />
                 <br />
                 <br />
                 <br />
                 <asp:Label ID="Label1" runat="server" Text="If you have already account ---&gt;"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                 <asp:HyperLink  href="Signin.aspx" ID="HyperLink1" runat="server">Sign-in</asp:HyperLink>
                 <br />
                 <br />
                 <br />
                 If You Admin Click Here --------&gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                 <asp:HyperLink  href="AdminPage.aspx" ID="HyperLink2" runat="server">Admin Page</asp:HyperLink>

                 <br />
                 <br />

        </div>
           
           
    </form>
</body>
</html>
