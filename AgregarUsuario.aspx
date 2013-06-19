<%@ Page Title="" Language="VB" MasterPageFile="~/Usuarios.master" AutoEventWireup="false" CodeFile="AgregarUsuario.aspx.vb" Inherits="AgregarUsuario" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder11" Runat="Server">
    <table style="width: 100%;">
    <tr>
        <td class="style1" style="width: 112px">
            &nbsp;</td>
        <td class="style2" colspan="2">
            Rigistro de Usuarios</td>
    </tr>
    <tr>
        <td class="style1" style="width: 112px">
            Nombre</td>
        <td class="style2" style="width: 195px">
            <asp:TextBox ID="TextBox1" runat="server" Width="195px"></asp:TextBox>
        </td>
        <td>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                ControlToValidate="TextBox1" ErrorMessage="*"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td style="height: 22px; width: 112px">
            Cargo
        </td>
        <td class="style2" style="height: 22px; width: 195px">
            <asp:DropDownList ID="DropDownList1" runat="server">
            </asp:DropDownList>
        </td>
        <td style="height: 22px">
        </td>
    </tr>
    <tr>
        <td style="height: 22px; width: 112px">
            Departamento</td>
        <td class="style2" style="height: 22px; width: 195px">
            <asp:DropDownList ID="DropDownList2" runat="server">
            </asp:DropDownList>
        </td>
        <td style="height: 22px">
            &nbsp;</td>
    </tr>
    <tr>
        <td style="height: 22px; width: 112px">
            Usuario</td>
        <td class="style2" style="height: 22px; width: 195px">
            <asp:TextBox ID="TextBox2" runat="server" Width="195px"></asp:TextBox>
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
            <asp:TextBox ID="TextBox3" runat="server" Width="195px"></asp:TextBox>
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
            <asp:TextBox ID="TextBox4" runat="server" Width="195px"></asp:TextBox>
        </td>
        <td style="height: 22px">
            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                ControlToValidate="TextBox4" ErrorMessage="*"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td style="height: 22px; width: 112px">
            Pregunta Secreta</td>
        <td class="style2" style="height: 22px; width: 195px">
            <asp:TextBox ID="TextBox5" runat="server" Width="195px"></asp:TextBox>
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
            <asp:TextBox ID="TextBox6" runat="server" Width="196px"></asp:TextBox>
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
            <asp:TextBox ID="TextBox7" runat="server" Width="195px"></asp:TextBox>
        </td>
        <td style="height: 22px">
            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                ControlToValidate="TextBox7" ErrorMessage="*"></asp:RegularExpressionValidator>
        </td>
    </tr>
    <tr>
        <td style="height: 22px; width: 112px">
            &nbsp;</td>
        <td class="style2" style="height: 22px; width: 195px">
            <asp:Button ID="Button1" runat="server" Text="Agregar" />
        </td>
        <td style="height: 22px">
            &nbsp;</td>
    </tr>
    <tr>
        <td style="height: 22px; width: 112px">
            &nbsp;</td>
        <td class="style2" style="height: 22px; width: 195px">
            ID Generado:</td>
        <td style="height: 22px">
            <asp:Label ID="Label1" runat="server"></asp:Label>
        </td>
    </tr>
</table>
</asp:Content>

