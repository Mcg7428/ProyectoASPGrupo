Imports System.Data.SqlClient
Imports System.Data

Partial Class EliminarActualizar
    Inherits System.Web.UI.Page
    Public cn As SqlClient.SqlConnection

    Private Property comandoSqlE As SqlCommand

    Protected Sub Button1_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button1.Click
        ''Conexion a base de datos para extraccion de informacion
        cn = New SqlClient.SqlConnection() ''inicializamos el objeto conexion
        ''ahora pasamos la cadena de conexion al objeto conexion con nuestros datos
        cn.ConnectionString = "Server=ATHENA64; database=BD_MantenimientoASP; trusted_connection=yes" '' cambiar el servidor para comite a   Server=ATHENA64
        cn.Open() ''con ela funcion open abrimos la conexion

        Dim consulta As String = "select * from Usuario where ID_USUARIO = '" + DropDownList1.Text + "'" ''consulta a la base de datos
        comandoSqlE = New SqlClient.SqlCommand(consulta, cn) '' creando objeto consulta a la base de datos con objeto conexio

        Dim da As SqlDataAdapter = New SqlDataAdapter(comandoSqlE) 'CREANDO ADAPTER 
        Dim ds As DataSet   'CREANDO DATA SETE 
        ds = New DataSet          ' INICIALIZANDO OBJETO
        ds.Tables.Add("Usuario")    'DEFINIENDO TABLAS EL DATASET
        da.Fill(ds.Tables("Usuario"))  'LLENANDO DATOS DE TABLA

        Dim oTabla As DataTable        ''=OBJETO TABLA PARA GUARDAR DATOS 
        oTabla = ds.Tables("Usuario")  'LLENADO DE LA TABLA

        Dim FilaMpio As DataRow
        For Each FilaMpio In oTabla.Rows
            TextBox1.Text = FilaMpio.Item("NOMBRE")
            TextBox2.Text = FilaMpio.Item("CARGO")
            TextBox3.Text = FilaMpio.Item("DEPARTAMENTO")
            TextBox4.Text = FilaMpio.Item("USUARIO")
            TextBox5.Text = FilaMpio.Item("CLAVE")
            MsgBox(TextBox5.Text)
            TextBox6.Text = FilaMpio.Item("CLAVE")
            TextBox7.Text = FilaMpio.Item("PREGUNTA_SECRETA")
            TextBox8.Text = FilaMpio.Item("RESPUESTA_SECRETA")
            TextBox9.Text = FilaMpio.Item("EMAIL")
        Next

        cn.Close()


    End Sub
End Class
