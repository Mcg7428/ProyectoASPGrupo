<%@ Page Title="" Language="VB" MasterPageFile="~/Usuarios.master" AutoEventWireup="false" CodeFile="AgregarUsuario.aspx.vb" Inherits="AgregarUsuario" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder11" Runat="Server">
    <table style="width: 100%;" bgcolor="Silver">
    <tr>
        <td class="style1" style="height: 44px;" colspan="3">
            <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="XX-Large" 
                Text="Rigistro de Usuarios"></asp:Label>
        </td>
    </tr>
    <tr>
        <td class="style1" style="width: 112px; height: 30px;">
            Nombre</td>
        <td class="style2" style="width: 195px; height: 30px;">
            <asp:TextBox ID="TextBox1" runat="server" Width="195px" BackColor="Silver"></asp:TextBox>
        </td>
        <td style="height: 30px">
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                ControlToValidate="TextBox1" ErrorMessage="*"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td style="height: 22px; width: 112px">
            Cargo
        </td>
        <td class="style2" style="height: 22px; width: 195px">
            <asp:DropDownList ID="DropDownList1" runat="server" BackColor="Silver">
                <asp:ListItem Selected="True">Empleado</asp:ListItem>
                <asp:ListItem>SuperVisor</asp:ListItem>
                <asp:ListItem Value="Jefe">Jefe</asp:ListItem>
                <asp:ListItem>SuperUsuario</asp:ListItem>
            </asp:DropDownList>
        </td>
        <td style="height: 22px">
        </td>
    </tr>
    <tr>
        <td style="height: 22px; width: 112px">
            Departamento</td>
        <td class="style2" style="height: 22px; width: 195px">
            <asp:DropDownList ID="DropDownList2" runat="server" 
                DataSourceID="SqlDataSource1" DataTextField="ID_DEPTO" 
                DataValueField="ID_DEPTO" BackColor="Silver">
            </asp:DropDownList>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                ConnectionString="<%$ ConnectionStrings:BD_MantenimientoASPConnectionString %>" 
                SelectCommand="SELECT [ID_DEPTO] FROM [Departamento]"></asp:SqlDataSource>
        </td>
        <td style="height: 22px">
            &nbsp;</td>
    </tr>
    <tr>
        <td style="height: 22px; width: 112px">
            Usuario</td>
        <td class="style2" style="height: 22px; width: 195px">
            <asp:TextBox ID="TextBox2" runat="server" Width="195px" BackColor="Silver"></asp:TextBox>
        </td>
        <td style="height: 22px">
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                ControlToValidate="TextBox2" ErrorMessage="*"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td style="height: 22px; width: 112px">
            Clave</td>
        <td class="style2" style="height: 22px; width: 195px">
            <asp:TextBox ID="TextBox3" runat="server" Width="195px" TextMode="Password" 
                BackColor="Silver"></asp:TextBox>
        </td>
        <td style="height: 22px">
            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                ControlToValidate="TextBox3" ErrorMessage="*"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td style="height: 22px; width: 112px">
            Confirmar Clave</td>
        <td class="style2" style="height: 22px; width: 195px">
            <asp:TextBox ID="TextBox4" runat="server" Width="195px" TextMode="Password" 
                BackColor="Silver"></asp:TextBox>
        </td>
        <td style="height: 22px">
            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                ControlToValidate="TextBox4" ErrorMessage="*"></asp:RequiredFieldValidator>
        &nbsp;<asp:CompareValidator ID="CompareValidator1" runat="server" 
                ControlToCompare="TextBox3" ControlToValidate="TextBox4" 
                ErrorMessage="Clave no coincide"></asp:CompareValidator>
        </td>
    </tr>
    <tr>
        <td style="height: 22px; width: 112px">
            Pregunta Secreta</td>
        <td class="style2" style="height: 22px; width: 195px">
            <asp:TextBox ID="TextBox5" runat="server" Width="195px" BackColor="Silver"></asp:TextBox>
        </td>
        <td style="height: 22px">
            <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                ControlToValidate="TextBox5" ErrorMessage="*"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td style="height: 22px; width: 112px">
            Respuesta Secreta</td>
        <td class="style2" style="height: 22px; width: 195px">
            <asp:TextBox ID="TextBox6" runat="server" Width="196px" BackColor="Silver"></asp:TextBox>
        </td>
        <td style="height: 22px">
            <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" 
                ControlToValidate="TextBox6" ErrorMessage="*"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td style="height: 22px; width: 112px">
            Email</td>
        <td class="style2" style="height: 22px; width: 195px">
            <asp:TextBox ID="TextBox7" runat="server" Width="195px" BackColor="Silver"></asp:TextBox>
        </td>
        <td style="height: 22px">
            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                ControlToValidate="TextBox7" ErrorMessage="*" 
                ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
        </td>
    </tr>
    <tr>
        <td style="height: 22px; width: 112px">
            &nbsp;</td>
        <td class="style2" style="height: 22px; width: 195px">
            <asp:Button ID="Button1" runat="server" Text="Agregar" BackColor="Silver" 
                BorderColor="Silver" Width="190px" />
        </td>
        <td style="height: 22px">
            &nbsp;</td>
    </tr>
    </table>
</asp:Content>

