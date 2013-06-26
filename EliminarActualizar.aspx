<%@ Page Title="" Language="VB" MasterPageFile="~/Usuarios.master" AutoEventWireup="false" CodeFile="EliminarActualizar.aspx.vb" Inherits="EliminarActualizar" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder11" Runat="Server">
    <table style="width:100%;" bgcolor="Silver">
    <tr>
        <td align="center" colspan="3">
            <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="XX-Large" 
                Text="Eliminar o Editar Usuarios"></asp:Label>
        </td>
    </tr>
    <tr>
        <td style="height: 36px">
            ID-USUARIO</td>
        <td align="center" style="width: 196px; height: 36px;">
            <asp:DropDownList ID="DropDownList1" runat="server" Height="17px" Width="165px" 
                DataSourceID="SqlDataSource1" DataTextField="ID_USUARIO" 
                DataValueField="ID_USUARIO" BackColor="Silver">
            </asp:DropDownList>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                ConnectionString="<%$ ConnectionStrings:BD_MantenimientoASPConnectionString %>" 
                SelectCommand="SELECT [ID_USUARIO] FROM [Usuario]"></asp:SqlDataSource>
        </td>
        <td style="height: 36px">
            <asp:Button ID="Button1" runat="server" Text="Buscar" BackColor="Silver" 
                BorderColor="Silver" Width="169px" />
        </td>
    </tr>
    <tr>
        <td style="height: 50px" colspan="3">
            </td>
    </tr>
    <tr>
        <td class="style1" style="width: 112px">
            Nombre</td>
        <td class="style2" style="height: 22px; width: 196px" align="center">
            <asp:TextBox ID="TextBox1" runat="server" Width="175px" BackColor="Silver"></asp:TextBox>
        </td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td style="height: 22px; width: 112px">
            Cargo
        </td>
        <td class="style2" style="height: 22px; width: 196px" align="center">
            <asp:TextBox ID="TextBox2" runat="server" Width="175px" BackColor="Silver"></asp:TextBox>
        </td>
        <td>
            <asp:DropDownList ID="DropDownList2" runat="server" BackColor="Silver">
                <asp:ListItem Selected="True">Empleado</asp:ListItem>
                <asp:ListItem>SuperVisor</asp:ListItem>
                <asp:ListItem Value="Jefe">Jefe</asp:ListItem>
                <asp:ListItem>SuperUsuario</asp:ListItem>
            </asp:DropDownList>
        </td>
    </tr>
    <tr>
        <td style="height: 23px; width: 112px">
            Departamento</td>
        <td class="style2" style="height: 23px; width: 196px" align="center">
            <asp:TextBox ID="TextBox3" runat="server" Width="175px" BackColor="Silver"></asp:TextBox>
        </td>
        <td style="height: 23px">
            <asp:DropDownList ID="DropDownList3" runat="server" 
                DataSourceID="SqlDataSource2" DataTextField="ID_DEPTO" 
                DataValueField="ID_DEPTO" BackColor="Silver">
            </asp:DropDownList>
            <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
                ConnectionString="<%$ ConnectionStrings:BD_MantenimientoASPConnectionString %>" 
                SelectCommand="SELECT [ID_DEPTO] FROM [Departamento]"></asp:SqlDataSource>
        </td>
    </tr>
    <tr>
        <td style="height: 22px; width: 112px">
            Usuario</td>
        <td class="style2" style="height: 22px; width: 196px" align="center">
            <asp:TextBox ID="TextBox4" runat="server" Width="175px" BackColor="Silver"></asp:TextBox>
        </td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td style="height: 22px; width: 112px">
            Clave</td>
        <td class="style2" style="height: 22px; width: 196px" align="center">
            <asp:TextBox ID="TextBox5" runat="server" Width="175px" TextMode="Password" 
                BackColor="Silver"></asp:TextBox>
        </td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td style="height: 22px; width: 112px">
            Confirmar Clave</td>
        <td class="style2" style="height: 22px; width: 196px" align="center">
            <asp:TextBox ID="TextBox6" runat="server" Width="175px" TextMode="Password" 
                BackColor="Silver"></asp:TextBox>
        </td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td style="height: 22px; width: 112px">
            Pregunta Secreta</td>
        <td class="style2" style="height: 22px; width: 196px" align="center">
            <asp:TextBox ID="TextBox7" runat="server" Width="175px" BackColor="Silver"></asp:TextBox>
        </td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td style="height: 22px; width: 112px">
            Respuesta Secreta</td>
        <td class="style2" style="height: 22px; width: 196px" align="center">
            <asp:TextBox ID="TextBox8" runat="server" Width="175px" BackColor="Silver"></asp:TextBox>
        </td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td style="height: 28px; width: 112px">
            Email</td>
        <td style="height: 28px; width: 196px;" align="center">
            <asp:TextBox ID="TextBox9" runat="server" Width="175px" BackColor="Silver"></asp:TextBox>
        </td>
        <td style="height: 28px">
            </td>
    </tr>
    <tr>
        <td style="height: 34px">
            </td>
        <td style="width: 196px; height: 34px" align="center">
            <asp:Button ID="Button2" runat="server" Text="Actualizar" BackColor="Silver" 
                BorderColor="Silver" Width="70px" />
            <asp:Button ID="Button3" runat="server" Text="Eliminar" BackColor="Silver" 
                BorderColor="Silver" Width="70px" />
        </td>
        <td style="height: 34px">
        </td>
    </tr>
</table>
</asp:Content>

