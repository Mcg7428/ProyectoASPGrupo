<%@ Page Title="" Language="VB" MasterPageFile="~/Equipos.master" AutoEventWireup="false" CodeFile="EliminarActualizaEquipo.aspx.vb" Inherits="EliminarActualizaEquipo" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder15" Runat="Server">
    <table style="width: 100%;">
    <tr>
        <td class="style1" style="width: 125px">
            &nbsp;</td>
        <td colspan="2">
            Actualizacion Eliminacion de Equipo</td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td class="style1" style="width: 125px">
            Elegir Equipo</td>
        <td colspan="2">
            <asp:DropDownList ID="DropDownList5" runat="server">
            </asp:DropDownList>
        </td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td class="style1" style="width: 125px">
            &nbsp;</td>
        <td colspan="2">
            &nbsp;</td>
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
        <td class="style1" style="width: 125px; height: 26px;">
            Departamento</td>
        <td colspan="2" style="height: 26px">
            <asp:DropDownList ID="DropDownList4" runat="server">
            </asp:DropDownList>
        </td>
        <td style="height: 26px">
            </td>
    </tr>
    <tr>
        <td class="style1" style="width: 125px; height: 25px">
            Nombre De Equipo</td>
        <td colspan="2" style="height: 25px">
            <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
        </td>
        <td style="height: 25px">
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                ErrorMessage="Campo Requerido" ControlToValidate="TextBox3"></asp:RequiredFieldValidator>
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
                ErrorMessage="Campo Requerido" ControlToValidate="TextBox4"></asp:RequiredFieldValidator>
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
                ErrorMessage="Campo Requerido" ControlToValidate="TextBox5"></asp:RequiredFieldValidator>
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
            <asp:DropDownList ID="DropDownList1" runat="server" Height="16px" Width="100px">
            </asp:DropDownList>
        </td>
        <td>
            Dato Actual</td>
    </tr>
    <tr>
        <td style="width: 140px">
            <asp:DropDownList ID="DropDownList2" runat="server" Height="16px" Width="100px">
            </asp:DropDownList>
        </td>
        <td>
            <asp:Label ID="Label1" runat="server"></asp:Label>
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
                ErrorMessage="Campo Requerido" ControlToValidate="TextBox6"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td class="style1" style="width: 125px">
            Estado</td>
        <td colspan="2">
            <asp:DropDownList ID="DropDownList3" runat="server">
            </asp:DropDownList>
        </td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td class="style1" style="width: 125px">
            Observaciones</td>
        <td colspan="2">
            <asp:TextBox ID="TextBox7" runat="server" TextMode="MultiLine" Width="178px"></asp:TextBox>
        </td>
        <td>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                ErrorMessage="Campo Requerido" ControlToValidate="TextBox7"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td class="style1" style="width: 125px">
            &nbsp;</td>
        <td colspan="2">
            <asp:Button ID="Button1" runat="server" Text="Actualizar" />
        </td>
        <td>
            <asp:Button ID="Button2" runat="server" Text="Eliminar" />
        </td>
    </tr>
</table>
</asp:Content>

