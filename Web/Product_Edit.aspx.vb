
Partial Class Web_Product_Edit
    Inherits System.Web.UI.Page

    Private Sub Web_Product_Edit_Load(sender As Object, e As EventArgs) Handles Me.Load
        If Page.IsPostBack = False Then
            FormView1.ChangeMode(FormViewMode.Edit)
        End If
    End Sub

    Private Sub ProductDS_Updated(sender As Object, e As SqlDataSourceStatusEventArgs) Handles ProductDS.Updated
        Response.Redirect("ProductData.aspx")
    End Sub
    Protected Sub Page_Load(sender As Object, e As EventArgs) Handles Me.Load

    End Sub
End Class
