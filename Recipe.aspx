<%@ Page Language="VB" AutoEventWireup="false" CodeFile="Recipe.aspx.vb" Inherits="Recipe" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>

    <link rel="stylesheet" type="text/css" href="./StyleSheet.css" />
    <style type="text/css">

        .auto-style1 {
            text-decoration: underline;
        }
        .auto-style2 {
            text-align: center;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <h1 class="auto-style1" style="text-align: center">Wicked Easy Recipes</h1>
        <h3 style="text-align: center">Using 5 Ingredients or Less!</h3>
        <p class="auto-style1" style="text-align: center">
            <strong><a href = "Default.aspx"> Home</a> |<a href= "NewRecipe.aspx"> New Recipes </a> |<a href= "AboutUS.aspx"> About Us</a> |<a href= "Contact.aspx"> Contact </a>|</strong></p>
        <p class="auto-style1" style="text-align: center">
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:CS_HW5 %>" DeleteCommand="DELETE FROM [Table] WHERE [Id] = @Id" InsertCommand="INSERT INTO [Table] ([Receipe ], [SubmittedBy], [Ingredients1], [Ingredients2], [Ingredients3], [Ingredients4], [Ingredients5], [Preperation], [Notes]) VALUES (@Receipe_, @SubmittedBy, @Ingredients1, @Ingredients2, @Ingredients3, @Ingredients4, @Ingredients5, @Preperation, @Notes)" SelectCommand="SELECT * FROM [Table] WHERE ([Id] = @Id)" UpdateCommand="UPDATE [Table] SET [Receipe ] = @Receipe_, [SubmittedBy] = @SubmittedBy, [Ingredients1] = @Ingredients1, [Ingredients2] = @Ingredients2, [Ingredients3] = @Ingredients3, [Ingredients4] = @Ingredients4, [Ingredients5] = @Ingredients5, [Preperation] = @Preperation, [Notes] = @Notes WHERE [Id] = @Id">
                <DeleteParameters>
                    <asp:Parameter Name="Id" Type="Int32" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="Receipe_" Type="String" />
                    <asp:Parameter Name="SubmittedBy" Type="String" />
                    <asp:Parameter Name="Ingredients1" Type="String" />
                    <asp:Parameter Name="Ingredients2" Type="String" />
                    <asp:Parameter Name="Ingredients3" Type="String" />
                    <asp:Parameter Name="Ingredients4" Type="String" />
                    <asp:Parameter Name="Ingredients5" Type="String" />
                    <asp:Parameter Name="Preperation" Type="String" />
                    <asp:Parameter Name="Notes" Type="String" />
                </InsertParameters>
                <SelectParameters>
                    <asp:QueryStringParameter Name="Id" QueryStringField="ID" Type="Int32" />
                </SelectParameters>
                <UpdateParameters>
                    <asp:Parameter Name="Receipe_" Type="String" />
                    <asp:Parameter Name="SubmittedBy" Type="String" />
                    <asp:Parameter Name="Ingredients1" Type="String" />
                    <asp:Parameter Name="Ingredients2" Type="String" />
                    <asp:Parameter Name="Ingredients3" Type="String" />
                    <asp:Parameter Name="Ingredients4" Type="String" />
                    <asp:Parameter Name="Ingredients5" Type="String" />
                    <asp:Parameter Name="Preperation" Type="String" />
                    <asp:Parameter Name="Notes" Type="String" />
                    <asp:Parameter Name="Id" Type="Int32" />
                </UpdateParameters>
            </asp:SqlDataSource>
            <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" DataKeyNames="Id" DataSourceID="SqlDataSource1" Height="50px" Width="424px">
                <Fields>
                    <asp:BoundField DataField="Receipe " HeaderText="Receipe " SortExpression="Receipe " />
                    <asp:BoundField DataField="SubmittedBy" HeaderText="SubmittedBy" SortExpression="SubmittedBy" />
                    <asp:BoundField DataField="Ingredients1" HeaderText="Ingredients1" SortExpression="Ingredients1" />
                    <asp:BoundField DataField="Ingredients2" HeaderText="Ingredients2" SortExpression="Ingredients2" />
                    <asp:BoundField DataField="Ingredients3" HeaderText="Ingredients3" SortExpression="Ingredients3" />
                    <asp:BoundField DataField="Ingredients4" HeaderText="Ingredients4" SortExpression="Ingredients4" />
                    <asp:BoundField DataField="Ingredients5" HeaderText="Ingredients5" SortExpression="Ingredients5" />
                    <asp:BoundField DataField="Preperation" HeaderText="Preperation" SortExpression="Preperation" />
                    <asp:BoundField DataField="Notes" HeaderText="Notes" SortExpression="Notes" />
                    <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                </Fields>
            </asp:DetailsView>
        </p>
    
    </div>
        <div class="auto-style2">
            <asp:Button ID="Button1" runat="server" Text="Edit " />
            <asp:Button ID="Button2" runat="server" Text="Delete" />
            <br />
            <br />
            <h6>©&nbsp;2013.&nbsp;6K:183&nbsp;Software&nbsp;Design&nbsp;&amp;&nbsp;Development</h6>
        </div>
    </form>
</body>
</html>
