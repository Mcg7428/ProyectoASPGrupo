
Partial Class AgregarUsuario
    Inherits System.Web.UI.Page
    Dim cnn As New conexionSQLServer


    Protected Sub Button1_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button1.Click

        Dim iduser As String
        Dim numemp As String = "04" ''resolver sacar numero de base de dato anterior 
        iduser = DropDownList2.Text + numemp

        ''nos conectamos a la base de datos
        cnn.conectar()
        iduser = DropDownList2.Text + numemp

        ''enviamos la consulta sql a la funcion si es correcta devuelve true y lanza mensaje "Registro almacenado"
        If cnn.consulta("INSERT INTO Usuario values('" & iduser & "','" & TextBox1.Text & "','" & DropDownList1.Text & "','" & DropDownList2.Text & "','" & TextBox2.Text & "','" & TextBox3.Text & "','" & TextBox5.Text & "','" & TextBox6.Text & "','" & TextBox7.Text & "')") Then
            MsgBox("Registro almacenado ID_USUARIO es : " & iduser)
            TextBox1.Text = Nothing
            TextBox2.Text = Nothing
            TextBox3.Text = Nothing
            TextBox4.Text = Nothing
            TextBox5.Text = Nothing
            TextBox6.Text = Nothing
            TextBox7.Text = Nothing

            ''en caso de error la funcion consulta devuelve false y lanza mensaje "No se pudo almacenar el registro"
        Else
            MsgBox("No se pudo almacenar el registro")
        End If
    End Sub


End Class
