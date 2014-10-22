<%@ Page Title="Página principal" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true"
    CodeBehind="Login.aspx.cs" Inherits="ProjectCeram._Default" %>

<asp:Content ID="HeaderContent" runat="server" ContentPlaceHolderID="HeadContent">
</asp:Content>
<asp:Content ID="BodyContent" runat="server" ContentPlaceHolderID="MainContent">
    <h2>
        Usuario
    </h2>
    <p>
        Coloque nombre de usuario y contraseña para ingresar a la página</p>
    <p>
        Nombre de Usuario</p>
    <p>
        <asp:TextBox ID="tbname" runat="server"></asp:TextBox>
    </p>
    <p>
        Contraseña</p>
    <p>
        <asp:TextBox ID="tbpass" runat="server"></asp:TextBox>
    </p>
    <p>
        <asp:Button ID="btIngresar" runat="server" Text="Ingresar" 
            onclick="btIngresar_Click" />
    </p>
    <p>
        &nbsp;</p>
</asp:Content>
