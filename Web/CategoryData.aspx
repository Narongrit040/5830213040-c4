<%@ Page Language="VB" AutoEventWireup="false" CodeFile="CategoryData.aspx.vb" Inherits="Web_CategoryData" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
     <link href="css/mygrid.css" type="text/css" rel="stylesheet" />
</head>
<body style="background-image: url('img/bg.jpg');">
   <form id="form2" runat="server">
  <center>   <div>
       
        <asp:TextBox ID="TextCategory" runat="server"></asp:TextBox>
        <asp:Button ID="searchCategory" runat="server" Text="Search" />
        <asp:Button ID="Button1" runat="server" PostBackUrl="Category_Add.aspx" Text="Add Category" />
        <br />
        <br />
        <asp:GridView ID="gvBrand" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataSourceID="CategoryDS" Width="600px" CssClass="mydatagrid">
            <Columns>
                <asp:BoundField DataField="CategoryName" HeaderText="CategoryName" SortExpression="CategoryName">
                </asp:BoundField>
                <asp:BoundField DataField="Description" HeaderText="Description" SortExpression="Description" />
                <asp:BoundField DataField="UserModify" HeaderText="UserModify" SortExpression="UserModify">
                </asp:BoundField>
                <asp:BoundField DataField="ModifyDate" HeaderText="ModifyDate" SortExpression="ModifyDate" />
                <asp:HyperLinkField DataNavigateUrlFields="CategoryKey" DataNavigateUrlFormatString="Category_Edit.aspx?CategoryKey={0}" HeaderText="Edit" Text="&lt;img src='img/edit.png' /&gt;" />
                <asp:HyperLinkField DataNavigateUrlFields="CategoryKey" DataNavigateUrlFormatString="Category_View.aspx?CategoryKey={0}" HeaderText="View" Text="&lt;img src='img/view.png' /&gt;" />
                <asp:HyperLinkField HeaderText="Delete" Text="&lt;img src='img/delete.png' /&gt;" NavigateUrl="delete" />
            </Columns>
            <HeaderStyle CssClass="header" />
            <RowStyle CssClass="rows" />
        </asp:GridView>
        <br />
        <asp:Button ID="Button2" runat="server" PostBackUrl="index.aspx" Text="Back" />
        <asp:SqlDataSource ID="CategoryDS" runat="server" ConnectionString="<%$ ConnectionStrings:ASPNET_SAMPLEDBConnectionString %>" SelectCommand="SELECT * 
FROM [Category] 
WHERE categoryName LIKE '%' + ISNULL(@searchCategoryName, categoryname) + '%'
ORDER BY [categoryname]" CancelSelectOnNullParameter="False">
            <SelectParameters>
                <asp:ControlParameter ControlID="TextCategory" Name="searchCategoryName" PropertyName="Text" />
            </SelectParameters>
        </asp:SqlDataSource>
       
        </div>
    </form>
</body>
</html>
