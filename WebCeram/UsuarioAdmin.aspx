<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="UsuarioAdmin.aspx.cs" Inherits="WebCeram.Formulario_web19" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <asp:Menu ID="NavigationMenu" runat="server" CssClass="menu" EnableViewState="false" IncludeStyleBlock="false" Orientation="Horizontal">
        <Items>
            <asp:MenuItem NavigateUrl="~/Inicio.aspx" Text="Página principal"/>
            <asp:MenuItem Text="Usuario" Value="Nuevo elemento">
                <asp:MenuItem NavigateUrl="~/Register.aspx" Text="Registrar Usuario" 
                                Value="Registrar Usuario"></asp:MenuItem>
                <asp:MenuItem NavigateUrl="~/EliminarUser.aspx" Text="Eliminar Usuario" 
                                Value="Eliminar Usuario"></asp:MenuItem>
                <asp:MenuItem NavigateUrl="~/BuscarUser.aspx" Text="Buscar Usuario" 
                                Value="Buscar Usuario"></asp:MenuItem>
            </asp:MenuItem>
            <asp:MenuItem Text="Muestras" Value="Nuevo elemento">
                <asp:MenuItem Text="Ingresar Muestra" Value="Ingresar Muestra" 
                                NavigateUrl="~/FichaIngreso.aspx"></asp:MenuItem>
                <asp:MenuItem Text="Buscar Muestra" Value="Buscar Muestra"></asp:MenuItem>
            </asp:MenuItem>
            <asp:MenuItem Text="Analisis" Value="Analisis"/>
            <asp:MenuItem Text="Clientes" Value="Nuevo elemento">
                <asp:MenuItem NavigateUrl="~/EmpresaMuestreadora.aspx" 
                                Text="Empresa Muestreadora" Value="Empresa Muestreadora">
                </asp:MenuItem>
                <asp:MenuItem NavigateUrl="~/EmpresaSolicitante.aspx" 
                                Text="Empresa Solicitante" Value="Empresa Solicitante">
                </asp:MenuItem>
            </asp:MenuItem>
            <asp:MenuItem Text="Productos" Value="Nuevo elemento" 
                            NavigateUrl="~/Productos.aspx"></asp:MenuItem>
            <asp:MenuItem NavigateUrl="~/Celulas.aspx" Text="Células" 
                            Value="Células"></asp:MenuItem>
            <asp:MenuItem Text="Estadisticas" Value="Nuevo elemento"></asp:MenuItem>
        </Items>
    </asp:Menu>
    <br />
    <br />
</asp:Content>
