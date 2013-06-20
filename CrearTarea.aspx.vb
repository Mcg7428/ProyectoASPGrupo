
Partial Class CrearTarea
    Inherits System.Web.UI.Page
    Dim cnn As New conexionSQLServer

    Protected Sub Button2_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button2.Click

        cnn.conectar()

        Dim contador As Integer = 0
        ''enviamos la consulta sql a la funcion si es correcta devuelve true y lanza mensaje "Registro almacenado"

        If cnn.consulta("INSERT INTO Tarea_Individual values('" & TextBox2.Text & "','" & Val(contador) & "')") Then
            MsgBox("Registro almacenado")


            ''en caso de error la funcion consulta devuelve false y lanza mensaje "No se pudo almacenar el registro"
        Else
            MsgBox("No se pudo almacenar el registro")
        End If




        Button1.Enabled = True
    End Sub

    Protected Sub Button1_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button1.Click

    End Sub
End Class
