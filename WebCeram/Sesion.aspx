<%@ Page Title="Página principal" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true"
    CodeBehind="Sesion.aspx.cs" Inherits="WebCeram._Default" %>

<asp:Content ID="HeaderContent" runat="server" ContentPlaceHolderID="HeadContent">
</asp:Content>
<asp:Content ID="BodyContent" runat="server" ContentPlaceHolderID="MainContent">
    <h2>
        Inicio de Sesión</h2>
    <p>
        Ingrese su email de usuario.</p>
    <p>
        <asp:TextBox ID="tbName" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
            ErrorMessage="Coloque su nombre de usuario" ControlToValidate="tbName" 
            ForeColor="Red"></asp:RequiredFieldValidator>
    </p>
    <p>
        Contraseña</p>
    <p>
        <asp:TextBox ID="tbPass" runat="server" TextMode="Password"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
            ControlToValidate="tbPass" ErrorMessage="Coloque una contraseña" 
            ForeColor="Red"></asp:RequiredFieldValidator>
    </p>
    <p>
        <asp:Button ID="bSesion" runat="server" Text="Iniciar Sesión" 
            onclick="bSesion_Click" />
    &nbsp;&nbsp;
        <asp:Label ID="lSesion" runat="server" ForeColor="Red"></asp:Label>
    </p>
    <p>
        &nbsp;</p>
</asp:Content>
