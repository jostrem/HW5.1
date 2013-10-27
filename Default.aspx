<%@ Page Language="VB" AutoEventWireup="false" CodeFile="Default.aspx.vb" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>

    <link rel="stylesheet" type="text/css" href="./StyleSheet.css" />
    <style type="text/css">
        .auto-style1 {
            text-decoration: underline;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <h1 class="auto-style1" style="text-align: center">Wicked Easy Recipes </h1>
        <h3 style="text-align: center">Using 5 Ingredients or Less!</h3>
        <p style="text-align: center">
            <strong><a href = "Default.aspx"> Home</a> |<a href= "NewRecipe.aspx"> New Recipes </a> |<a href= "AboutUS.aspx"> About Us </a> |<a href= "Contact.aspx"> Contact </a>|</strong></p>
        <p style="text-align: center">
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:CS_HW5 %>" SelectCommand="SELECT [Receipe ] AS Receipe_, [SubmittedBy], [Id] FROM [Table]"></asp:SqlDataSource>
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="Id" DataSourceID="SqlDataSource1" Width="743px">
                <Columns>
                    <asp:BoundField DataField="Receipe_" HeaderText="Recipe" SortExpression="Receipe_" />
                    <asp:BoundField DataField="SubmittedBy" HeaderText="Submitted By" SortExpression="SubmittedBy" />
                    <asp:HyperLinkField DataNavigateUrlFields="Id" DataNavigateUrlFormatString="Recipe.aspx?Id={0}" HeaderText="Submitted By" SortExpression="Id" Text="Select" />
                </Columns>
            </asp:GridView>

        </p>
        <p style="text-align: center">
            &nbsp;</p>
        <h6 style="text-align: center">
            ©&nbsp;2013.&nbsp;6K:183&nbsp;Software&nbsp;Design&nbsp;&amp;&nbsp;Development</h6>
        <p style="text-align: center">
            &nbsp;</p>
    
    </div>
    </form>
</body>
</html>
