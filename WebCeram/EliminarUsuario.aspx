<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="EliminarUsuario.aspx.cs" Inherits="WebCeram.Formulario_web13" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
    <style type="text/css">

        .style7
        {
            font-size: medium;
        }
        .style8
        {
            text-align: right;
        }
        .menu
        {
            font-size: medium;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <asp:Menu ID="NavigationMenu" runat="server" CssClass="menu" EnableViewState="false" IncludeStyleBlock="false" Orientation="Horizontal">
                    <Items>
                        <asp:MenuItem NavigateUrl="~/Inicio.aspx" Text="Página principal"/>
                        <asp:MenuItem Text="Usuario" Value="Nuevo elemento">
                            <asp:MenuItem NavigateUrl="~/Register.aspx" Text="Registrar Usuario" 
                                Value="Registrar Usuario"></asp:MenuItem>
                            <asp:MenuItem NavigateUrl="~/EliminarUsuario.aspx" Text="Eliminar Usuario" 
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
                                Text="Empresa Muestreadora" Value="Empresa Muestreadora"></asp:MenuItem>
                            <asp:MenuItem NavigateUrl="~/EmpresaSolicitante.aspx" 
                                Text="Empresa Solicitante" Value="Empresa Solicitante"></asp:MenuItem>
                        </asp:MenuItem>
                        <asp:MenuItem Text="Productos" Value="Nuevo elemento" 
                            NavigateUrl="~/Productos.aspx"></asp:MenuItem>
                        <asp:MenuItem NavigateUrl="~/Fitoplancton.aspx" Text="Fitoplancton" 
                            Value="Células"></asp:MenuItem>
                        <asp:MenuItem Text="Estadisticas" Value="Nuevo elemento"></asp:MenuItem>
                    </Items>
                </asp:Menu>
            <h2 class="style3">
                Eliminar Usuario</h2>
    <br />
    <br />
    <br />
            <p>
                <table style="width:100%;">
                    <tr>
                        <td class="style8">
                            Coloque el Id del usuario a eliminar</td>
                        <td>
                    <asp:TextBox ID="tbInsertName" runat="server" MaxLength="45" Width="180px"></asp:TextBox>
                        </td>
                        <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                        ControlToValidate="tbInsertName" CssClass="style7" 
                        ErrorMessage="Coloque Nombre de Usuario" ForeColor="Red"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td class="style8">
                            Contraseña del administrador</td>
                        <td>
                    <asp:TextBox ID="tbInsertPass" runat="server" MaxLength="255" Width="180px" 
                        TextMode="Password"></asp:TextBox>
                        </td>
                        <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                        ControlToValidate="tbInsertPass" CssClass="style7" 
                        ErrorMessage="Coloque una contraseña" ForeColor="Red"></asp:RequiredFieldValidator>
                            <br />
                        </td>
                    </tr>
                    <tr>
                        <td>
                            &nbsp;</td>
                        <td>
                            <asp:Button ID="Button1" runat="server" onclick="Button1_Click" 
                                Text="Eliminar Usuario" />
                        </td>
                        <td>
                            &nbsp;</td>
                    </tr>
                </table>
    </p>
    <p>
                &nbsp;</p>
</asp:Content>
