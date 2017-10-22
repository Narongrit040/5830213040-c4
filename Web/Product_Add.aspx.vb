
Partial Class Web_Product_Add
    Inherits System.Web.UI.Page

    Private Sub Web_Product_Add_Load(sender As Object, e As EventArgs) Handles Me.Load
        Response.Redirect("ProductData.aspx")
    End Sub

    Private Sub productDS_Inserted(sender As Object, e As SqlDataSourceStatusEventArgs) Handles productDS.Inserted
        If Page.IsPostBack = False Then
            fvPro.ChangeMode(FormViewMode.Insert)
        End If
    End Sub
    Protected Sub Page_Load(sender As Object, e As EventArgs) Handles Me.Load

    End Sub
End Class
