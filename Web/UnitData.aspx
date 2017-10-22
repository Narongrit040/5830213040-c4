<%@ Page Language="VB" AutoEventWireup="false" CodeFile="UnitData.aspx.vb" Inherits="Web_UnitData" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
      <link href="css/mygrid.css" type="text/css" rel="stylesheet" />
</head>
<body style="background-image: url('img/bg.jpg');">
    <form id="form1" runat="server">
        <center>
        <div>
            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            <asp:Button ID="Button1" runat="server" Text="Search" />
            <asp:Button ID="Button3" runat="server" PostBackUrl="Unit_Add.aspx" Text="Add Uint" />
            <br />
            <br />
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="UnitDS" AllowPaging="True" DataKeyNames="UnitKey">
                <Columns>
                    <asp:BoundField DataField="UnitName" HeaderText="UnitName" SortExpression="UnitName" />
                    <asp:BoundField DataField="UnitABBR" HeaderText="UnitABBR" SortExpression="UnitABBR" />
                    <asp:BoundField DataField="UserModify" HeaderText="UserModify" SortExpression="UserModify" />
                    <asp:BoundField DataField="ModifyDate" HeaderText="ModifyDate" SortExpression="ModifyDate" />
                    <asp:HyperLinkField DataNavigateUrlFields="UnitKey" DataNavigateUrlFormatString="Unit_Edit.aspx?UnitKey={0}" HeaderText="Edit" Text="&lt;img src='img/edit.png' /&gt;" />
                    <asp:HyperLinkField DataNavigateUrlFields="UnitKey" DataNavigateUrlFormatString="Unit_View.aspx?UnitKey={0}" HeaderText="View" Text="&lt;img src='img/view.png' /&gt;" />
                    <asp:ButtonField CommandName="delete" HeaderText="delete" Text="&lt;img src='img/delete.png' /&gt;" />
                </Columns>
                    <HeaderStyle CssClass="header" />
            <RowStyle CssClass="rows" />
            </asp:GridView>
         
            <br />
         
            <asp:Button ID="Button2" runat="server" PostBackUrl="index.aspx" Text="Back" />
            <asp:SqlDataSource ID="UnitDS" runat="server" ConnectionString="<%$ ConnectionStrings:ASPNET_SAMPLEDBConnectionString %>" SelectCommand="SELECT * 
FROM [Unit] 
WHERE UnitName LIKE '%' + ISNULL(@searchUnitName, UnitName) + '%'
ORDER BY [UnitName]" CancelSelectOnNullParameter="False" DeleteCommand="delete from unit where UnitKey = @UnitKey">
                <DeleteParameters>
                    <asp:Parameter Name="UnitKey" />
                </DeleteParameters>
                <SelectParameters>
                    <asp:ControlParameter ControlID="TextBox1" Name="searchUnitName" PropertyName="Text" />
                </SelectParameters>
            </asp:SqlDataSource>
        </div>
    </form>
</body>
</html>
