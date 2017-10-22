<%@ Page Language="VB" AutoEventWireup="false" CodeFile="ProductData.aspx.vb" Inherits="Web_ProductData" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
      <link href="css/mygrid.css" type="text/css" rel="stylesheet" />
</head>
<body style="background-image: url('img/bg.jpg');">
    <form id="form1" runat="server">
      <center>
        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
        <asp:Button ID="txtSearchProduct" runat="server" Text="search" />
          <asp:Button ID="Button3" runat="server" PostBackUrl="Product_Add.aspx" Text="Add Product" />
          <br />
          <br />
        <div>
            <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False" DataSourceID="productDS" DataKeyNames="ProductID">
                <Columns>
                    <asp:BoundField DataField="ProductID" HeaderText="ProductID" InsertVisible="False" ReadOnly="True" SortExpression="ProductID" Visible="False" />
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
                    <asp:HyperLinkField HeaderText="Edit" Text="&lt;img src='img/edit.png' /&gt;" DataNavigateUrlFields="ProductID" DataNavigateUrlFormatString="Product_Edit.aspx?ProductID={0}" />
                    <asp:HyperLinkField HeaderText="View" Text="&lt;img src='img/view.png' /&gt;" DataNavigateUrlFields="ProductID" DataNavigateUrlFormatString="Product_View.aspx?ProductID={0}" />
                    <asp:ButtonField CommandName="delete" HeaderText="Delete" Text="&lt;img src='img/delete.png' /&gt;" />
                </Columns>
                    <HeaderStyle CssClass="header" />
            <RowStyle CssClass="rows" />
            </asp:GridView>
            <br />
            <asp:Button ID="Button2" runat="server" PostBackUrl="index.aspx" Text="Back" />
            <asp:SqlDataSource ID="productDS" runat="server" CancelSelectOnNullParameter="False" ConnectionString="<%$ ConnectionStrings:ASPNET_SAMPLEDBConnectionString %>" SelectCommand="SELECT * 
FROM [Product] 
WHERE ProductName LIKE '%' + ISNULL(@searchProductName, ProductName) + '%'
ORDER BY [ProductName]" DeleteCommand="delete from product where ProductID = @ProductID">
                <DeleteParameters>
                    <asp:Parameter Name="ProductID" />
                </DeleteParameters>
                <SelectParameters>
                    <asp:ControlParameter ControlID="TextBox1" Name="searchProductName" PropertyName="Text" />
                </SelectParameters>
            </asp:SqlDataSource>
            <br />
        </div>
    </form>
</body>
</html>
