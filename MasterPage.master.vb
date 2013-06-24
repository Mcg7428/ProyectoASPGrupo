
Partial Class MasterPage
    Inherits System.Web.UI.MasterPage

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        If Session("Conectado") <> "Yes" Then
            Response.Redirect("~/Default.aspx")
        ElseIf Session("Cargo") = "Empleado" Then
            IMante.Visible = True
        ElseIf Session("Cargo") = "SuperVisor" Then
            IMante.Visible = True
            IAdmin.Visible = True
        ElseIf Session("Cargo") = "Jefe" Then
            IMante.Visible = True
            IAdmin.Visible = True
            IUsuario.Visible = True
            IEquipo.Visible = True
        ElseIf Session("Cargo") = "SuperUsuario" Then
            IEdificio.Visible = True
            IAdmin.Visible = True
            IUsuario.Visible = True
            IUsuario.Visible = True
            IEquipo.Visible = True
            IMante.Visible = True
        Else
            Response.Redirect("~/Default.aspx")
        End If
    End Sub

End Class

