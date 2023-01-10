<%@ Page Title="" Language="C#" MasterPageFile="~/Principal.Master" AutoEventWireup="true" CodeBehind="Index.aspx.cs" Inherits="WEB.AQTV.SAS.Index" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    &nbsp;
    &nbsp;
    &nbsp;
    &nbsp;
    &nbsp;




    <table class="w-100">
        <tr>
            <td>
                <asp:LinkButton ID="ClientesLinkButton" runat="server" CssClass="btn btn-primary" PostBackUrl="~/Maestros/Cliente.aspx">Clientes ------------></asp:LinkButton>
            </td>
            <td>
                <asp:LinkButton ID="ComprasLinkButton" runat="server" CssClass="btn btn-primary" PostBackUrl="~/Movimientos/Compras.aspx">Compras -------></asp:LinkButton></td>
            <td>
                <asp:LinkButton ID="ProductoLinkButton" runat="server" CssClass="btn btn-primary" PostBackUrl="~/Maestros/Productos.aspx">Productos</asp:LinkButton></td>
            <td>
                <asp:LinkButton ID="TipoDocumentoLinkButton" runat="server" CssClass="btn btn-primary" PostBackUrl="~/Maestros/TipoDocumento.aspx">TipoDocumento</asp:LinkButton></td>
        </tr>
        <tr>
            <td>
                <asp:LinkButton ID="TecnicoinstaladorLinkButton" runat="server" CssClass="btn btn-primary" PostBackUrl="~/Maestros/TecnicoInstalador.aspx">Tecnico instalador</asp:LinkButton></td>
            <td>
                <asp:LinkButton ID="TipoDeServicioLinkButton" runat="server" CssClass="btn btn-primary" PostBackUrl="~/Maestros/TipoDeServicio.aspx">Tipo de servicio</asp:LinkButton></td>
            <td>
                <asp:LinkButton ID="ProveedorLinkButton" runat="server" CssClass="btn btn-primary" PostBackUrl="~/Maestros/Proveedor.aspx">Proveedor</asp:LinkButton></td>
            <td>
                <asp:LinkButton ID="VentasLinkButton" runat="server" CssClass="btn btn-primary" PostBackUrl="~/Movimientos/Ventas.aspx">Ventas ---------></asp:LinkButton></td>
        </tr>
        <tr>
            <td>&nbsp;</td>

            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>

    </table>
    <br />



    <div class="row">

        <div class="col-md-4 mb-3 mb-md-0">
            <div class="card py-4 h-100">
                <div class="card-body text-center">
                    <i class="fas fa-map-marked-alt text-primary mb-2"></i>
                    <h4 class="text-uppercase m-0">Address</h4>
                    <hr class="my-4">
                    <div class="small text-black-50">4923 Market Street, Orlando FL</div>
                </div>
            </div>

        </div>


        <div class="col-md-4 mb-3 mb-md-0">
            <div class="card py-4 h-100">
                <div class="card-body text-center">
                    <i class="fas fa-envelope text-primary mb-2"></i>
                    <h4 class="text-uppercase m-0">Email</h4>
                    <hr class="my-4">
                    <div class="small text-black-50">
                        <a href="#">hello@yourdomain.com</a>
                    </div>
                </div>
            </div>
        </div>

        <div class="col-md-4 mb-3 mb-md-0">
            <div class="card py-4 h-100">
                <div class="card-body text-center">
                    <i class="fas fa-mobile-alt text-primary mb-2"></i>
                    <h4 class="text-uppercase m-0">Phone</h4>
                    <hr class="my-4">
                    <div class="small text-black-50">+1 (555) 902-8832</div>
                </div>
            </div>
        </div>
    </div>

    <div class="social d-flex justify-content-center">
        <a href="#" class="mx-2">
            <i class="fab fa-twitter"></i>
        </a>
        <a href="#" class="mx-2">
            <i class="fab fa-facebook-f"></i>
        </a>
        <a href="#" class="mx-2">
            <i class="fab fa-github"></i>
        </a>
    </div>
</asp:Content>

