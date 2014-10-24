<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="FichaIngreso.aspx.cs" Inherits="WebCeram.Formulario_web17" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
    <link href="Styles/bootstrap.css" rel="stylesheet" type="text/css" />
    <style type="text/css">
        .style1
        {
            width: 199px;
        }
        .style2
        {
            height: 20px;
        }
        #Text1
        {
            height: 132px;
            width: 224px;
        }
    .style3
    {
        width: 199px;
        height: 26px;
    }
    .style4
    {
        height: 26px;
    }
    .style5
    {
        text-align: center;
    }
        #Text2
        {
            height: 132px;
            width: 885px;
        }
        .menu
        {
            font-size: medium;
        }
        #popup {
	        left: 0;
            position: absolute;
            top: 0;
            width: 100%;
            z-index: 1001;
        }

        .content-popup {
	        margin:0px auto;
	        margin-top:120px;
	        position:relative;
	        padding:10px;
	        width:500px;
	        min-height:250px;
	        border-radius:4px;
	        background-color:#FFFFFF;
	        box-shadow: 0 2px 5px #666666;
        }

        .content-popup h2 {
	        color:#48484B;
	        border-bottom: 1px solid #48484B;
            margin-top: 0;
            padding-bottom: 4px;
        }

        .popup-overlay {
	        left: 0;
            position: absolute;
            top: 0;
            width: 100%;
            z-index: 999;
	        display:none;
	        background-color: #777777;
            cursor: pointer;
            opacity: 0.7;
        }
        #column-right {
	        background-color: #EBE9EA;
            border: 1px solid #D2D2D2;
            border-radius: 8px 8px 8px 8px;
            float: right;
            min-height: 225px;
            margin-bottom: 10px;
            overflow: hidden;
            text-align: center;
            width: 180px;
	        padding-top:10px;
        }
        .modalBackground 
        {
            background-color: Black;
            filter: alpha(opacity=90);
            opacity: 0.8;
            z-index: 10000;
        }
        
        .menu
        {
            font-size: medium;
        }
        .menu
        {
            font-size: small;
        }
        
    </style>
    <link rel="stylesheet" href="Scripts/include/ui-1.10.0/ui-lightness/jquery-ui-1.10.0.custom.min.css" type="text/css" />
     <link rel="stylesheet" href="Scripts/jquery.ui.timepicker.css" type="text/css" />
     <script type="text/javascript" src="Scripts/include/jquery-1.9.0.min.js"></script>
    <script type="text/javascript" src="Scripts/include/ui-1.10.0/jquery.ui.core.min.js"></script>
    <script type="text/javascript" src="Scripts/include/ui-1.10.0/jquery.ui.widget.min.js"></script>
    <script type="text/javascript" src="Scripts/include/ui-1.10.0/jquery.ui.tabs.min.js"></script>
    <script type="text/javascript" src="Scripts/include/ui-1.10.0/jquery.ui.position.min.js"></script>

<script type="text/javascript" src="Scripts/jquery.ui.timepicker.js"></script>
<script type="text/javascript">
    $(document).ready(function () {
        $('#open').click(function () {
            $('#popup').fadeIn('slow');
            $('.popup-overlay').fadeIn('slow');
            $('.popup-overlay').height($(window).height());
            return false;
        });

        $('#close').click(function () {
            $('#popup').fadeOut('slow');
            $('.popup-overlay').fadeOut('slow');
            return false;
        });
    });

</script>
 <script type="text/javascript">
     $(document).ready(function () {
         $('#timepicker\\.\\[1\\]').timepicker({
             showAnim: 'blind'
         });
     });
                    </script>

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
    <br />

<h2 class="style5">
        Ficha de Ingreso de Muestras 44923</h2>
    <p>
        <table frame="border" style="width: 100%;">
        <asp:ToolkitScriptManager ID="ToolkitScriptManager1" runat="server">
                    </asp:ToolkitScriptManager>
            <tr>
                <td class="style1">
                    Empresa Solicitante</td>
                <td>
                    <asp:TextBox ID="tbSolicitantEmpresa" runat="server"></asp:TextBox>
                    <asp:UpdatePanel runat="server">
                        <ContentTemplate>
                            <asp:Button ID="btnPopUp" runat="server" Text="Buscar" 
                        onclick="btnPopUp_Click1" />
                        </ContentTemplate>
                     </asp:UpdatePanel>
                     <asp:Button ID="btnIinicial" runat="server" Text="Button" style="display:none" />
                    <asp:ModalPopupExtender ID="ModalPopupExtender1" DynamicServicePath="" Enabled="true" 
                    TargetControlID="btnIinicial" runat="server" BackgroundCssClass="modalBackground" 
                    PopupControlID="ModalPanel">
                    </asp:ModalPopupExtender>
                    
                    <asp:Panel ID="ModalPanel" runat="server" style="display:none; background:white; width:70%; height:auto">
                        <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                            <ContentTemplate>
                                <div class="modal-header">
                                <h3 id="myModalLabel">Buscar Empresa</h3>
                              </div>
                        <div class="modal-body">
        	                <table style="width:100%;">
                             
                                <tr>
                                    <td>
                                        <table style="width:100%;">
                                            <tr>
                                                <td>
                                                    Nombre de la Empresa</td>
                                                <td>
                                                    <asp:TextBox ID="tbNameSearch" runat="server"></asp:TextBox>
                                                    <br />
                                                    <asp:Label ID="lbSearchName" runat="server" ForeColor="Red"></asp:Label>
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
                                                    <asp:Label ID="lbSearchCod" runat="server" ForeColor="Red"></asp:Label>
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
                                                    <asp:GridView ID="gvSearch" runat="server" BackColor="White" 
                                                        BorderColor="#DEDFDE" BorderStyle="None" BorderWidth="1px" CellPadding="4" 
                                                        ForeColor="Black" GridLines="Vertical" AutoGenerateColumns="False">
                                                        <AlternatingRowStyle BackColor="White" />
                                                        <Columns>
                                                            <asp:BoundField DataField="Cod_client" HeaderText="Código" />
                                                            <asp:BoundField DataField="Name_client" HeaderText="Nombre" />
                                                            <asp:BoundField DataField="Email" HeaderText="Email" />
                                                            <asp:BoundField DataField="Phone" HeaderText="Teléfono" />
                                                            <asp:BoundField DataField="Direc" HeaderText="Dirección" />
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
                                                    <asp:GridView ID="gvSearch0" runat="server" BackColor="White" 
                                                        BorderColor="#DEDFDE" BorderStyle="None" BorderWidth="1px" CellPadding="4" 
                                                        ForeColor="Black" GridLines="Vertical" AutoGenerateColumns="False">
                                                        <AlternatingRowStyle BackColor="White" />
                                                        <Columns>
                                                            <asp:BoundField DataField="CodClient" HeaderText="Código" />
                                                            <asp:BoundField DataField="NameClient" HeaderText="Nombre" />
                                                            <asp:BoundField DataField="Email" HeaderText="Email" />
                                                            <asp:BoundField DataField="Fono" HeaderText="Teléfono" />
                                                            <asp:BoundField DataField="DireClient" HeaderText="Dirección" />
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
                            </table>
                            <div style="float:left; width:100%;">
                    </div>
                        </div>
                        <div class="modal-footer">
                  <asp:Button ID="btnClose" runat="server" Text="Cerrar" class="btn" 
                      data-dismiss="modal" aria-hidden="true" onclick="btnClose_Click"/>
              </div>
                            </ContentTemplate>
                        </asp:UpdatePanel>
                    </asp:Panel>
                    
                </td>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style1">
                    Atención</td>
                <td>
                    <asp:TextBox ID="tbAtencion" runat="server"></asp:TextBox>
                </td>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style1">
                    Fecha de Ingreso Muestra</td>
                <td>
                    <asp:Label ID="lbFechaIngr" runat="server"></asp:Label>
                </td>
                <td>
                    Hora Ingreso</td>
                <td>
                    <asp:Label ID="lbTimeIngre" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="style3">
                    Fecha Muestreo</td>
                <td class="style4">
                    
                    <asp:TextBox ID="tbCalendar" runat="server"></asp:TextBox>
                    <asp:CalendarExtender runat="server" TargetControlID="tbCalendar" 
                        CssClass="ui-widget-content" FirstDayOfWeek="Monday">
                    </asp:CalendarExtender>
                    
                </td>
                <td class="style4">
                    Hora Muestreo</td>
                <td class="style4">
                    <input type="text" style="width: 70px;" id="timepicker.[1]" value="" />
                   
                </td>
            </tr>
            <tr>
                <td class="style1">
                    Nombre Comercial</td>
                <td>
                    <asp:TextBox ID="tbNameComercial" runat="server"></asp:TextBox>
                </td>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style1">
                    Tipo Elaboración- Presentación</td>
                <td>
                    <asp:TextBox ID="tbPresentacion" runat="server"></asp:TextBox>
                </td>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style1">
                    Cantidad de Muestras</td>
                <td>
                    <asp:TextBox ID="tbCantidad" runat="server"></asp:TextBox>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" 
                        ControlToValidate="tbCantidad" ErrorMessage="Debe ingresar números" 
                        ForeColor="Red" ValidationExpression="[0-9]*"></asp:RegularExpressionValidator>
                </td>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style1">
                    Lugar de Extracción de Muestra</td>
                <td>
                    <asp:TextBox ID="tbExtraccion" runat="server"></asp:TextBox>
                </td>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style1">
                    Entidad Muestreadora</td>
                <td>
                    <asp:TextBox ID="tbEntiMuestra" runat="server"></asp:TextBox>
                    <asp:UpdatePanel ID="UpdatePanel2" runat="server">
                    <ContentTemplate>
                        <asp:Button ID="btnPopUPMuestrea" runat="server" Text="Buscar" OnClick="btnPopUPMuestrea_Click1" />
                    </ContentTemplate>
                    </asp:UpdatePanel>
                    <asp:Button ID="btnIni" runat="server" Text="Button" Style="display:none" />
                    <asp:ModalPopupExtender ID="ModalPopupExtender2" runat="server" DynamicServicePath="" Enabled="true"
                    TargetControlID="btnIni"  BackgroundCssClass="modalBackground" PopupControlID="ModalPanel1">
                    </asp:ModalPopupExtender>
                    <asp:Panel ID="ModalPanel1" runat="server" Style="display:none; background:white; width:70%; height:auto;">
                        <asp:UpdatePanel ID="UpdatePanel3" runat="server">
                        <ContentTemplate>
                        <div class="modal-header">
                        <h3 id="H1">Buscar Empresa</h3>
                        </div>
                        <div class="modal-body">
        	                <table style="width:100%;">
                                <tr>
                                    <td>
                                        <table style="width:100%;">
                                            <tr>
                                            <td>
                                                Nombre de la Empresa</td>
                                            <td>
                                                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                                                <br />
                                                <asp:Label ID="labelNamSearch0" runat="server" ForeColor="Red"></asp:Label>
                                            </td>
                                            <td>
                                                <asp:Button ID="Button2" runat="server" Text="Buscar Nombre" 
                                                    onclick="btBuscarName_Click" />
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>
                                                Código de la Empresa</td>
                                            <td>
                                                <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                                                <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" 
                                                    ControlToValidate="tbCode" ErrorMessage="Debe de colocar un número" 
                                                    ForeColor="Red" ValidationExpression="[0-9]*"></asp:RegularExpressionValidator>
                                                <br />
                                                <asp:Label ID="labelCodSearch" runat="server" ForeColor="Red"></asp:Label>
                                            </td>
                                            <td>
                                                <asp:Button ID="Button3" runat="server" Text="Buscar Code" 
                                                    onclick="btBuscarCodeMue_Click" />
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>
                                                &nbsp;</td>
                                            <td>
                                                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                                                    BackColor="White" BorderColor="#DEDFDE" BorderStyle="None" BorderWidth="1px" 
                                                    CellPadding="4" ForeColor="Black" GridLines="Vertical">
                                                    <AlternatingRowStyle BackColor="White" />
                                                    <Columns>
                                                        <asp:BoundField DataField="Cod_sampler" HeaderText="Código" />
                                                        <asp:BoundField DataField="Name_sampler" HeaderText="Nombre" />
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
                                                <asp:GridView ID="GridView2" runat="server" BackColor="White" 
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
                            </table>
                            <div style="float:left; width:100%;">
                    </div>
                        </div>
                        <div class="modal-footer">
                  <asp:Button ID="Button4" runat="server" Text="Cerrar" class="btn" 
                      data-dismiss="modal" aria-hidden="true" onclick="btnCerrar_Click"/>
                </div>
                        </ContentTemplate>
                        </asp:UpdatePanel>
                    </asp:Panel>
                </td>
                <td>
                    Muestreador</td>
                <td>
                    <asp:TextBox ID="tbMuestreador" runat="server"></asp:TextBox>
                </td>
            </tr>
        </table>
    </p>
    <br />
    AREA MAREA ROJA<br />
    <table style="width: 100%;">
        <tr>
            <td class="style2">
                VAM</td>
            <td class="style2">
                VDM</td>
            <td class="style2">
                VPM</td>
            <td class="style2">
                Fitoplancton</td>
        </tr>
        <tr>
            <td class="style2">
                <asp:TextBox ID="tbVam" runat="server"></asp:TextBox>
            </td>
            <td class="style2">
                <asp:TextBox ID="tbVDM" runat="server"></asp:TextBox>
            </td>
            <td class="style2">
                <asp:TextBox ID="tbVPM" runat="server"></asp:TextBox>
            </td>
            <td class="style2">
                <asp:TextBox ID="tbFito" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
                Temperatura
                <asp:TextBox ID="tbTemp" runat="server"></asp:TextBox>
            </td>
            <td>
                &nbsp;</td>
            <td>
                Otro Especificar
                <asp:TextBox ID="tbOtro" runat="server"></asp:TextBox>
            </td>
            <td>
                &nbsp;</td>
        </tr>
    </table>
    <br />
    CLAVES<br />
    <br />
    <input id="Text1" type="text" />
    <asp:Button ID="Button1" runat="server" Text="Ingresar Muestra" 
        onclick="Button1_Click" />
    <br />
    <br />
    Observaciones<br />
    <input id="Text2" type="text" /><br />
<table style="width:100%;">
    <tr>
        <td>
            &nbsp;</td>
        <td>
            &nbsp;</td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td>
            Universidad Austral de Chile- Centro Regional de Análisis de Recursos y Medio 
            Ambiente CERAM</td>
        <td>
            Los Pinos s/n° Pelluco</td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td>
            Fono: 65-22-64596&nbsp;&nbsp;&nbsp; 65-22-64597</td>
        <td>
            <a href="mailto:ceram@uach.cl">ceram@uach.cl</a>&nbsp; Casilla 1327 Puerto Montt</td>
        <td>
            &nbsp;</td>
    </tr>
</table>
</asp:Content>
