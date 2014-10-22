<%@ Page Title="Acerca de nosotros" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true"
    CodeBehind="Inicio.aspx.cs" Inherits="WebCeram.About" %>

<asp:Content ID="HeaderContent" runat="server" ContentPlaceHolderID="HeadContent">
    <style type="text/css">
        .menu
        {
            font-size: large;
        }
        .style1
        {
            font-size: small;
        }
        .style2
        {
            font-size: small;
            text-align: center;
        }
        .style3
        {
            text-align: center;
        }
        .menu
        {
            font-size: small;
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
<asp:Content ID="BodyContent" runat="server" ContentPlaceHolderID="MainContent">
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
    <p style="border-style: none; border-color: inherit; border-width: 0px; margin: 0px 0px 1.5em; padding: 0px; font-family: 'Trebuchet MS', Geneva, Verdana, sans-serif; font-size: 12px; font-style: normal; font-variant: normal; font-weight: normal; line-height: 16.5px; vertical-align: baseline; color: rgb(84, 84, 84); letter-spacing: normal; orphans: auto; text-indent: 0px; text-transform: none; white-space: normal; widows: auto; word-spacing: 0px; -webkit-text-stroke-width: 0px; text-align: justify; background-color: rgb(255, 255, 255);">
        &nbsp;</p>
    <p class="style2" 
        style="border-style: none; border-color: inherit; border-width: 0px; margin: 0px 0px 1.5em; padding: 0px; font-family: 'Trebuchet MS', Geneva, Verdana, sans-serif; font-style: normal; font-variant: normal; font-weight: normal; line-height: 16.5px; vertical-align: baseline; color: rgb(84, 84, 84); letter-spacing: normal; orphans: auto; text-indent: 0px; text-transform: none; white-space: normal; widows: auto; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255);">
        El Centro Regional de Análisis de Recursos y Medio Ambiente (CERAM) ubicado en 
        la Universidad Austral de Chile Sede Puerto Montt, ofrece sus servicios&nbsp; en 
        el área de biotoxinas&nbsp; marinas,&nbsp; para la detección&nbsp; de los 
        Venenos Paralizante (VPM) , Amnésico (VAM ) y Diarreico de los Mariscos (VDM)&nbsp; 
        en moluscos de importancia económica y análisis de fitoplancton&nbsp; en agua de 
        mar (cualitativo y cuantitativo). Análisis&nbsp; acreditados por&nbsp; el 
        Instituto Nacional de Normalización (INN) bajo la norma NCh-ISO 17025. Of. 2005, 
        bajo&nbsp; el convenio INN-Sernapesca.</p>
    <p class="style2" 
        style="border-style: none; border-color: inherit; border-width: 0px; margin: 0px 0px 1.5em; padding: 0px; font-family: 'Trebuchet MS', Geneva, Verdana, sans-serif; font-style: normal; font-variant: normal; font-weight: normal; line-height: 16.5px; vertical-align: baseline; color: rgb(84, 84, 84); letter-spacing: normal; orphans: auto; text-indent: 0px; text-transform: none; white-space: normal; widows: auto; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255);">
        El CERAM fue creado en el año 1994 con financiamiento&nbsp; de un Proyecto 
        FONDEF de Infraestructura y Servicio. El laboratorio se divide en dos áreas 
        técnicas Marea Roja y Físico-Química, más una unidad administrativa. Estos 
        servicios se ofrecen a nivel nacional, encontrándose el mayor número de clientes 
        en la Región de los Lagos.</p>
    <p class="style3" 
        style="margin: 0px 0px 1.5em; padding: 0px; border: 0px; font-family: 'Trebuchet MS', Geneva, Verdana, sans-serif; font-size: 11px; font-style: normal; font-variant: normal; font-weight: normal; line-height: 16.5px; vertical-align: baseline; color: rgb(84, 84, 84); letter-spacing: normal; orphans: auto; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: auto; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255);">
        <span class="style1">Otra actividad del CERAM&nbsp; es la&nbsp; realización de&nbsp;</span><span 
            class="Apple-converted-space"><span class="style1">&nbsp;</span></span><span 
            class="style1" 
            style="border-style: none; border-color: inherit; border-width: 0px; margin: 0px; padding: 0px; font-family: inherit; font-style: inherit; font-variant: inherit; font-weight: inherit; line-height: inherit; vertical-align: baseline; color: rgb(128, 0, 0);">proyectos 
        de investigación</span><span class="style1">&nbsp;orientados al estudio de las 
        floraciones algales nocivas y su impacto en los moluscos de importancia 
        comercial. Entre ellos se destaca el Proyecto FONDEF MR07I107&nbsp; “Desarrollo 
        de herramientas de manejo para la planificación de cosechas de bancos naturales 
        de recursos bentónicos contaminados con biotoxinas marinas”. Segundo concurso 
        nacional del Programa de Ciencia y Tecnología en Marea Roja.</span></p>
    <p class="style3" 
        style="margin: 0px 0px 1.5em; padding: 0px; border: 0px; font-family: 'Trebuchet MS', Geneva, Verdana, sans-serif; font-size: 11px; font-style: normal; font-variant: normal; font-weight: normal; line-height: 16.5px; vertical-align: baseline; color: rgb(84, 84, 84); letter-spacing: normal; orphans: auto; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: auto; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255);">
        <strong style="margin: 0px; padding: 0px; border: 0px; font-family: inherit; font-size: inherit; font-style: inherit; font-variant: inherit; font-weight: inherit; line-height: inherit; vertical-align: baseline;">
        <span class="style1" 
            style="border-style: none; border-color: inherit; border-width: 0px; margin: 0px; padding: 0px; font-family: inherit; font-style: inherit; font-variant: inherit; font-weight: inherit; line-height: inherit; vertical-align: baseline; color: rgb(128, 0, 0);">
        Misión</span></strong></p>
    <p class="style2" 
        style="border-style: none; border-color: inherit; border-width: 0px; margin: 0px 0px 1.5em; padding: 0px; font-family: 'Trebuchet MS', Geneva, Verdana, sans-serif; font-style: normal; font-variant: normal; font-weight: normal; line-height: 16.5px; vertical-align: baseline; color: rgb(84, 84, 84); letter-spacing: normal; orphans: auto; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: auto; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255);">
        Respaldar el crecimiento y el desarrollo sustentable de las actividades 
        pesqueras y acuícolas de la región sur austral de nuestro país a través de la 
        certificación de la calidad de los productos y la evaluación ambiental.</p>
    <p>
        &nbsp;</p>
</asp:Content>
