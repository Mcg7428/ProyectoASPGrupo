Imports Microsoft.VisualBasic
Imports System.Data

Public Class conexionSQLServer
    ''creamos el objeto de conexion
    Public conexion As SqlClient.SqlConnection
    ''metodo para conectanos a la base de datos
    Public Sub conectar()
        conexion = New SqlClient.SqlConnection() ''inicializamos el objeto conexion
        ''ahora pasamos la cadena de conexion al objeto conexion con nuestros datos
        conexion.ConnectionString = "Server=ATHENA64; database=BD_MantenimientoASP; trusted_connection=yes" '' cambiar el servidor para comite a   Server=ATHENA64
        conexion.Open() ''con la funcion open abrimos la conexion
    End Sub

    'Data Source=ATHENA64;Initial Catalog=BD_GUIA_4;Integrated Security=True
End Class

