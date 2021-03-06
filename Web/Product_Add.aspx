﻿<%@ Page Language="VB" AutoEventWireup="false" CodeFile="Product_Add.aspx.vb" Inherits="Web_Product_Add" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
      <link href="css/mygrid.css" type="text/css" rel="stylesheet" />
</head>
<body style="background-image: url('img/bg.jpg');">
    <form id="form1" runat="server">
       <center> <div>
            <asp:FormView ID="FormView1" runat="server" DataSourceID="ProductDS">
                <EditItemTemplate>
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
                    <asp:LinkButton ID="NewButton" runat="server" CausesValidation="False" CommandName="New" Text="New" />
                </ItemTemplate>
            </asp:FormView>
            <asp:Button ID="Button1" runat="server" PostBackUrl="ProductData.aspx" Text="Back" />
            <asp:SqlDataSource ID="ProductDS" runat="server" ConnectionString="<%$ ConnectionStrings:ASPNET_SAMPLEDBConnectionString %>" InsertCommand="INSERT INTO PRODUCT(PRODUCTNAME , BRANKEY,CATEGORYKEY ,UNITBUYKEY,UNITSALEKEY,UNITBUYTOSALE,REORDERUNIT,SALEPRICE,SIZEDESCRIPTION, USERMODIFY,ModifyDate = Getdate())
VALUES (@PRODUCTNAME , @BRANKEY,@CATEGORYKEY ,@UNITBUYKEY,@UNITSALEKEY,@UNITBUYTOSALE,@REORDERUNIT,@SALEPRICE,@SIZEDESCRIPTION, @USERMODIFY,@ModifyDate)" SelectCommand="SELECT [ProductName], [BrandKey], [CategoryKey], [UnitBuyKey], [UnitSaleKey], [UnitBuyToSale], [ReOrderUnit], [SalePrice], [SizeDescription], [UserModify], [ModifyDate], [Barcode1], [Barcode2], [Barcode3], [Barcode4], [Barcode5] FROM [Product]">
                <InsertParameters>
                    <asp:Parameter Name="PRODUCTNAME" />
                    <asp:Parameter Name="BRANKEY" />
                    <asp:Parameter Name="CATEGORYKEY" />
                    <asp:Parameter Name="UNITBUYKEY" />
                    <asp:Parameter Name="UNITSALEKEY" />
                    <asp:Parameter Name="UNITBUYTOSALE" />
                    <asp:Parameter Name="REORDERUNIT" />
                    <asp:Parameter Name="SALEPRICE" />
                    <asp:Parameter Name="SIZEDESCRIPTION" />
                    <asp:Parameter Name="USERMODIFY" />
                    <asp:Parameter Name="ModifyDate" />
                </InsertParameters>
            </asp:SqlDataSource>
        </div>
    </form>
</body>
</html>
