<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ProductsList.aspx.cs" Inherits="Project_718.ProductsList" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
        <link href="./logo.jpg" rel="icon" type="image/x-icon" />
    <style>
        .h1,.h2{
            text-align:center;
        }

        .outerdiv1,.outerdiv2,.outerdiv3, .outerdiv4, .outerdiv5, .outerdiv6{
            display:flex;
            justify-content:space-evenly;
        }
        
        .div1, .div2, .div3, .div4, .div5, .div6, .div7, .div8, .div9{
            display: inline-block;
            width: 100%;
            height: 300px;
            width:400px;
            border-style:double;
            padding:30px;
    
        }
        .div10, .div11, .div12, .div13, .div14, .div15, .div16, .div17, .div18 {
            display: inline-block;
            width: 100%;
            height: 300px;
            width: 400px;
            border-style:double;
            padding: 30px;
        }
        .app, .or, .gr, .guv, .pom, .plm, .wat, .ban, .str {
            width: 100%;
            height: 100%;
            background-size: cover;
        }
        .tom, .oni, .rad, .pot, .bri, .lad, .beans, .capsi, .beet {
            width: 100%;
            height: 100%;
            background-size: cover;
        }
        body{
            background-color:thistle;
        }
        .but,but2{
            border-radius:30px;
            background-color:thistle;
            border-color:black;
            
        }
        .h{
            text-align:center;
            background-color:black;
        }
        .listbox{
            padding-left:100px;
        }
        .qr{
            width:30%;
            height:15%;
            padding-left:30%;
        }
        .ph{
            text-align:center;
            padding-right:10%;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <h1 class="h" style="color:gold; height: 60px;"> FreshMart</h1>
         <div class="h1">
             <h1> Fruits Here!!!</h1>
        </div>
        <div class="outerdiv1">
            <div class="div1">   
                <img class="app" src="Apple.jpg" alt="Alternate Text" />
                <asp:CheckBox ID="CheckBox1"  text="Apple" runat="server" />
<%--                <input type="number" />--%>
                <asp:TextBox ID="TextBox1" runat="server" TextMode="Number" Min="1"></asp:TextBox>
                <asp:Label ID="Label1" runat="server" Text=" Kgs"></asp:Label>
             </div>
            <div class="div2">
                <img class="or" src="Orange.png" alt="Alternate Text" />
                <asp:CheckBox ID="CheckBox2"  text="Orange" runat="server" />
<%--                <input type="number" />--%>
                <asp:TextBox ID="TextBox2" runat="server" TextMode="Number" Min="1"></asp:TextBox>
                <asp:Label ID="Label2" runat="server" Text=" Kgs"></asp:Label>
            </div>
            <div class="div3">
                <img class="gr" src="Grapes.jpg" alt="Alternate Text" />
                <asp:CheckBox ID="CheckBox3"  text="Grapes" runat="server" />
<%--                <input type="number" />--%>
                <asp:TextBox ID="TextBox3" runat="server" TextMode="Number" Min="1"></asp:TextBox>
                <asp:Label ID="Label3" runat="server" Text=" Kgs"></asp:Label>
            </div>
        </div>
        <div class="outerdiv2">
            <div class="div4">
                <img class="guv" src="guava.jpg" alt="Alternate Text" />
                <asp:CheckBox ID="CheckBox4"  text="Guava" runat="server" />
<%--                <input type="number" />--%>
                <asp:TextBox ID="TextBox4" runat="server" TextMode="Number" Min="1"></asp:TextBox>

                <asp:Label ID="Label4" runat="server" Text=" Kgs"></asp:Label>

            </div>
            <div class="div5">
                <img class="pom" src="pomegranate.jpg" alt="Alternate Text" />
                <asp:CheckBox ID="CheckBox5"  text="Pomegranate" runat="server" />
<%--                <input type="number" />--%>
                 <asp:TextBox ID="TextBox5" runat="server" TextMode="Number" Min="1"></asp:TextBox>
                <asp:Label ID="Label5" runat="server" Text=" Kgs"></asp:Label>

            </div>
            <div class="div6">
                <img class="plm" src="plums.jpeg" alt="Alternate Text" />
                <asp:CheckBox ID="CheckBox6"  text="Plums" runat="server" />
<%--                <input type="number" />--%>
                <asp:TextBox ID="TextBox6" runat="server" TextMode="Number" Min="1"></asp:TextBox>
                <asp:Label ID="Label6" runat="server" Text=" Kgs"></asp:Label>

            </div>
        </div>
        <div class="outerdiv3">
            <div class="div7">
                <img class="wat" src="watermelon.jpg" alt="Alternate Text" />
                <asp:CheckBox ID="CheckBox7"  text="Watermelon" runat="server" />
<%--                <input type="number" />--%>
                <asp:TextBox ID="TextBox7" runat="server" TextMode="Number" Min="1"></asp:TextBox>
                <asp:Label ID="Label7" runat="server" Text=" Kgs"></asp:Label>

            </div>
            <div class="div8">
                <img class="ban" src="bananas.jpg" alt="Alternate Text" />
                <asp:CheckBox ID="CheckBox8"  text="Banana" runat="server" />
<%--                <input type="number" />--%>
                 <asp:TextBox ID="TextBox8" runat="server" TextMode="Number" Min="1"></asp:TextBox>
                <asp:Label ID="Label8" runat="server" Text="Pieces"></asp:Label>

            </div>
            <div class="div9">
                <img class="str" src="Strawberry.jpeg" alt="Alternate Text" />
                <asp:CheckBox ID="CheckBox9"  text="Strawberry" runat="server" />
<%--                <input type="number" />--%>               
                <asp:TextBox ID="TextBox9" runat="server" TextMode="Number" Min="1"></asp:TextBox>
               <asp:Label ID="Label9" runat="server" Text=" Kgs"></asp:Label>

            </div>
        </div>
        <div class="h2">
            <h1> Vegetables Here!!!</h1>
        </div>
        <div class="outerdiv4">
            <div class="div10">
                <img class="tom" src="tomato.jpeg" alt="Alternate Text" />
                 <asp:CheckBox ID="CheckBox10"  text="Tomato" runat="server" />
<%--                <input type="number" />--%>
                <asp:TextBox ID="TextBox10" runat="server" TextMode="Number" Min="1"></asp:TextBox>
                <asp:Label ID="Label10" runat="server" Text=" Kgs"></asp:Label>
            </div>
            <div class="div11">
                <img class="oni" src="onion.jpeg" alt="Alternate Text" />
                 <asp:CheckBox ID="CheckBox11"  text="Onion" runat="server" />
<%--                <input type="number" />              --%>
                <asp:TextBox ID="TextBox11" runat="server" TextMode="Number" Min="1"></asp:TextBox>

                <asp:Label ID="Label11" runat="server" Text=" Kgs"></asp:Label>
            </div>
            <div class="div12">
                <img class="rad" src="radish.jpg" alt="Alternate Text" />
                 <asp:CheckBox ID="CheckBox12"  text="Radish" runat="server" />
<%--                <input type="number" />      --%>
                <asp:TextBox ID="TextBox12" runat="server" TextMode="Number"></asp:TextBox>
                <asp:Label ID="Label12" runat="server" Text=" Kgs"></asp:Label>
            </div>
        </div>
        <div class="outerdiv5">
            <div class="div13">
                <img class="pot" src="potato.jpg" alt="Alternate Text" />
                 <asp:CheckBox ID="CheckBox13"  text="Potato" runat="server" />
<%--                <input type="number" />     --%>
                <asp:TextBox ID="TextBox13" runat="server" TextMode="Number" Min="1"></asp:TextBox>

                <asp:Label ID="Label13" runat="server" Text=" Kgs"></asp:Label>
            </div>
            <div class="div14">
                <img class="lad" src="ladyfinger.jpeg" alt="Alternate Text" />
                 <asp:CheckBox ID="CheckBox14"  text="Ladiesfinger" runat="server" />
<%--                <input type="number" />--%>        
                <asp:TextBox ID="TextBox14" runat="server" TextMode="Number" Min="1"></asp:TextBox>
                <asp:Label ID="Label15" runat="server" Text=" Kgs"></asp:Label>
            </div>
            <div class="div15">
                <img class="bri" src="brinjal.jpg" alt="Alternate Text" />
                 <asp:CheckBox ID="CheckBox16"  text="Brinjal" runat="server" />
<%--                <input type="number" />       --%>
                <asp:TextBox ID="TextBox15" runat="server" TextMode="Number" Min="1"></asp:TextBox>
                <asp:Label ID="Label16" runat="server" Text=" Kgs"></asp:Label>
            </div>
        </div>
        <div class="outerdiv6">
            <div class="div16">
                <img class="beans" src="bean.jpg" alt="Alternate Text" />
                 <asp:CheckBox ID="CheckBox17"  text="Beans" runat="server" />
<%--                <input type="number" />--%>     
                <asp:TextBox ID="TextBox16" runat="server" TextMode="Number" Min="1"></asp:TextBox>
                <asp:Label ID="Label17" runat="server" Text=" Kgs"></asp:Label>
                 
            </div>
            <div class="div17">
                <img class="capsi" src="capsigum.jpg" alt="Alternate Text" />
                 <asp:CheckBox ID="CheckBox18"  text="Capsicum" runat="server" />
<%--                <input type="number" />  --%>
                <asp:TextBox ID="TextBox17" runat="server" TextMode="Number" Min="1"></asp:TextBox>
                <asp:Label ID="Label18" runat="server" Text=" Kgs"></asp:Label>
            </div>
            <div class="div18">
                <img class="beet" src="beetroot.jpg" alt="Alternate Text" />
                 <asp:CheckBox ID="CheckBox19"  text="Beetroot" runat="server" />
<%--                <input type="number" />--%>
                <asp:TextBox ID="TextBox18" runat="server" TextMode="Number" Min="1"></asp:TextBox>
                <asp:Label ID="Label19" runat="server" Text=" Kgs"></asp:Label>
                <br />
            </div>
        </div>
        <div class="listbox">
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <asp:ListBox  class="lb" ID="ListBox1" runat="server" Height="362px" style="margin-left: 161px" Width="1174px"></asp:ListBox>

            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <br />
            <br />
            <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;

            <asp:Button class="but" ID="Button1" runat="server" Text="Bill" Height="49px" Width="170px" OnClick="Button1_Click1" />

        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <%--<asp:Label ID="Label20" runat="server" Text="If you want bill to your e-mail"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button  class="but2" ID="Button2" runat="server" Height="47px" Text="Next" Width="178px" OnClick="Button2_Click" BorderColor="#003300" />
            <br />--%>
            <br />
            <br />
            <br />
            <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <br />
            <br />
            <h1 class="ph">Payment Here!</h1>
            <img class="qr" src="QRcode.jpg" alt="Alternate Text" />
<%--            <asp:FileUpload ID="FileUpload1" runat="server" />--%>
            <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <br />
            <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <%--<asp:FileUpload ID="FileUpload1" runat="server" />
<br /><br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<asp:Button ID="btnUpload" runat="server" Text="Upload" OnClick="btnUpload_Click" />
<br /><br />
<asp:Label ID="lblMessage" runat="server"></asp:Label>
<br /><br />
<%--<asp:HyperLink ID="hyperlink" runat="server">View Uploaded Image</asp:HyperLink>--%>
<%--            <asp:HyperLink href="Payment.aspx" ID="HyperLink1" runat="server">HyperLink</asp:HyperLink>--%>
        </div>--%>
    </form>
</body>
</html>
