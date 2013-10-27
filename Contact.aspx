<%@ Page Language="VB" AutoEventWireup="false" CodeFile="Contact.aspx.vb" Inherits="Contact" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>

    <link rel="stylesheet" type="text/css" href="./StyleSheet.css" />
    <style type="text/css">
        .auto-style1 {
            text-decoration: underline;
        }
        #form1 {
            text-align: left;
        }
    </style>
</head>
<body>
    <div style="text-align: center">
    
        <h1 class="auto-style1">Wicked Easy Recipes</h1>
    
    </div>
    <div style="text-align: center">
    
        <h3>Using 5 Ingredients or Less!</h3>
    
    </div>
    <div style="text-align: center">
    
        <p>
            <strong><a href = "Default.aspx"> Home</a> |<a href= "NewRecipe.aspx"> New Recipes </a> |<a href= "AboutUS.aspx"> About Us </a> |<a href= "Contact.aspx"> Contact </a>|</strong></p>
    
    </div>
    <form id="form1" runat="server">
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <br />
        <div style="margin-left: 160px">
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="Label2" runat="server" Text="Your Email Address:"></asp:Label>
        </div>
        <br />
        <div style="margin-left: 280px">
            <asp:TextBox ID="TextBox1" runat="server" Height="18px" Width="273px" BorderStyle="Dotted"></asp:TextBox>
        </div>
        <br />
        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label3" runat="server" Text="Your Message:"></asp:Label>
        <br />
&nbsp;<div style="margin-left: 280px">
            <asp:TextBox ID="TextBox2" runat="server" Height="145px" style="margin-top: 0px" Width="487px" BorderStyle="Dotted"></asp:TextBox>
        </div>
        <h6 style="margin-left: 440px">
            <br />
            <asp:Button ID="Button1" runat="server" Text="Send Message" BorderStyle="Inset" Height="51px" Width="226px" />
        </h6>
        <h6>&nbsp;</h6>
        <h6 style="text-align: center">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; ©&nbsp;2013.&nbsp;6K:183&nbsp;Software&nbsp;Design&nbsp;&amp;&nbsp;Development</h6>
    </form>
</body>
</html>
