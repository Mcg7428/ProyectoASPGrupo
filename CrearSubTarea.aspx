<%@ Page Title="" Language="VB" MasterPageFile="~/MPMantenimiento.master" AutoEventWireup="false" CodeFile="CrearSubTarea.aspx.vb" Inherits="CrearSubTarea" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder12" Runat="Server">
    <table style="width: 100%;">
    <tr>
        <td colspan="3">
            Creacion de Sub Tarea</td>
    </tr>
    <tr>
        <td class="style1" style="width: 110px">
            Nombre</td>
        <td style="width: 231px">
            <asp:TextBox ID="TextBox3" runat="server" style="margin-right: 6px" 
                Width="196px"></asp:TextBox>
        </td>
        <td>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                ControlToValidate="TextBox3" ErrorMessage="Nombre Requerido"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td class="style1" style="width: 110px">
            Descripcion</td>
        <td style="width: 231px">
            <asp:TextBox ID="TextBox4" runat="server" Height="19px" 
                style="margin-left: 0px" TextMode="MultiLine" Width="193px"></asp:TextBox>
        </td>
        <td>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                ControlToValidate="TextBox4" ErrorMessage="Descripcion Requerida"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td class="style1" style="width: 110px">
            &nbsp;</td>
        <td style="width: 231px">
            <asp:Button ID="Button2" runat="server" Text="Crear" />
        </td>
        <td>
            &nbsp;</td>
    </tr>
</table>
</asp:Content>

