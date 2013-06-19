<%@ Page Language="VB" AutoEventWireup="false" CodeFile="Default.aspx.vb" Inherits="_Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .style1
        {
            width: 691px;
        }
        .style5
        {
        }
        .style6
        {
            width: 138px;
        }
        .style7
        {
            width: 48px;
            text-align: left;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <table class="style1">
            <tr>
                <td class="style5" colspan="2">
                    <asp:Label ID="Label1" runat="server" Text="Sistema de Mantenimiento"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="style7">
                    Usuario</td>
                <td class="style6">
                    <asp:TextBox ID="TextBox1" runat="server" Width="165px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                        ControlToValidate="TextBox1" ErrorMessage="*"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="style7">
                    Clave</td>
                <td class="style6">
                    <asp:TextBox ID="TextBox2" runat="server" Width="165px" TextMode="Password"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                        ControlToValidate="TextBox2" ErrorMessage="*"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="style7">
                    &nbsp;</td>
                <td class="style6">
                    <asp:Button ID="Button1" runat="server" Text="Entrar" />
                </td>
            </tr>
        </table>
    
    </div>
    </form>
</body>
</html>
