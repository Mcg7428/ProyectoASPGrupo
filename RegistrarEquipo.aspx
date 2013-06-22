<%@ Page Title="" Language="VB" MasterPageFile="~/Equipos.master" AutoEventWireup="false" CodeFile="RegistrarEquipo.aspx.vb" Inherits="RegistrarEquipo" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder15" Runat="Server">
    <table style="width: 100%;">
    <tr>
        <td class="style1" style="width: 125px">
            &nbsp;</td>
        <td colspan="2">
            Registro de Equipo</td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td class="style1" style="width: 125px">
            Identificador</td>
        <td colspan="2">
            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
        </td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td class="style1" style="width: 125px">
            Departamento</td>
        <td colspan="2">
            <asp:DropDownList ID="DropDownList4" runat="server" 
                DataSourceID="SqlDataSource1" DataTextField="ID_DEPTO" 
                DataValueField="ID_DEPTO">
            </asp:DropDownList>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                ConnectionString="<%$ ConnectionStrings:BD_MantenimientoASPConnectionString %>" 
                SelectCommand="SELECT [ID_DEPTO] FROM [Departamento]"></asp:SqlDataSource>
        </td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td class="style1" style="width: 125px; height: 25px">
            Nombre De Equipo</td>
        <td colspan="2" style="height: 25px">
            <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
        </td>
        <td style="height: 25px">
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                ErrorMessage="Campo Requerido"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td class="style1" style="width: 125px">
            Tipo de Equipo</td>
        <td colspan="2">
            <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
        </td>
        <td>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                ErrorMessage="Campo Requerido"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td class="style1" style="width: 125px">
            Fabricante</td>
        <td colspan="2">
            <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
        </td>
        <td>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                ErrorMessage="Campo Requerido"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td class="style1" rowspan="2" style="width: 125px">
            Sala / Laboratorio de pertenencia</td>
        <td rowspan="2" style="width: 42px">
            <asp:RadioButtonList ID="RadioButtonList1" runat="server">
                <asp:ListItem>Sala</asp:ListItem>
                <asp:ListItem>Laboratorio</asp:ListItem>
            </asp:RadioButtonList>
        </td>
        <td style="width: 140px">
            <asp:DropDownList ID="DropDownList1" runat="server" Height="16px" Width="100px" 
                DataSourceID="SqlDataSource2" DataTextField="ID_SALA" DataValueField="ID_SALA">
            </asp:DropDownList>
            <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
                ConnectionString="<%$ ConnectionStrings:BD_MantenimientoASPConnectionString %>" 
                SelectCommand="SELECT [ID_SALA] FROM [Sala]"></asp:SqlDataSource>
        </td>
        <td rowspan="2">
            &nbsp;</td>
    </tr>
    <tr>
        <td style="width: 140px">
            <asp:DropDownList ID="DropDownList2" runat="server" Height="16px" Width="100px" 
                DataSourceID="SqlDataSource3" DataTextField="ID_LAB" DataValueField="ID_LAB">
            </asp:DropDownList>
            <asp:SqlDataSource ID="SqlDataSource3" runat="server" 
                ConnectionString="<%$ ConnectionStrings:BD_MantenimientoASPConnectionString %>" 
                SelectCommand="SELECT [ID_LAB] FROM [Laboratorio]"></asp:SqlDataSource>
        </td>
    </tr>
    <tr>
        <td class="style1" style="width: 125px">
            Especificaciones Tecnicas</td>
        <td colspan="2">
            <asp:TextBox ID="TextBox6" runat="server" TextMode="MultiLine"></asp:TextBox>
        </td>
        <td>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                ErrorMessage="Campo Requerido"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td class="style1" style="width: 125px">
            Estado</td>
        <td colspan="2">
            <asp:DropDownList ID="DropDownList3" runat="server">
                <asp:ListItem>Nuevo</asp:ListItem>
                <asp:ListItem>Danado</asp:ListItem>
                <asp:ListItem>Reparado</asp:ListItem>
            </asp:DropDownList>
        </td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td class="style1" style="width: 125px">
            Observaciones</td>
        <td colspan="2">
            <asp:TextBox ID="TextBox7" runat="server"></asp:TextBox>
        </td>
        <td>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                ErrorMessage="Campo Requerido"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td class="style1" style="width: 125px">
            &nbsp;</td>
        <td colspan="2">
            <asp:Button ID="Button1" runat="server" Text="Registrar" />
        </td>
        <td>
            &nbsp;</td>
    </tr>
</table>
</asp:Content>

