
Partial Class Equipos
    Inherits System.Web.UI.MasterPage

    Protected Sub ImageButton2_Click(ByVal sender As Object, ByVal e As System.Web.UI.ImageClickEventArgs) Handles ImageButton2.Click
        Response.Redirect("~/RegistrarEquipo.aspx")
    End Sub

    Protected Sub ImageButton3_Click(ByVal sender As Object, ByVal e As System.Web.UI.ImageClickEventArgs) Handles ImageButton3.Click
        Response.Redirect("~/EliminarActualizaEquipo.aspx")
    End Sub
End Class

