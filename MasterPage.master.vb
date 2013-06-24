
Partial Class MasterPage
    Inherits System.Web.UI.MasterPage

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        If Session("Conectado") <> "Yes" Then
            Response.Redirect("Default.aspx")
        ElseIf Session("Cargo") = "Empleado" Then
            BMante.Enabled = True
            BMante.Visible = True
        ElseIf Session("Cargo") = "SuperVisor" Then
            BMante.Enabled = True
            BMante.Visible = True
            BAdmin.Enabled = True
            BAdmin.Visible = True
        ElseIf Session("Cargo") = "Jefe" Then
            BMante.Enabled = True
            BMante.Visible = True
            BAdmin.Enabled = True
            BAdmin.Visible = True
            BUsuario.Enabled = True
            BUsuario.Visible = True
            BEquipo.Enabled = True
            BEquipo.Visible = True
        ElseIf Session("Cargo") = "SuperUsuario" Then
            BEdificio.Enabled = True
            BEdificio.Visible = True
            BAdmin.Enabled = True
            BAdmin.Visible = True
            BUsuario.Enabled = True
            BUsuario.Visible = True
            BEquipo.Enabled = True
            BEquipo.Visible = True
            BMante.Enabled = True
            BMante.Visible = True
        Else
            Response.Redirect("Default.aspx")
        End If
    End Sub

    Protected Sub BUsuario_Click(ByVal sender As Object, ByVal e As System.Web.UI.ImageClickEventArgs) Handles BUsuario.Click ''boton que envia usuarios
        Response.Redirect("DefaultUsuarios.aspx")
    End Sub

    Protected Sub BMante_Click(ByVal sender As Object, ByVal e As System.Web.UI.ImageClickEventArgs) Handles BMante.Click ''boton que envia Mantennimiento
        Response.Redirect("DefaultMantenimiento.aspx")
    End Sub

    Protected Sub BEdificio_Click(ByVal sender As Object, ByVal e As System.Web.UI.ImageClickEventArgs) Handles BEdificio.Click ''boton que envia Inmuebles
        Response.Redirect("DefaultInmuebles.aspx")
    End Sub

    Protected Sub BEquipo_Click(ByVal sender As Object, ByVal e As System.Web.UI.ImageClickEventArgs) Handles BEquipo.Click ''boton que evia equipos
        Response.Redirect("DefaultEquipos.aspx")
    End Sub
End Class

