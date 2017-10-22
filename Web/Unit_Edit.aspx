<%@ Page Language="VB" AutoEventWireup="false" CodeFile="Unit_Edit.aspx.vb" Inherits="Web_Unit_Edit" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
         <link href="css/mygrid.css" type="text/css" rel="stylesheet" />
</head>
<body  style="background-image: url('img/bg.jpg');">
    <form id="form1" runat="server">
        <div>
            <asp:FormView ID="fvEdit" runat="server" DataSourceID="unitDS" DataKeyNames="UnitKey">
                <EditItemTemplate>
                    UnitName:
                    <asp:TextBox ID="UnitNameTextBox" runat="server" Text='<%# Bind("UnitName") %>' />
                    <br />
                    UnitABBR:
                    <asp:TextBox ID="UnitABBRTextBox" runat="server" Text='<%# Bind("UnitABBR") %>' />
                    <br />
                    UserModify:
                    <asp:TextBox ID="UserModifyTextBox" runat="server" Text='<%# Bind("UserModify") %>' />
                    <br />
                    <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
                    &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                </EditItemTemplate>
                <InsertItemTemplate>
                    UnitName:
                    <asp:TextBox ID="UnitNameTextBox" runat="server" Text='<%# Bind("UnitName") %>' />
                    <br />
                    UnitABBR:
                    <asp:TextBox ID="UnitABBRTextBox" runat="server" Text='<%# Bind("UnitABBR") %>' />
                    <br />
                    UserModify:
                    <asp:TextBox ID="UserModifyTextBox" runat="server" Text='<%# Bind("UserModify") %>' />
                    <br />
                    <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
                    &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                </InsertItemTemplate>
                <ItemTemplate>
                    UnitName:
                    <asp:Label ID="UnitNameLabel" runat="server" Text='<%# Bind("UnitName") %>' />
                    <br />
                    UnitABBR:
                    <asp:Label ID="UnitABBRLabel" runat="server" Text='<%# Bind("UnitABBR") %>' />
                    <br />
                    UserModify:
                    <asp:Label ID="UserModifyLabel" runat="server" Text='<%# Bind("UserModify") %>' />
                    <br />
                </ItemTemplate>
            </asp:FormView>

            <asp:Button ID="Button1" runat="server" PostBackUrl="UnitData.aspx" Text="Back" />

            <asp:SqlDataSource ID="unitDS" runat="server" ConnectionString="<%$ ConnectionStrings:ASPNET_SAMPLEDBConnectionString %>" SelectCommand="SELECT * FROM [Unit]" UpdateCommand="UPDATE unit SET unitname = @unitname, unitABBR = @unitABBR, usermodify = 'Admin', modifydate = GETDATE() WHERE (UnitKey = @UnitKey)">
                <UpdateParameters>
                    <asp:Parameter Name="Unitname" />
                    <asp:Parameter Name="UnitABBR" />
                    <asp:Parameter Name="UnitKey" />
                </UpdateParameters>
            </asp:SqlDataSource>
        </div>
    </form>
</body>
</html>
