<%@ Page Language="VB" AutoEventWireup="false" CodeFile="Unit_Add.aspx.vb" Inherits="Web_Unit_Add" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:FormView ID="FormView1" runat="server" DataKeyNames="unitkey" DataSourceID="UnitDS">
                <EditItemTemplate>
                    UnitKey:
                    <asp:Label ID="UnitKeyLabel1" runat="server" Text='<%# Eval("UnitKey") %>' />
                    <br />
                    UnitName:
                    <asp:TextBox ID="UnitNameTextBox" runat="server" Text='<%# Bind("UnitName") %>' />
                    <br />
                    UnitABBR:
                    <asp:TextBox ID="UnitABBRTextBox" runat="server" Text='<%# Bind("UnitABBR") %>' />
                    <br />
                    UserModify:
                    <asp:TextBox ID="UserModifyTextBox" runat="server" Text='<%# Bind("UserModify") %>' />
                    <br />
                    ModifyDate:
                    <asp:TextBox ID="ModifyDateTextBox" runat="server" Text='<%# Bind("ModifyDate") %>' />
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
                    UnitKey:
                    <asp:Label ID="UnitKeyLabel" runat="server" Text='<%# Eval("UnitKey") %>' />
                    <br />
                    UnitName:
                    <asp:Label ID="UnitNameLabel" runat="server" Text='<%# Bind("UnitName") %>' />
                    <br />
                    UnitABBR:
                    <asp:Label ID="UnitABBRLabel" runat="server" Text='<%# Bind("UnitABBR") %>' />
                    <br />
                    UserModify:
                    <asp:Label ID="UserModifyLabel" runat="server" Text='<%# Bind("UserModify") %>' />
                    <br />
                    ModifyDate:
                    <asp:Label ID="ModifyDateLabel" runat="server" Text='<%# Bind("ModifyDate") %>' />
                    <br />
                    <asp:LinkButton ID="NewButton" runat="server" CausesValidation="False" CommandName="New" Text="New" />
                </ItemTemplate>
            </asp:FormView>
            <asp:SqlDataSource ID="UnitDS" runat="server" ConnectionString="<%$ ConnectionStrings:ASPNET_SAMPLEDBConnectionString %>" InsertCommand="INSERT INTO UNIT (UNITNAME, UNITABBR, USERMODIFY)
VALUES (@UNITNAME, @DESCRIPTION, @USERMODIFY)

" SelectCommand="SELECT * FROM [Unit]">
                <InsertParameters>
                    <asp:Parameter Name="UNITNAME" />
                    <asp:Parameter Name="DESCRIPTION" />
                    <asp:Parameter Name="USERMODIFY" />
                </InsertParameters>
            </asp:SqlDataSource>
        </div>
    </form>
</body>
</html>
