<%@ Page Language="VB" AutoEventWireup="false" CodeFile="TestSearch.aspx.vb" Inherits="Web_TestSearch" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
        <asp:Button ID="search" runat="server" Text="Search" />
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="testSearchDS">
            <Columns>
                <asp:BoundField DataField="ProductID" HeaderText="ProductID" SortExpression="ProductID" />
                <asp:BoundField DataField="ProductName" HeaderText="ProductName" SortExpression="ProductName" />
                <asp:BoundField DataField="BrandKey" HeaderText="BrandKey" SortExpression="BrandKey" />
                <asp:BoundField DataField="CategoryKey" HeaderText="CategoryKey" SortExpression="CategoryKey" />
                <asp:BoundField DataField="UnitBuyKey" HeaderText="UnitBuyKey" SortExpression="UnitBuyKey" />
                <asp:BoundField DataField="UnitSaleKey" HeaderText="UnitSaleKey" SortExpression="UnitSaleKey" />
                <asp:BoundField DataField="UnitBuyToSale" HeaderText="UnitBuyToSale" SortExpression="UnitBuyToSale" />
                <asp:BoundField DataField="ReOrderUnit" HeaderText="ReOrderUnit" SortExpression="ReOrderUnit" />
                <asp:BoundField DataField="SalePrice" HeaderText="SalePrice" SortExpression="SalePrice" />
                <asp:BoundField DataField="SizeDescription" HeaderText="SizeDescription" SortExpression="SizeDescription" />
                <asp:BoundField DataField="UserModify" HeaderText="UserModify" SortExpression="UserModify" />
                <asp:BoundField DataField="ModifyDate" HeaderText="ModifyDate" SortExpression="ModifyDate" />
                <asp:BoundField DataField="Barcode1" HeaderText="Barcode1" SortExpression="Barcode1" />
                <asp:BoundField DataField="Barcode2" HeaderText="Barcode2" SortExpression="Barcode2" />
                <asp:BoundField DataField="Barcode3" HeaderText="Barcode3" SortExpression="Barcode3" />
                <asp:BoundField DataField="Barcode4" HeaderText="Barcode4" SortExpression="Barcode4" />
                <asp:BoundField DataField="Barcode5" HeaderText="Barcode5" SortExpression="Barcode5" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="testSearchDS" runat="server" CancelSelectOnNullParameter="False" ConnectionString="<%$ ConnectionStrings:ASPNET_SAMPLEDBConnectionString %>" SelectCommand="SELECT * 
FROM [Product] 
WHERE ProductName LIKE '%' + ISNULL(@searchProductName, ProductName) + '%'
ORDER BY [ProductName]">
            <SelectParameters>
                <asp:ControlParameter ControlID="TextBox1" Name="searchProductName" PropertyName="Text" />
            </SelectParameters>
        </asp:SqlDataSource>
        <div>
        </div>
    </form>
</body>
</html>
