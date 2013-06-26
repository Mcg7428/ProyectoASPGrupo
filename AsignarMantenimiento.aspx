<%@ Page Title="" Language="VB" MasterPageFile="~/RegistroAsignacionMante.master" AutoEventWireup="false" CodeFile="AsignarMantenimiento.aspx.vb" Inherits="AsignarMantenimiento" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder15" Runat="Server">
    <table style="width:546px;" bgcolor="Silver">
    <tr>
        <td style="height: 21px;" align="center" colspan="4">
            <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="XX-Large" 
                Text="Asignar Mantenimieno"></asp:Label>
        </td>
    </tr>
    <tr>
        <td style="width: 164px">
            Mantenimiento Asignado</td>
        <td colspan="2">
            <asp:DropDownList ID="DropDownList1" runat="server" BackColor="Silver">
            </asp:DropDownList>
        </td>
        <td style="width: 65px">
            &nbsp;</td>
    </tr>
    <tr>
        <td style="width: 164px">
            Id Creador Mantenimiento</td>
        <td colspan="2">
            <asp:DropDownList ID="DropDownList2" runat="server" Height="17px" Width="69px" 
                BackColor="Silver">
            </asp:DropDownList>
        </td>
        <td style="width: 65px">
            &nbsp;</td>
    </tr>
    <tr>
        <td style="width: 164px" rowspan="3">
            Sala / Laboratorio/ Equipo&nbsp;
        </td>
        <td style="width: 82px" class="style2" rowspan="3">
            <asp:RadioButtonList ID="RadioButtonList1" runat="server">
                <asp:ListItem>Sala</asp:ListItem>
                <asp:ListItem>Labortorio</asp:ListItem>
                <asp:ListItem>Equipo</asp:ListItem>
            </asp:RadioButtonList>
        </td>
        <td style="width: 69px" class="style1">
            <asp:DropDownList ID="DropDownList3" runat="server" BackColor="Silver">
            </asp:DropDownList>
        </td>
        <td rowspan="3" style="width: 65px">
            &nbsp;</td>
    </tr>
    <tr>
        <td style="width: 69px" class="style1">
            <asp:DropDownList ID="DropDownList4" runat="server" BackColor="Silver">
            </asp:DropDownList>
        </td>
    </tr>
    <tr>
        <td style="width: 69px" class="style1">
            <asp:DropDownList ID="DropDownList5" runat="server" BackColor="Silver">
            </asp:DropDownList>
        </td>
    </tr>
    <tr>
        <td style="width: 164px">
            Fecha de Inicio</td>
        <td colspan="2">
            <asp:Calendar ID="Calendar1" runat="server" BackColor="Silver" 
                BorderColor="Silver" BorderWidth="1px" Font-Names="Verdana" Font-Size="9pt" 
                ForeColor="Black" Height="190px" NextPrevFormat="FullMonth" Width="350px">
                <DayHeaderStyle Font-Bold="True" Font-Size="8pt" />
                <NextPrevStyle Font-Bold="True" Font-Size="8pt" ForeColor="#333333" 
                    VerticalAlign="Bottom" />
                <OtherMonthDayStyle ForeColor="#999999" />
                <SelectedDayStyle BackColor="#333399" ForeColor="White" />
                <TitleStyle BackColor="White" BorderColor="Black" BorderWidth="4px" 
                    Font-Bold="True" Font-Size="12pt" ForeColor="#333399" />
                <TodayDayStyle BackColor="#CCCCCC" />
            </asp:Calendar>
        </td>
        <td style="width: 65px">
            &nbsp;</td>
    </tr>
    <tr>
        <td style="width: 164px">
            Fecha Finalizacion</td>
        <td colspan="2">
            <asp:Calendar ID="Calendar2" runat="server" BackColor="Silver" 
                BorderColor="Silver" BorderWidth="1px" Font-Names="Verdana" Font-Size="9pt" 
                ForeColor="Black" Height="190px" NextPrevFormat="FullMonth" Width="350px">
                <DayHeaderStyle Font-Bold="True" Font-Size="8pt" />
                <NextPrevStyle Font-Bold="True" Font-Size="8pt" ForeColor="#333333" 
                    VerticalAlign="Bottom" />
                <OtherMonthDayStyle ForeColor="#999999" />
                <SelectedDayStyle BackColor="#333399" ForeColor="White" />
                <TitleStyle BackColor="White" BorderColor="Black" BorderWidth="4px" 
                    Font-Bold="True" Font-Size="12pt" ForeColor="#333399" />
                <TodayDayStyle BackColor="#CCCCCC" />
            </asp:Calendar>
        </td>
        <td style="width: 65px">
            &nbsp;</td>
    </tr>
    <tr>
        <td style="width: 164px; height: 25px;">
            ID de Autorizado por</td>
        <td style="height: 25px;" colspan="2">
            <asp:DropDownList ID="DropDownList6" runat="server" BackColor="Silver" 
                Height="16px" Width="340px">
            </asp:DropDownList>
        </td>
        <td style="width: 65px; height: 25px">
            </td>
    </tr>
    <tr>
        <td style="width: 164px">
            Personal Asignado</td>
        <td colspan="2">
            <asp:TextBox ID="TextBox1" runat="server" BackColor="Silver" 
                BorderColor="Silver" Width="290px"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                ControlToValidate="RadioButtonList1" ErrorMessage="Rquerido"></asp:RequiredFieldValidator>
        </td>
        <td style="width: 65px">
            &nbsp;</td>
    </tr>
    <tr>
        <td style="width: 164px">
            Observaciones</td>
        <td colspan="2">
            <asp:TextBox ID="TextBox2" runat="server" TextMode="MultiLine" 
                BackColor="Silver" BorderColor="Silver" Width="338px"></asp:TextBox>
        </td>
        <td style="width: 65px">
            &nbsp;</td>
    </tr>
    <tr>
        <td style="width: 164px">
            &nbsp;</td>
        <td colspan="2">
            <asp:Button ID="Button1" runat="server" Text="Asignar Mantenimiento" 
                BackColor="Silver" BorderColor="Silver" Width="338px" />
        </td>
        <td style="width: 65px">
            &nbsp;</td>
    </tr>
</table>
</asp:Content>

