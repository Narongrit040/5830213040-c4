<%@ Page Language="VB" AutoEventWireup="false" CodeFile="Product_Edit.aspx.vb" Inherits="Web_Product_Edit" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:FormView ID="FormView1" runat="server" DataSourceID="ProductDS">
            </asp:FormView>
            <asp:SqlDataSource ID="ProductDS" runat="server" ConnectionString="<%$ ConnectionStrings:ASPNET_SAMPLEDBConnectionString %>" SelectCommand="SELECT * FROM [Produc] where brandkey = @brandkey">
                <SelectParameters>
                    <asp:Parameter Name="brandkey" />
                </SelectParameters>
            </asp:SqlDataSource>
        </div>
    </form>
</body>
</html>
