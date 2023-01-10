﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Principal.Master" AutoEventWireup="true" CodeBehind="Compras.aspx.cs" Inherits="WEB.AQTV.SAS.WebForm7" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <H1>Compras</H1>
    <p>&nbsp;</p>
    <p>
        <table>
            <tr>
                <td>Proveedor: * </td>
                <td>
                    <asp:DropDownList ID="ProveedorDropDownList" runat="server" DataSourceID="ProveedorSqlDataSource" DataTextField="NombreComercial" DataValueField="ProveedorID" Height="27px" Width="203px">
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td>Producto: *</td>
                <td>
                    <asp:DropDownList ID="ProductoDropDownList" runat="server" DataSourceID="ProductoSqlDataSource" DataTextField="Descripcion" DataValueField="productoID" Height="26px" Width="199px">
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td>Cantidad: *</td>
                <td>
                    <asp:TextBox ID="CantidadTextBox" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>Costo: *</td>
                <td>
                    <asp:TextBox ID="CostoTextBox" runat="server"></asp:TextBox>
                </td>
            </tr>
        </table>
    </p>
    <p>
        <asp:Button ID="AgregarButton" runat="server" OnClick="AgregarButton_Click" Text="Agregar" style="height: 33px" />
        <asp:Button ID="EliminarButton" runat="server" Text="Eliminar" OnClick="EliminarButton_Click" />
        <asp:Button ID="GrabarButton" runat="server" OnClick="GrabarButton_Click" Text="Grabar compra" />
    </p>
    <p><strong>
        <asp:Label ID="MensajeLabel" runat="server" style="font-size: x-large; color: #0000CC"></asp:Label>
        </strong></p>
    <p>
        <asp:GridView ID="ComprasGridView" runat="server" AutoGenerateColumns="False" CellPadding="4" EmptyDataText="&lt;h2&gt; No se ha agregado ningun elemento &lt;/h2&gt;" ForeColor="#333333" GridLines="None">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:BoundField DataField="ProductoID" HeaderText="Producto" />
                <asp:BoundField DataField="Descripcion" HeaderText="Descripción" />
                <asp:BoundField DataField="Precio" DataFormatString="{0:C1}" HeaderText="Precio">
                <ItemStyle HorizontalAlign="Right" />
                </asp:BoundField>
                <asp:BoundField DataField="Cantidad" DataFormatString="{0:N1}" HeaderText="Cantidad">
                <ItemStyle HorizontalAlign="Right" />
                </asp:BoundField>
                <asp:BoundField DataField="Valor" DataFormatString="{0:C1}" HeaderText="Valor">
                <ItemStyle HorizontalAlign="Right" />
                </asp:BoundField>
            </Columns>
            <EditRowStyle BackColor="#2461BF" />
            <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#EFF3FB" />
            <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
            <SortedAscendingCellStyle BackColor="#F5F7FB" />
            <SortedAscendingHeaderStyle BackColor="#6D95E1" />
            <SortedDescendingCellStyle BackColor="#E9EBEF" />
            <SortedDescendingHeaderStyle BackColor="#4870BE" />
        </asp:GridView>
    </p>
    <p>
        <table>
            <tr>
                <td>Total Cantidad:</td>
                <td>
                    <asp:TextBox ID="TotalCantidadTextBox" runat="server" ReadOnly="True"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>Total valor:</td>
                <td>
                    <asp:TextBox ID="TotalValorTextBox" runat="server" ReadOnly="True"></asp:TextBox>
                </td>
            </tr>
        </table>
    </p>
    <p>&nbsp;</p>
    <p>&nbsp;</p>
    <p>
        <asp:SqlDataSource ID="ProductoSqlDataSource" runat="server" ConnectionString="<%$ ConnectionStrings:DefaultConnection %>" SelectCommand="select productoID,Descripcion from Producto
union
select 0, '[Selecciona un provedor...]'
order by 2"></asp:SqlDataSource>
    </p>
    <p>
        <asp:SqlDataSource ID="ProveedorSqlDataSource" runat="server" ConnectionString="<%$ ConnectionStrings:DefaultConnection %>" SelectCommand="select ProveedorID,NombreComercial from Proveedor
union
select 0, '[Selecciona un provedor...]'
order by 2" ProviderName="<%$ ConnectionStrings:DefaultConnection.ProviderName %>"></asp:SqlDataSource>
    </p>
    <p>&nbsp;</p>
</asp:Content>
