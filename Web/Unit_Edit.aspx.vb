﻿
Partial Class Web_Unit_Edit
    Inherits System.Web.UI.Page

    Private Sub unitDS_Updated(sender As Object, e As SqlDataSourceStatusEventArgs) Handles unitDS.Updated
        Response.Redirect("UnitData.aspx")
    End Sub

    Private Sub Web_Unit_Edit_Load(sender As Object, e As EventArgs) Handles Me.Load
        If Page.IsPostBack = False Then
            fvEdit.ChangeMode(FormViewMode.Edit)
        End If
    End Sub
End Class
