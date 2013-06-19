﻿<%@ Page Title="" Language="VB" MasterPageFile="~/MPMantenimiento.master" AutoEventWireup="false" CodeFile="CrearTarea.aspx.vb" Inherits="CrearTarea" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder12" Runat="Server">
    <table style="width:100%;">
    <tr>
        <td colspan="3">
            Crear TAREA</td>
    </tr>
    <tr>
        <td style="width: 152px">
            ID_Tarea</td>
        <td style="width: 151px">
            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
        </td>
        <td>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                ControlToValidate="TextBox1" ErrorMessage="Error  Formato ID" 
                ValidationExpression="[A-Z]{2}[-][0-9]{3}"></asp:RegularExpressionValidator>
        </td>
    </tr>
    <tr>
        <td style="width: 152px">
            Nombre Mantenimiento</td>
        <td style="width: 151px">
            <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
        </td>
        <td>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                ErrorMessage="Nombre Requerido" ControlToValidate="TextBox2"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td style="width: 152px">
            Numero de Sub Tareas Asignadas</td>
        <td style="width: 151px">
            <asp:Label ID="Label1" runat="server"></asp:Label>
        </td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td style="width: 152px; height: 73px">
        </td>
        <td style="width: 151px; height: 73px">
            <asp:ListBox ID="ListBox1" runat="server" Width="142px"></asp:ListBox>
        </td>
        <td style="height: 73px">
            <asp:ListBox ID="ListBox2" runat="server" Width="146px"></asp:ListBox>
        </td>
    </tr>
    <tr>
        <td style="width: 152px">
            &nbsp;</td>
        <td style="width: 151px">
            <asp:Button ID="Button1" runat="server" Text="Agregar Sub Tarea" />
        </td>
        <td>
            &nbsp;</td>
    </tr>
</table>
</asp:Content>

