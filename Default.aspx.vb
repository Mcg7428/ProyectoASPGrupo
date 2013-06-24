
Partial Class _Default
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load ''Si esta con la secion iniciada lo redicciona a la pagina principal
        If Session("Conectado") = "Yes" Then ''comprobar si esta conectado
            Response.Redirect("DefaultMaster.aspx") ''pagina de inicio
        End If
    End Sub



    Protected Sub ImageButton1_Click(ByVal sender As Object, ByVal e As System.Web.UI.ImageClickEventArgs) Handles ImageButton1.Click ''Inicia secion y redireciona a la pagina principal O manda error 
        Dim obj As New conexionSQLServer ''Crea coneccion
        Dim texto As String = "SELECT * FROM Usuario WHERE USUARIO = '" & TextBox1.Text & "' and CLAVE = '" & TextBox2.Text & "'" ''Consulta
        obj.conectar() ''Se conecta 
        obj.Obtener(texto)  ''Realiza la coneccion
        If obj.Arreglo.HasRows = True Then ''hay algun usuario con lass carrecticas
            obj.Arreglo.Read() ''busca la datos

            ''Anade informacion a la ssecion
            Session("Usuario") = obj.Arreglo("NOMBRE") ''Nombre de usuario
            Session("Cargo") = obj.Arreglo("CARGO") ''Los cargo o permiso
            Session("Departamento") = obj.Arreglo("DEPARTAMENTO") ''Departamento que trabaja
            Session("Conectado") = "Yes" ''opcion que esta conectado

            obj.desconectar() ''Se cierra a coneccion''

            Response.Redirect("~/DefaultMaster.aspx") ''enviar a pagina pirncipal
        Else
            Label2.Text = "Error Intente de nuevo" ''envia el error
        End If

    End Sub

End Class
