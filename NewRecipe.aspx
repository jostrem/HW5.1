<%@ Page Language="VB" AutoEventWireup="false" CodeFile="NewRecipe.aspx.vb" Inherits="NewRecipe" %>

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
    <div style="text-align: center">
    
        <h1 class="auto-style1">Wicked Easy Recipes</h1>
    
    </div>
        <div style="text-align: center">
    
            <h3>Using 5 Ingredients or Less!</h3>
    
    </div>
        <div style="text-align: center">
    
            <p>
            <strong><a href = "Default.aspx"> Home </a> |<a href= "NewRecipe.aspx"> New Recipes </a> |<a href= "AboutUS.aspx"> About Us</a> |<a href= "Contact.aspx"> Contact </a>|</strong></p>
    
    </div>
        <div style="text-align: center">
    
            <p>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:CS_HW5 %>" DeleteCommand="DELETE FROM [Table] WHERE [Id] = @original_Id AND [Receipe ] = @original_Receipe_ AND [SubmittedBy] = @original_SubmittedBy AND [Ingredients1] = @original_Ingredients1 AND (([Ingredients2] = @original_Ingredients2) OR ([Ingredients2] IS NULL AND @original_Ingredients2 IS NULL)) AND (([Ingredients3] = @original_Ingredients3) OR ([Ingredients3] IS NULL AND @original_Ingredients3 IS NULL)) AND (([Ingredients4] = @original_Ingredients4) OR ([Ingredients4] IS NULL AND @original_Ingredients4 IS NULL)) AND (([Ingredients5] = @original_Ingredients5) OR ([Ingredients5] IS NULL AND @original_Ingredients5 IS NULL)) AND [Preperation] = @original_Preperation AND (([Notes] = @original_Notes) OR ([Notes] IS NULL AND @original_Notes IS NULL))" InsertCommand="INSERT INTO [Table] ([Receipe ], [SubmittedBy], [Ingredients1], [Ingredients2], [Ingredients3], [Ingredients4], [Ingredients5], [Preperation], [Notes]) VALUES (@Receipe_, @SubmittedBy, @Ingredients1, @Ingredients2, @Ingredients3, @Ingredients4, @Ingredients5, @Preperation, @Notes)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [Table]" UpdateCommand="UPDATE [Table] SET [Receipe ] = @Receipe_, [SubmittedBy] = @SubmittedBy, [Ingredients1] = @Ingredients1, [Ingredients2] = @Ingredients2, [Ingredients3] = @Ingredients3, [Ingredients4] = @Ingredients4, [Ingredients5] = @Ingredients5, [Preperation] = @Preperation, [Notes] = @Notes WHERE [Id] = @original_Id AND [Receipe ] = @original_Receipe_ AND [SubmittedBy] = @original_SubmittedBy AND [Ingredients1] = @original_Ingredients1 AND (([Ingredients2] = @original_Ingredients2) OR ([Ingredients2] IS NULL AND @original_Ingredients2 IS NULL)) AND (([Ingredients3] = @original_Ingredients3) OR ([Ingredients3] IS NULL AND @original_Ingredients3 IS NULL)) AND (([Ingredients4] = @original_Ingredients4) OR ([Ingredients4] IS NULL AND @original_Ingredients4 IS NULL)) AND (([Ingredients5] = @original_Ingredients5) OR ([Ingredients5] IS NULL AND @original_Ingredients5 IS NULL)) AND [Preperation] = @original_Preperation AND (([Notes] = @original_Notes) OR ([Notes] IS NULL AND @original_Notes IS NULL))">
                    <DeleteParameters>
                        <asp:Parameter Name="original_Id" Type="Int32" />
                        <asp:Parameter Name="original_Receipe_" Type="String" />
                        <asp:Parameter Name="original_SubmittedBy" Type="String" />
                        <asp:Parameter Name="original_Ingredients1" Type="String" />
                        <asp:Parameter Name="original_Ingredients2" Type="String" />
                        <asp:Parameter Name="original_Ingredients3" Type="String" />
                        <asp:Parameter Name="original_Ingredients4" Type="String" />
                        <asp:Parameter Name="original_Ingredients5" Type="String" />
                        <asp:Parameter Name="original_Preperation" Type="String" />
                        <asp:Parameter Name="original_Notes" Type="String" />
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
                        <asp:Parameter Name="original_Id" Type="Int32" />
                        <asp:Parameter Name="original_Receipe_" Type="String" />
                        <asp:Parameter Name="original_SubmittedBy" Type="String" />
                        <asp:Parameter Name="original_Ingredients1" Type="String" />
                        <asp:Parameter Name="original_Ingredients2" Type="String" />
                        <asp:Parameter Name="original_Ingredients3" Type="String" />
                        <asp:Parameter Name="original_Ingredients4" Type="String" />
                        <asp:Parameter Name="original_Ingredients5" Type="String" />
                        <asp:Parameter Name="original_Preperation" Type="String" />
                        <asp:Parameter Name="original_Notes" Type="String" />
                    </UpdateParameters>
                </asp:SqlDataSource>
            </p>
    
    </div>
        <div style="text-align: center">
    
            <p>
                &nbsp;</p>
    
    </div>
        <div style="text-align: center">
    
            <p>
                <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" DataKeyNames="Id" DataSourceID="SqlDataSource1" DefaultMode="Insert" Height="16px" Width="728px">
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
                        <asp:CommandField ShowInsertButton="True" />
                    </Fields>
                </asp:DetailsView>
            </p>
    
    </div>
        <div style="text-align: center">
    
            <p>
                &nbsp;</p>
    
    </div>
        <div style="text-align: center">
    
            <p>
                &nbsp;</p>
    
    </div>
        <div style="text-align: center">
    
            <p>
                &nbsp;</p>
    
    </div>
        <div style="text-align: center">
    
            <p>
                &nbsp;</p>
    
    </div>
        <div style="text-align: center">
    
            <h6>©&nbsp;2013.&nbsp;6K:183&nbsp;Software&nbsp;Design&nbsp;&amp;&nbsp;Development</h6>
    
    </div>
    </form>
</body>
</html>
