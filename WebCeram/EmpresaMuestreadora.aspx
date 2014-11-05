<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="EmpresaMuestreadora.aspx.cs" Inherits="WebCeram.Formulario_web14" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
    <style type="text/css">

        .menu
        {
            font-size: large;
        }
        .menu
        {
            font-size: small;
        }
        .menu
        {
            font-size: medium;
        }
        .style1
        {
            text-decoration: underline;
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
    </h2>
    <h2 class="style3">
                Empresa Muestreadora</h2>
    <p class="style3">
                <table style="width:100%;">
                    <tr>
                        <td class="style1">
                            <strong>Ingresa Empresa</strong></td>
                        <td class="style1">
                            <strong>Buscar Empresa</strong></td>
                        <td>
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td>
                            <table style="width:100%;">
                                <tr>
                                    <td>
                                        Nombre Empresa</td>
                                    <td>
                                        <asp:TextBox ID="tbName" runat="server"></asp:TextBox>
                                    </td>
                                    <td>
                                        &nbsp;</td>
                                </tr>
                                <tr>
                                    <td>
                                        Telefono</td>
                                    <td>
                                        <asp:TextBox ID="tbFono" runat="server"></asp:TextBox>
                                    </td>
                                    <td>
                                        &nbsp;</td>
                                </tr>
                                <tr>
                                    <td>
                                        Dirección</td>
                                    <td>
                                        <asp:TextBox ID="tbDireccion" runat="server"></asp:TextBox>
                                    </td>
                                    <td>
                                        &nbsp;</td>
                                </tr>
                                <tr>
                                    <td>
                                        Email</td>
                                    <td>
                                        <asp:TextBox ID="tbEmail" runat="server"></asp:TextBox>
                                    </td>
                                    <td>
                                        &nbsp;</td>
                                </tr>
                                <tr>
                                    <td>
                                        &nbsp;</td>
                                    <td>
                                        <asp:Button ID="btAgregar" runat="server" Text="Agregar" 
                                            onclick="btAgregar_Click" />
                                        <asp:Label ID="labelAgregar" runat="server" ForeColor="Blue"></asp:Label>
                                    </td>
                                    <td>
                                        &nbsp;</td>
                                </tr>
                            </table>
                        </td>
                        <td>
                            <table style="width:100%;">
                                <tr>
                                    <td>
                                        Nombre de la Empresa</td>
                                    <td>
                                        <asp:TextBox ID="tbNameSearch" runat="server"></asp:TextBox>
                                        <br />
                                        <asp:Label ID="labelNamSearch0" runat="server" ForeColor="Red"></asp:Label>
                                    </td>
                                    <td>
                                        <asp:Button ID="btBuscarName" runat="server" Text="Buscar" 
                                            onclick="btBuscar_Click" />
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        Código de la Empresa</td>
                                    <td>
                                        <asp:TextBox ID="tbCode" runat="server"></asp:TextBox>
                                        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                                            ControlToValidate="tbCode" ErrorMessage="Debe de colocar un número" 
                                            ForeColor="Red" ValidationExpression="[0-9]*"></asp:RegularExpressionValidator>
                                        <br />
                                        <asp:Label ID="labelCodSearch" runat="server" ForeColor="Red"></asp:Label>
                                    </td>
                                    <td>
                                        <asp:Button ID="btBuscarCode" runat="server" Text="Buscar" 
                                            onclick="btBuscarCode_Click" />
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        &nbsp;</td>
                                    <td>
                                        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                                            BackColor="White" BorderColor="#DEDFDE" BorderStyle="None" BorderWidth="1px" 
                                            CellPadding="4" ForeColor="Black" GridLines="Vertical" 
                                            onselectedindexchanged="gridvie1_selectedIndexChange">
                                            <AlternatingRowStyle BackColor="White" />
                                            <Columns>
                                                <asp:BoundField DataField="Cod_sampler" HeaderText="Código" />
                                                <asp:BoundField DataField="Name_sampler" HeaderText="Nombre" />
                                                <asp:BoundField DataField="Email" HeaderText="Email" />
                                                <asp:BoundField DataField="Fono" HeaderText="Teléfono" />
                                                <asp:BoundField DataField="Direccion" HeaderText="Dirección" />
                                                <asp:CommandField ShowSelectButton="True" />
                                            </Columns>
                                            <FooterStyle BackColor="#CCCC99" />
                                            <HeaderStyle BackColor="#6B696B" Font-Bold="True" ForeColor="White" />
                                            <PagerStyle BackColor="#F7F7DE" ForeColor="Black" HorizontalAlign="Right" />
                                            <RowStyle BackColor="#F7F7DE" />
                                            <SelectedRowStyle BackColor="#CE5D5A" Font-Bold="True" ForeColor="White" />
                                            <SortedAscendingCellStyle BackColor="#FBFBF2" />
                                            <SortedAscendingHeaderStyle BackColor="#848384" />
                                            <SortedDescendingCellStyle BackColor="#EAEAD3" />
                                            <SortedDescendingHeaderStyle BackColor="#575357" />
                                        </asp:GridView>
                                        <asp:GridView ID="gvSearch" runat="server" BackColor="White" 
                                            BorderColor="#DEDFDE" BorderStyle="None" BorderWidth="1px" CellPadding="4" 
                                            ForeColor="Black" GridLines="Vertical" AutoGenerateColumns="False">
                                            <AlternatingRowStyle BackColor="White" />
                                            <Columns>
                                                <asp:BoundField DataField="CodSampler" HeaderText="Código" />
                                                <asp:BoundField DataField="NameSampler" HeaderText="Nombre" />
                                                <asp:BoundField DataField="Email" HeaderText="Email" />
                                                <asp:BoundField DataField="Fono" HeaderText="Teléfono" />
                                                <asp:BoundField DataField="Direccion" HeaderText="Dirección" />
                                            </Columns>
                                            <FooterStyle BackColor="#CCCC99" />
                                            <HeaderStyle BackColor="#6B696B" Font-Bold="True" ForeColor="White" />
                                            <PagerStyle BackColor="#F7F7DE" ForeColor="Black" HorizontalAlign="Right" />
                                            <RowStyle BackColor="#F7F7DE" />
                                            <SelectedRowStyle BackColor="#CE5D5A" Font-Bold="True" ForeColor="White" />
                                            <SortedAscendingCellStyle BackColor="#FBFBF2" />
                                            <SortedAscendingHeaderStyle BackColor="#848384" />
                                            <SortedDescendingCellStyle BackColor="#EAEAD3" />
                                            <SortedDescendingHeaderStyle BackColor="#575357" />
                                        </asp:GridView>
                                    </td>
                                    <td>
                                        &nbsp;</td>
                                </tr>
                            </table>
                        </td>
                        <td>
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td>
                            <strong>Eliminar Empresa<br />
                            </strong>
                            <table style="width:100%;">
                                <tr>
                                    <td>
                                        Código de la Empresa</td>
                                    <td>
                                        <asp:TextBox ID="tbCodeDrop" runat="server"></asp:TextBox>
                                    </td>
                                    <td>
                                        &nbsp;</td>
                                </tr>
                                <tr>
                                    <td>
                                        &nbsp;</td>
                                    <td>
                                        <asp:Button ID="btEliminar" runat="server" Text="Eliminar" 
                                            onclick="btEliminar_Click" />
                                        <asp:Label ID="labelEliminar" runat="server" ForeColor="Blue"></asp:Label>
                                    </td>
                                    <td>
                                        &nbsp;</td>
                                </tr>
                                <tr>
                                    <td>
                                        &nbsp;</td>
                                    <td>
                                        &nbsp;</td>
                                    <td>
                                        &nbsp;</td>
                                </tr>
                            </table>
                        </td>
                        <td>
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td>
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                    </tr>
                </table>
    </p>
    </asp:Content>
