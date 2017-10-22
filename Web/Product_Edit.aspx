<%@ Page Language="VB" AutoEventWireup="false" CodeFile="Product_Edit.aspx.vb" Inherits="Web_Product_Edit" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
         <link href="css/mygrid.css" type="text/css" rel="stylesheet" />
</head>
<body  style="background-image: url('img/bg.jpg');">
    <form id="form1" runat="server">
        <div>
            <asp:FormView ID="FormView1" runat="server" DataKeyNames="ProductID" DataSourceID="ProductDS">
                <EditItemTemplate>
                    ProductID:
                    <asp:TextBox ID="ProductIDTextBox" runat="server" Text='<%# Bind("ProductID") %>' />
                    <br />
                    ProductName:
                    <asp:TextBox ID="ProductNameTextBox" runat="server" Text='<%# Bind("ProductName") %>' />
                    <br />
                    BrandKey:
                    <asp:TextBox ID="BrandKeyTextBox" runat="server" Text='<%# Bind("BrandKey") %>' />
                    <br />
                    CategoryKey:
                    <asp:TextBox ID="CategoryKeyTextBox" runat="server" Text='<%# Bind("CategoryKey") %>' />
                    <br />
                    UnitBuyKey:
                    <asp:TextBox ID="UnitBuyKeyTextBox" runat="server" Text='<%# Bind("UnitBuyKey") %>' />
                    <br />
                    UnitSaleKey:
                    <asp:TextBox ID="UnitSaleKeyTextBox" runat="server" Text='<%# Bind("UnitSaleKey") %>' />
                    <br />
                    UnitBuyToSale:
                    <asp:TextBox ID="UnitBuyToSaleTextBox" runat="server" Text='<%# Bind("UnitBuyToSale") %>' />
                    <br />
                    ReOrderUnit:
                    <asp:TextBox ID="ReOrderUnitTextBox" runat="server" Text='<%# Bind("ReOrderUnit") %>' />
                    <br />
                    SalePrice:
                    <asp:TextBox ID="SalePriceTextBox" runat="server" Text='<%# Bind("SalePrice") %>' />
                    <br />
                    SizeDescription:
                    <asp:TextBox ID="SizeDescriptionTextBox" runat="server" Text='<%# Bind("SizeDescription") %>' />
                    <br />
                    UserModify:
                    <asp:TextBox ID="UserModifyTextBox" runat="server" Text='<%# Bind("UserModify") %>' />
                    <br />
                    ModifyDate:
                    <asp:TextBox ID="ModifyDateTextBox" runat="server" Text='<%# Bind("ModifyDate") %>' />
                    <br />
                    Barcode1:
                    <asp:TextBox ID="Barcode1TextBox" runat="server" Text='<%# Bind("Barcode1") %>' />
                    <br />
                    Barcode2:
                    <asp:TextBox ID="Barcode2TextBox" runat="server" Text='<%# Bind("Barcode2") %>' />
                    <br />
                    Barcode3:
                    <asp:TextBox ID="Barcode3TextBox" runat="server" Text='<%# Bind("Barcode3") %>' />
                    <br />
                    Barcode4:
                    <asp:TextBox ID="Barcode4TextBox" runat="server" Text='<%# Bind("Barcode4") %>' />
                    <br />
                    Barcode5:
                    <asp:TextBox ID="Barcode5TextBox" runat="server" Text='<%# Bind("Barcode5") %>' />
                    <br />
                    <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
                    &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                </EditItemTemplate>
                <InsertItemTemplate>
                    ProductID:
                    <asp:TextBox ID="ProductIDTextBox" runat="server" Text='<%# Bind("ProductID") %>' />
                    <br />
                    ProductName:
                    <asp:TextBox ID="ProductNameTextBox" runat="server" Text='<%# Bind("ProductName") %>' />
                    <br />
                    BrandKey:
                    <asp:TextBox ID="BrandKeyTextBox" runat="server" Text='<%# Bind("BrandKey") %>' />
                    <br />
                    CategoryKey:
                    <asp:TextBox ID="CategoryKeyTextBox" runat="server" Text='<%# Bind("CategoryKey") %>' />
                    <br />
                    UnitBuyKey:
                    <asp:TextBox ID="UnitBuyKeyTextBox" runat="server" Text='<%# Bind("UnitBuyKey") %>' />
                    <br />
                    UnitSaleKey:
                    <asp:TextBox ID="UnitSaleKeyTextBox" runat="server" Text='<%# Bind("UnitSaleKey") %>' />
                    <br />
                    UnitBuyToSale:
                    <asp:TextBox ID="UnitBuyToSaleTextBox" runat="server" Text='<%# Bind("UnitBuyToSale") %>' />
                    <br />
                    ReOrderUnit:
                    <asp:TextBox ID="ReOrderUnitTextBox" runat="server" Text='<%# Bind("ReOrderUnit") %>' />
                    <br />
                    SalePrice:
                    <asp:TextBox ID="SalePriceTextBox" runat="server" Text='<%# Bind("SalePrice") %>' />
                    <br />
                    SizeDescription:
                    <asp:TextBox ID="SizeDescriptionTextBox" runat="server" Text='<%# Bind("SizeDescription") %>' />
                    <br />
                    UserModify:
                    <asp:TextBox ID="UserModifyTextBox" runat="server" Text='<%# Bind("UserModify") %>' />
                    <br />
                    ModifyDate:
                    <asp:TextBox ID="ModifyDateTextBox" runat="server" Text='<%# Bind("ModifyDate") %>' />
                    <br />
                    Barcode1:
                    <asp:TextBox ID="Barcode1TextBox" runat="server" Text='<%# Bind("Barcode1") %>' />
                    <br />
                    Barcode2:
                    <asp:TextBox ID="Barcode2TextBox" runat="server" Text='<%# Bind("Barcode2") %>' />
                    <br />
                    Barcode3:
                    <asp:TextBox ID="Barcode3TextBox" runat="server" Text='<%# Bind("Barcode3") %>' />
                    <br />
                    Barcode4:
                    <asp:TextBox ID="Barcode4TextBox" runat="server" Text='<%# Bind("Barcode4") %>' />
                    <br />
                    Barcode5:
                    <asp:TextBox ID="Barcode5TextBox" runat="server" Text='<%# Bind("Barcode5") %>' />
                    <br />
                    <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
                    &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                </InsertItemTemplate>
                <ItemTemplate>
                    ProductID:
                    <asp:Label ID="ProductIDLabel" runat="server" Text='<%# Bind("ProductID") %>' />
                    <br />
                    ProductName:
                    <asp:Label ID="ProductNameLabel" runat="server" Text='<%# Bind("ProductName") %>' />
                    <br />
                    BrandKey:
                    <asp:Label ID="BrandKeyLabel" runat="server" Text='<%# Bind("BrandKey") %>' />
                    <br />
                    CategoryKey:
                    <asp:Label ID="CategoryKeyLabel" runat="server" Text='<%# Bind("CategoryKey") %>' />
                    <br />
                    UnitBuyKey:
                    <asp:Label ID="UnitBuyKeyLabel" runat="server" Text='<%# Bind("UnitBuyKey") %>' />
                    <br />
                    UnitSaleKey:
                    <asp:Label ID="UnitSaleKeyLabel" runat="server" Text='<%# Bind("UnitSaleKey") %>' />
                    <br />
                    UnitBuyToSale:
                    <asp:Label ID="UnitBuyToSaleLabel" runat="server" Text='<%# Bind("UnitBuyToSale") %>' />
                    <br />
                    ReOrderUnit:
                    <asp:Label ID="ReOrderUnitLabel" runat="server" Text='<%# Bind("ReOrderUnit") %>' />
                    <br />
                    SalePrice:
                    <asp:Label ID="SalePriceLabel" runat="server" Text='<%# Bind("SalePrice") %>' />
                    <br />
                    SizeDescription:
                    <asp:Label ID="SizeDescriptionLabel" runat="server" Text='<%# Bind("SizeDescription") %>' />
                    <br />
                    UserModify:
                    <asp:Label ID="UserModifyLabel" runat="server" Text='<%# Bind("UserModify") %>' />
                    <br />
                    ModifyDate:
                    <asp:Label ID="ModifyDateLabel" runat="server" Text='<%# Bind("ModifyDate") %>' />
                    <br />
                    Barcode1:
                    <asp:Label ID="Barcode1Label" runat="server" Text='<%# Bind("Barcode1") %>' />
                    <br />
                    Barcode2:
                    <asp:Label ID="Barcode2Label" runat="server" Text='<%# Bind("Barcode2") %>' />
                    <br />
                    Barcode3:
                    <asp:Label ID="Barcode3Label" runat="server" Text='<%# Bind("Barcode3") %>' />
                    <br />
                    Barcode4:
                    <asp:Label ID="Barcode4Label" runat="server" Text='<%# Bind("Barcode4") %>' />
                    <br />
                    Barcode5:
                    <asp:Label ID="Barcode5Label" runat="server" Text='<%# Bind("Barcode5") %>' />
                    <br />

                </ItemTemplate>
            </asp:FormView>
            <asp:SqlDataSource ID="ProductDS" runat="server" ConnectionString="<%$ ConnectionStrings:ASPNET_SAMPLEDBConnectionString %>" InsertCommand="UPDATE Brand SET brandname = @brandname, description = @description, usermodify = 'Admin', modifydate = GETDATE() WHERE (brandkey = @BrandKey)" SelectCommand="SELECT * FROM [Product]" UpdateCommand="UPDATE Brand SET  ProductName = @ProductName  ,  BrandKey = @BrandKey  ,  CategoryKey = @CategoryKey  ,  UnitBuyKey = @UnitBuyKey  ,  UnitSaleKey = @UnitSaleKey ,  UnitBuyToSale = @UnitBuyToSale   ,  ReOrderUnit = @ReOrderUnit  ,  Barcode5 = @Barcode5  ,  Barcode4 = @Barcode4   ,  Barcode3 = @Barcode3  ,  Barcode2 = @Barcode2 ,  Barcode1 =@Barcode1    ,  modifydate = GETDATE()  ,  usermodify = 'Admin',  SizeDescription = @SizeDescription ,  SalePrice  = @SalePrice   WHERE (ProductID = @ProductID)">
                <InsertParameters>
                    <asp:Parameter Name="brandname" />
                    <asp:Parameter Name="description" />
                    <asp:Parameter Name="BrandKey" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="ProductName" />
                    <asp:Parameter Name="BrandKey" />
                    <asp:Parameter Name="CategoryKey" />
                    <asp:Parameter Name="UnitBuyKey" />
                    <asp:Parameter Name="UnitSaleKey" />
                    <asp:Parameter Name="UnitBuyToSale" />
                    <asp:Parameter Name="ReOrderUnit" />
                    <asp:Parameter Name="Barcode5" />
                    <asp:Parameter Name="Barcode4" />
                    <asp:Parameter Name="Barcode3" />
                    <asp:Parameter Name="Barcode2" />
                    <asp:Parameter Name="Barcode1" />
                    <asp:Parameter Name="SizeDescription" />
                    <asp:Parameter Name="SalePrice" />
                    <asp:Parameter Name="ProductID" />
                </UpdateParameters>
            </asp:SqlDataSource>
        </div>
    </form>
</body>
</html>
