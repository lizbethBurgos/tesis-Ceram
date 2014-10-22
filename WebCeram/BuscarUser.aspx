<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="BuscarUser.aspx.cs" Inherits="WebCeram.Formulario_web12" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
    <style type="text/css">
        .menu
        {
            font-size: large;
        }
        .style3
        {
            height: 26px;
        }
        .menu
        {
            font-size: small;
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
            width: 251px;
        }
        .style2
        {
            width: 251px;
            height: 3px;
        }
        .style4
        {
            height: 3px;
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
                        <asp:MenuItem NavigateUrl="~/Celulas.aspx" Text="Células" 
                            Value="Células"></asp:MenuItem>
                        <asp:MenuItem Text="Estadisticas" Value="Nuevo elemento"></asp:MenuItem>
                    </Items>
                </asp:Menu>
            <h2 class="style3">
                Buscar Usuario<table style="width:100%; font-size: medium;">
        <tr>
            <td class="style1">
                <br />
                Por Email del Usuario</td>
            <td>
                <br />
                Por Cargo que ocupa</td>
            <td>
                <br />
                Por Nombre del Usuario</td>
        </tr>
        <tr>
            <td class="style2">
                    <br />
                    <asp:TextBox ID="tbInsertEmail" runat="server" MaxLength="45" Width="180px"></asp:TextBox>
                    <asp:Button ID="btBuscar" runat="server" onclick="btBuscar_Click" 
                        Text="Buscar" />
                </td>
            <td class="style4">
                    <br />
                    <asp:TextBox ID="tbInsertPosi" runat="server" MaxLength="50" Width="180px"></asp:TextBox>
                    <asp:Button ID="btBuscarPos" runat="server" onclick="btBuscarPos_Click" 
                        Text="Buscar" />
                </td>
            <td class="style4">
                    <br />
                    <asp:TextBox ID="tbInsertName" runat="server" MaxLength="45" Width="180px"></asp:TextBox>
                    <asp:Button ID="btBuscarName" runat="server" Text="Buscar" />
                </td>
        </tr>
        <tr>
            <td class="style1">
                <br />
                <asp:GridView ID="GridView1" runat="server" AllowSorting="True" 
                    AutoGenerateColumns="False" BackColor="White" BorderColor="#CC9966" 
                    BorderStyle="None" BorderWidth="1px" CellPadding="4" DataKeyNames="cod_user" 
                    DataSourceID="SqlDataSource1">
                    <Columns>
                        <asp:BoundField DataField="pass" HeaderText="Contraseña" 
                            SortExpression="pass" />
                        <asp:BoundField DataField="cod_user" HeaderText="Codigo Usuario" 
                            InsertVisible="False" ReadOnly="True" SortExpression="cod_user" />
                    </Columns>
                    <FooterStyle BackColor="#FFFFCC" ForeColor="#330099" />
                    <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="#FFFFCC" />
                    <PagerStyle BackColor="#FFFFCC" ForeColor="#330099" HorizontalAlign="Center" />
                    <RowStyle BackColor="White" ForeColor="#330099" />
                    <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="#663399" />
                    <SortedAscendingCellStyle BackColor="#FEFCEB" />
                    <SortedAscendingHeaderStyle BackColor="#AF0101" />
                    <SortedDescendingCellStyle BackColor="#F6F0C0" />
                    <SortedDescendingHeaderStyle BackColor="#7E0000" />
                </asp:GridView>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:ceramfisicoConnectionString %>" 
                    ProviderName="<%$ ConnectionStrings:ceramfisicoConnectionString.ProviderName %>" 
                    SelectCommand="searchUser" SelectCommandType="StoredProcedure">
                    <SelectParameters>
                        <asp:ControlParameter ControlID="tbInsertEmail" Name="emailUser" 
                            PropertyName="Text" Type="String" />
                    </SelectParameters>
                </asp:SqlDataSource>
                <br />
            </td>
            <td>
                <asp:GridView ID="GridView2" runat="server" AllowSorting="True" 
                    AutoGenerateColumns="False" BackColor="White" BorderColor="#CC9966" 
                    BorderStyle="None" BorderWidth="1px" CellPadding="4" 
                    DataSourceID="SqlDataSource2" DataKeyNames="email">
                    <Columns>
                        <asp:BoundField DataField="name_user" HeaderText="Nombre Usuario" 
                            SortExpression="name_user" />
                        <asp:BoundField DataField="email" HeaderText="Email" 
                            SortExpression="email" ReadOnly="True" />
                    </Columns>
                    <FooterStyle BackColor="#FFFFCC" ForeColor="#330099" />
                    <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="#FFFFCC" />
                    <PagerStyle BackColor="#FFFFCC" ForeColor="#330099" HorizontalAlign="Center" />
                    <RowStyle BackColor="White" ForeColor="#330099" />
                    <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="#663399" />
                    <SortedAscendingCellStyle BackColor="#FEFCEB" />
                    <SortedAscendingHeaderStyle BackColor="#AF0101" />
                    <SortedDescendingCellStyle BackColor="#F6F0C0" />
                    <SortedDescendingHeaderStyle BackColor="#7E0000" />
                </asp:GridView>
                <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:ceramfisicoConnectionString %>" 
                    ProviderName="<%$ ConnectionStrings:ceramfisicoConnectionString.ProviderName %>" 
                    SelectCommand="searchUserPosi" SelectCommandType="StoredProcedure">
                    <SelectParameters>
                        <asp:ControlParameter ControlID="tbInsertPosi" Name="posiUser" 
                            PropertyName="Text" Type="String" />
                    </SelectParameters>
                </asp:SqlDataSource>
            </td>
            <td>
                <asp:GridView ID="GridView3" runat="server" AllowSorting="True" 
                    AutoGenerateColumns="False" BackColor="White" BorderColor="#CC9966" 
                    BorderStyle="None" BorderWidth="1px" CellPadding="4" 
                    DataSourceID="SqlDataSource3">
                    <Columns>
                        <asp:BoundField DataField="email" HeaderText="Email del Usuario" 
                            SortExpression="email" />
                        <asp:BoundField DataField="posi_user" HeaderText="Cargo del Usuario" 
                            SortExpression="posi_user" />
                    </Columns>
                    <FooterStyle BackColor="#FFFFCC" ForeColor="#330099" />
                    <HeaderStyle BackColor="#990000" Font-Bold="True" Font-Italic="False" 
                        Font-Overline="False" Font-Underline="False" ForeColor="#FFFFCC" Wrap="True" />
                    <PagerStyle BackColor="#FFFFCC" ForeColor="#330099" HorizontalAlign="Center" />
                    <RowStyle BackColor="White" ForeColor="#330099" />
                    <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="#663399" />
                    <SortedAscendingCellStyle BackColor="#FEFCEB" />
                    <SortedAscendingHeaderStyle BackColor="#AF0101" />
                    <SortedDescendingCellStyle BackColor="#F6F0C0" />
                    <SortedDescendingHeaderStyle BackColor="#7E0000" />
                </asp:GridView>
                <asp:SqlDataSource ID="SqlDataSource3" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:ceramfisicoConnectionString %>" 
                    ProviderName="<%$ ConnectionStrings:ceramfisicoConnectionString.ProviderName %>" 
                    SelectCommand="searchUserName" SelectCommandType="StoredProcedure">
                    <SelectParameters>
                        <asp:ControlParameter ControlID="tbInsertName" Name="nameUser" 
                            PropertyName="Text" Type="String" />
                    </SelectParameters>
                </asp:SqlDataSource>
            </td>
        </tr>
    </table>
    <p class="style3">
                &nbsp;</p>
    <p class="style3">
                &nbsp;</p>
</asp:Content>
