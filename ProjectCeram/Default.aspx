<%@ Page Title="Acerca de nosotros" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true"
    CodeBehind="About.aspx.cs" Inherits="ProjectCeram.About" %>

<asp:Content ID="HeaderContent" runat="server" ContentPlaceHolderID="HeadContent">
</asp:Content>
<asp:Content ID="BodyContent" runat="server" ContentPlaceHolderID="MainContent">
<body>
<div class="clear hideSkiplink">
                <asp:Menu ID="NavigationMenu" runat="server" CssClass="menu" EnableViewState="false" IncludeStyleBlock="false" Orientation="Horizontal">
                    <Items>
                        <asp:MenuItem NavigateUrl="~/Default.aspx" Text="Página principal"/>
                        <asp:MenuItem NavigateUrl="~/About.aspx" Text="Acerca de"/>
                        <asp:MenuItem NavigateUrl="~/About.aspx" Text="Muestra"/>
                        <asp:MenuItem NavigateUrl="~/About.aspx" Text="Análisis"/>
                    </Items>
                </asp:Menu>
            </div>
</body>
    <h2>
        Acerca de
    </h2>
    <p>
        Coloque contenido aquí.
    </p>
</asp:Content>
