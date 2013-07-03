<%@ Page Title="" Language="VB" MasterPageFile="~/Inmuebles.master" AutoEventWireup="false" CodeFile="RegistroSala.aspx.vb" Inherits="RegistroSala" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder14" Runat="Server">
    <table style="width:100%;">
        <tr>
            <td colspan="3">
                Registro Sala</td>
        </tr>
        <tr>
            <td class="style1" style="width: 100px">
                Identificador de sala</td>
            <td style="width: 192px">
                <asp:TextBox ID="TextBox3" runat="server" Height="23px" Width="176px"></asp:TextBox>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style1" style="width: 100px">
                Nombre Sala</td>
            <td style="width: 192px">
                <asp:TextBox ID="TextBox4" runat="server" Width="175px"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                    ErrorMessage="Campo Requerido" ControlToValidate="TextBox4"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style1" style="width: 100px">
                Departamento</td>
            <td style="width: 192px">
                <asp:DropDownList ID="DropDownList1" runat="server">
                </asp:DropDownList>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style1" style="width: 100px">
                &nbsp;</td>
            <td style="width: 192px">
                <asp:Button ID="Button1" runat="server" Text="Registrar" />
            </td>
            <td>
                &nbsp;</td>
        </tr>
    </table>
</asp:Content>

