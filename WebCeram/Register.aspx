<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="WebCeram.Formulario_web1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
    <style type="text/css">
        .style1
        {
            text-align: right;
            width: 316px;
            font-size: medium;
        }
        .style2
        {
            width: 193px;
        }
        .style3
        {
            font-size: xx-large;
        }
        .style4
        {
            text-align: right;
            width: 316px;
            font-size: medium;
            height: 26px;
        }
        .style5
        {
            width: 193px;
            height: 26px;
        }
        .style6
        {
            height: 26px;
        }
        .style7
        {
            font-size: medium;
        }
        #Reset1
        {
            width: 141px;
        }
        .menu
        {
            font-size: large;
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
        Registro de Usuario</h2>
    <p>
        <table style="width:100%;">
            <tr>
                <td class="style1">
                    Nombre de Usuario</td>
                <td class="style2">
                    <asp:TextBox ID="tbInsertName" runat="server" MaxLength="45" Width="180px"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                        ControlToValidate="tbInsertName" CssClass="style7" 
                        ErrorMessage="Coloque Nombre de Usuario" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="style1">
                    Apellido del Usuario</td>
                <td class="style2">
                    <asp:TextBox ID="tbLastName" runat="server" MaxLength="45" Width="180px"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" 
                        ControlToValidate="tbInsertName" CssClass="style7" 
                        ErrorMessage="Coloque Apellido del Usuario" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="style4">
                    Email de Usuario</td>
                <td class="style5">
                    <asp:TextBox ID="tbInsertEmail" runat="server" MaxLength="45" Width="180px"></asp:TextBox>
                </td>
                <td class="style6">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                        ControlToValidate="tbInsertEmail" CssClass="style7" 
                        ErrorMessage="Coloque su email" ForeColor="Red"></asp:RequiredFieldValidator>
                    <br />
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                        ControlToValidate="tbInsertEmail" ErrorMessage="Ingrese un Email valido" 
                        ForeColor="Red" style="font-size: medium" 
                        ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr>
                <td class="style1">
                    Contraseña de Usuario</td>
                <td class="style2">
                    <asp:TextBox ID="tbInsertPass" runat="server" MaxLength="255" Width="180px" 
                        TextMode="Password"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                        ControlToValidate="tbInsertPass" CssClass="style7" 
                        ErrorMessage="Coloque una contraseña" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="style1">
                    Repetir Contraseña</td>
                <td class="style2">
                    <asp:TextBox ID="tbRepitPass" runat="server" MaxLength="255" Width="180px" 
                        TextMode="Password"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" 
                        ControlToValidate="tbRepitPass" ErrorMessage="Repita la contraseña" 
                        ForeColor="Red" style="font-size: medium"></asp:RequiredFieldValidator>
                    <br />
                    <asp:CompareValidator ID="CompareValidator1" runat="server" 
                        ControlToCompare="tbInsertPass" ControlToValidate="tbRepitPass" 
                        CssClass="style7" ErrorMessage="Las contraseñas deben ser iguales" 
                        ForeColor="Red"></asp:CompareValidator>
                </td>
            </tr>
            <tr>
                <td class="style1">
                    Cargo que ocupa</td>
                <td class="style2">
                    <asp:TextBox ID="tbInsertPosi" runat="server" MaxLength="50" Width="180px"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                        ControlToValidate="tbInsertPosi" CssClass="style7" 
                        ErrorMessage="Coloque su cargo de la empresa" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="style4">
                    Clave de Seguridad</td>
                <td class="style5">
                    <asp:TextBox ID="tbInsertSecurity" runat="server" MaxLength="45" Width="180px"></asp:TextBox>
                </td>
                <td class="style6">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" 
                        ControlToValidate="tbInsertSecurity" CssClass="style7" 
                        ErrorMessage="Coloque una clave de seguridad" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="style4">
                    &nbsp;</td>
                <td class="style5">
                    <asp:Button ID="Button1" runat="server" Text="Agregar Usuario" Width="143px" 
                        onclick="Button1_Click" />
                    <asp:Label ID="lRegister" runat="server" ForeColor="Red"></asp:Label>
                </td>
                <td class="style6">
                    &nbsp;</td>
            </tr>
        </table>
    </p>
    <p>
        &nbsp;&nbsp;</asp:Content>
