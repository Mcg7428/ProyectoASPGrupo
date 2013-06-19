<%@ Page Title="" Language="VB" MasterPageFile="~/Inmuebles.master" AutoEventWireup="false" CodeFile="RegistrarDepto.aspx.vb" Inherits="RegistrarDepto" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder14" Runat="Server">
    <table style="width:100%;">
    <tr>
        <td colspan="3" style="height: 23px">
            Registro Departamento</td>
    </tr>
    <tr>
        <td style="width: 148px">
            ID_Departamento</td>
        <td style="width: 180px">
            <asp:TextBox ID="TextBox1" runat="server" Height="19px" Width="176px"></asp:TextBox>
        </td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td style="width: 148px">
            Nombre Departamento</td>
        <td style="width: 180px">
            <asp:TextBox ID="TextBox2" runat="server" Height="19px" Width="176px"></asp:TextBox>
        </td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td style="width: 148px">
            Edificio de Ubicacion</td>
        <td style="width: 180px">
            <asp:DropDownList ID="DropDownList1" runat="server" Height="16px" Width="177px">
            </asp:DropDownList>
        </td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td style="width: 148px">
            &nbsp;</td>
        <td style="width: 180px">
            <asp:Button ID="Button1" runat="server" Text="Registrar" />
        </td>
        <td>
            &nbsp;</td>
    </tr>
</table>
</asp:Content>

