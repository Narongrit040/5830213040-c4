<%@ Page Language="VB" AutoEventWireup="false" CodeFile="index.aspx.vb" Inherits="Web_index" MasterPageFile="" %>

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
           <h1> DATA SYSTEM </h1><br />
              <h2> Narongrit Bunsaman 5830213040 </h2><br />
            <h3>
            <br />
            <br dir="ltr" />
            <asp:LinkButton ID="LinkButton1" runat="server" Font-Size="Medium" Font-Underline="False" ForeColor="#FF3300" PostBackUrl="BrandData.aspx">Brand</asp:LinkButton>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:LinkButton ID="LinkButton2" runat="server" Font-Size="Medium" Font-Underline="False" ForeColor="#FF3300" PostBackUrl="CategoryData.aspx">Category</asp:LinkButton>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:LinkButton ID="LinkButton3" runat="server" Font-Size="Medium" Font-Underline="False" ForeColor="#FF3300" PostBackUrl="ProductData.aspx">Product</asp:LinkButton>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:LinkButton ID="LinkButton4" runat="server" Font-Size="Medium" Font-Underline="False" ForeColor="#FF3300" PostBackUrl="UnitData.aspx">Unit</asp:LinkButton>
         </h3>  </div>
        </center>
    </form>
</body>
</html>
