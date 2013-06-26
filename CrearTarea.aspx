<%@ Page Title="" Language="VB" MasterPageFile="~/MPMantenimiento.master" AutoEventWireup="false" CodeFile="CrearTarea.aspx.vb" Inherits="CrearTarea" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder12" Runat="Server">
    <table style="width:100%;" bgcolor="Silver">
    <tr>
        <td colspan="3" align="center">
            <asp:Label ID="Label2" runat="server" Font-Bold="True" Font-Size="XX-Large" 
                Text="Crear TAREA"></asp:Label>
        </td>
    </tr>
    <tr>
        <td style="width: 152px">
            Nombre Tarea</td>
        <td style="width: 151px">
            <asp:TextBox ID="TextBox2" runat="server" BackColor="Silver" Width="178px"></asp:TextBox>
        </td>
        <td>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                ErrorMessage="Nombre Requerido" ControlToValidate="TextBox2"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td style="width: 152px">
            Numero de Sub Tareas Asignadas</td>
        <td style="width: 151px">
            <asp:Label ID="Label1" runat="server"></asp:Label>
        </td>
        <td>
            <asp:Button ID="Button2" runat="server" Text="Registrar Nombre Tarea" />
        </td>
    </tr>
    <tr>
        <td style="width: 152px; height: 73px">
        </td>
        <td style="width: 151px; height: 73px">
            <asp:ListBox ID="ListBox1" runat="server" Width="142px" 
                DataSourceID="SqlDataSource1" DataTextField="DESCRIPCION" 
                DataValueField="DESCRIPCION" BackColor="Silver"></asp:ListBox>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                ConnectionString="<%$ ConnectionStrings:BD_MantenimientoASPConnectionString %>" 
                SelectCommand="SELECT [DESCRIPCION] FROM [SubTarea_Independiente]">
            </asp:SqlDataSource>
        </td>
        <td style="height: 73px">
            <asp:ListBox ID="ListBox2" runat="server" Width="146px" BackColor="Silver"></asp:ListBox>
        </td>
    </tr>
    <tr>
        <td style="width: 152px">
            &nbsp;</td>
        <td style="width: 151px">
            <asp:Button ID="Button1" runat="server" Text="Agregar Sub Tarea" 
                Enabled="False" BackColor="Silver" BorderColor="Silver" />
        </td>
        <td>
            &nbsp;</td>
    </tr>
</table>
</asp:Content>

