<%@ Page Title="" Language="VB" MasterPageFile="~/Usuarios.master" AutoEventWireup="false" CodeFile="EliminarActualizar.aspx.vb" Inherits="EliminarActualizar" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder11" Runat="Server">
    <table style="width:100%;">
    <tr>
        <td>
            ID-USUARIO</td>
        <td>
            <asp:DropDownList ID="DropDownList1" runat="server" Height="16px" Width="120px">
            </asp:DropDownList>
            <asp:Button ID="Button1" runat="server" Text="Buscar" />
        </td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td>
            &nbsp;</td>
        <td class="style2" style="width: 195px">
            &nbsp;</td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td class="style1" style="width: 112px">
            Nombre</td>
        <td class="style2" style="height: 22px; width: 195px">
            <asp:TextBox ID="TextBox1" runat="server" Width="175px"></asp:TextBox>
        </td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td style="height: 22px; width: 112px">
            Cargo
        </td>
        <td class="style2" style="height: 22px; width: 195px">
            <asp:TextBox ID="TextBox2" runat="server" Width="175px"></asp:TextBox>
        </td>
        <td>
            <asp:DropDownList ID="DropDownList2" runat="server">
            </asp:DropDownList>
        </td>
    </tr>
    <tr>
        <td style="height: 23px; width: 112px">
            Departamento</td>
        <td class="style2" style="height: 23px; width: 195px">
            <asp:TextBox ID="TextBox3" runat="server" Width="175px"></asp:TextBox>
        </td>
        <td style="height: 23px">
            <asp:DropDownList ID="DropDownList3" runat="server">
            </asp:DropDownList>
        </td>
    </tr>
    <tr>
        <td style="height: 22px; width: 112px">
            Usuario</td>
        <td class="style2" style="height: 22px; width: 195px">
            <asp:TextBox ID="TextBox4" runat="server" Width="175px"></asp:TextBox>
        </td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td style="height: 22px; width: 112px">
            Clave</td>
        <td class="style2" style="height: 22px; width: 195px">
            <asp:TextBox ID="TextBox5" runat="server" Width="175px"></asp:TextBox>
        </td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td style="height: 22px; width: 112px">
            Confirmar Clave</td>
        <td class="style2" style="height: 22px; width: 195px">
            <asp:TextBox ID="TextBox6" runat="server" Width="175px"></asp:TextBox>
        </td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td style="height: 22px; width: 112px">
            Pregunta Secreta</td>
        <td class="style2" style="height: 22px; width: 195px">
            <asp:TextBox ID="TextBox7" runat="server" Width="175px"></asp:TextBox>
        </td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td style="height: 22px; width: 112px">
            Respuesta Secreta</td>
        <td class="style2" style="height: 22px; width: 195px">
            <asp:TextBox ID="TextBox8" runat="server" Width="175px"></asp:TextBox>
        </td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td style="height: 28px; width: 112px">
            Email</td>
        <td style="height: 28px">
            <asp:TextBox ID="TextBox9" runat="server" Width="175px"></asp:TextBox>
        </td>
        <td style="height: 28px">
            </td>
    </tr>
    <tr>
        <td>
            &nbsp;</td>
        <td>
            <asp:Button ID="Button2" runat="server" Text="Actualizar" />
        </td>
        <td>
            <asp:Button ID="Button3" runat="server" Text="Eliminar" />
        </td>
    </tr>
</table>
</asp:Content>

