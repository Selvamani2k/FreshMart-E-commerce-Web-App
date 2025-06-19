<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Homepage.aspx.cs" Inherits="Project_718.Homepage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="StyleSheet1.css" rel="stylesheet" />
    <link href="./logo.jpg" rel="icon" type="image/x-icon" />
    <style >
        body{
           // background-color:darkcyan;
              background-image:url('Markrtbg.jpeg');
             background-attachment: fixed;  
             background-size: cover;

          
        }
       .div1
       {
          border-style: solid;
            border-color: inherit;
            border-width: 2px;
            border-radius:10px;
            height:85px;
            width: 900px;
            margin-top:90px;
            margin-left:530px;
            background-attachment: fixed; 
            position:fixed;

            
        }
       /* .p1:hover{
            background-color:aquamarine;
              opacity:0.5;
        }*/
        .p1 {
            width: 724px;
            padding-left:50px;
            color:gold;
            font-size:15px;
            
        }
        .But1{
            border-radius:45px;
            border-color:black;
            background-color:violet;
            background-attachment: fixed;  

        }
        .h{
            text-align:center;
            font-size:70px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <h1 class="h" style="color:gold">FreshMart</h1>
      <div class="div1">
          <p class="p1" >
              Welcome to Freshmart, where freshness meets convenience!
              At Freshmart, we are committed to delivering a diverse range of fresh 
              and quality products right to your hand. Whether you're looking for 
              farm-fresh fruits and vegetables, organic produce, or high-quality 
              groceries, we've got you covered.
          </p>
          <br />
          <br />
          <br />
          <br />
          <br />
          <br />
          <br />
          <br />
          <br />
          <br />
          <br />
          <br />
          <br />
          <br />
          <br />
          <br />
          <br />
          <br />
          <br />
          <br />
          <br />
          <br />
          <br />
          <br />
          <br />
          <br />
          <br />
          <br />
          <br />
          <asp:Button class="But1" ID="Button1" runat="server" OnClick="Button1_Click" Text="Next" Height="60px" Width="190px" BackColor="#339966" />
          <br />
          <br />
          <br />
          <br />
          <br />
          <br />
          <br />
          <br />
          <br />
          <br />
          <br />
          <br />
          <br />
          <br />
          <br />
          <br />
          <br />
          <br />
          <br />
          <br />
          <br />
      </div>

    </form>
             
</body>
</html>
