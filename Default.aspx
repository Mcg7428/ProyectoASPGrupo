<%@ Page Language="VB" AutoEventWireup="false" CodeFile="Default.aspx.vb" Inherits="_Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .style1
        {
            width:  300px;
            height: 120px; 
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
            width: 74px;
            text-align: left;
        }
        .style8
        {
            width: 286px;
        }
        .style9
        {
            width: 316px;
            height: 76px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <table style="width: 100%; ">
        <tr>
            <td class="style8">
                &nbsp;</td>
            <td>
                <img alt="" class="style9" src="Imagenes/Logo.png" /></td>
        </tr>
        <tr>
            <td class="style8">
                &nbsp;</td>
            <td>
    
        <table class="style1">
            <tr>
                <td class="style5" colspan="2" align="center">
                    <asp:Label ID="Label1" runat="server" Text="Sistema de Mantenimiento"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="style7" align="center">
                    Usuario</td>
                <td class="style6">
                    <asp:TextBox ID="TextBox1" runat="server" Width="165px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                        ControlToValidate="TextBox1" ErrorMessage="*"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="style7" align="center">
                    Clave</td>
                <td class="style6">
                    <asp:TextBox ID="TextBox2" runat="server" Width="165px" TextMode="Password"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                        ControlToValidate="TextBox2" ErrorMessage="*"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="style7">
                    <asp:Label ID="Label2" runat="server" ForeColor="Red"></asp:Label>
                </td>
                <td class="style6" align="center">
                    <asp:ImageButton ID="ImageButton1" runat="server" Height="26px" 
                        ImageUrl="~/Imagenes/loginbutton.png" Width="88px" />
                </td>
            </tr>
        </table>
    
            </td>
        </tr>
    </table>
    </form>
</body>
</html>
