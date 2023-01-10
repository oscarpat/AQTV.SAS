<%@ Page Title="" Language="C#" MasterPageFile="~/Principal.Master" AutoEventWireup="true" CodeBehind="Proveedor.aspx.cs" Inherits="WEB.AQTV.SAS.WebForm4" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h1>Proveedor</h1>
    <p>
        <table>
            <tr>
                <td>TipoDocumentoID</td>
                <td class="modal-sm">
                    <asp:DropDownList ID="TipoDocumentoDropDownList" runat="server" DataSourceID="SqlDataSourceTipoDocumento" DataTextField="Descripcion" DataValueField="TipoDocumentoID" Height="27px" Width="200px">
                    </asp:DropDownList>
                </td>
                <td>Documento</td>
                <td>
                    <asp:TextBox ID="DocumentoTextBox" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>Nombre Comercial</td>
                <td class="modal-sm">
                    <asp:TextBox ID="NombreComercialTextBox" runat="server"></asp:TextBox>
                </td>
                <td>Nombre Contacto</td>
                <td>
                    <asp:TextBox ID="NombreContactoTextBox" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>ApellidoContacto</td>
                <td class="modal-sm">
                    <asp:TextBox ID="ApellidoContactoTextBox" runat="server"></asp:TextBox>
                </td>
                <td>Direccion</td>
                <td>
                    <asp:TextBox ID="DireccionTextBox" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>Celular</td>
                <td class="modal-sm">
                    <asp:TextBox ID="CelularTextBox" runat="server"></asp:TextBox>
                </td>
                <td>Correo</td>
                <td>
                    <asp:TextBox ID="CorreoTextBox" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td class="modal-sm">&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
        </table>
    </p>
    <p>
        <asp:Button ID="ProveedorButton" runat="server" OnClick="ProveedorButton_Click" Text="Agregar proveedor" />
    </p>
    <p><strong>
        <asp:Label ID="MensajeLabel" runat="server" style="font-size: x-large; color: #0000CC"></asp:Label>
        </strong></p>
    <p>
        <asp:GridView ID="proveedorGridView" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="ProveedorID" DataSourceID="SqlDataSourceProverdor" EmptyDataText="There are no data records to display." ForeColor="#333333" GridLines="None">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                <asp:BoundField DataField="ProveedorID" HeaderText="ProveedorID" ReadOnly="True" SortExpression="ProveedorID" />
                <asp:BoundField DataField="TipoDocumentoID" HeaderText="TipoDocumentoID" SortExpression="TipoDocumentoID" />
                <asp:BoundField DataField="Documento" HeaderText="Documento" SortExpression="Documento" />
                <asp:BoundField DataField="NombreComercial" HeaderText="NombreComercial" SortExpression="NombreComercial" />
                <asp:BoundField DataField="NombreContacto" HeaderText="NombreContacto" SortExpression="NombreContacto" />
                <asp:BoundField DataField="ApellidoContacto" HeaderText="ApellidoContacto" SortExpression="ApellidoContacto" />
                <asp:BoundField DataField="Direccion" HeaderText="Direccion" SortExpression="Direccion" />
                <asp:BoundField DataField="Celular" HeaderText="Celular" SortExpression="Celular" />
                <asp:BoundField DataField="Correo" HeaderText="Correo" SortExpression="Correo" />
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
        <asp:SqlDataSource ID="SqlDataSourceProverdor" runat="server" ConnectionString="<%$ ConnectionStrings:DefaultConnection %>" DeleteCommand="DELETE FROM [Proveedor] WHERE [ProveedorID] = @ProveedorID" InsertCommand="INSERT INTO [Proveedor] ([TipoDocumentoID], [Documento], [NombreComercial], [NombreContacto], [ApellidoContacto], [Direccion], [Celular], [Correo]) VALUES (@TipoDocumentoID, @Documento, @NombreComercial, @NombreContacto, @ApellidoContacto, @Direccion, @Celular, @Correo)" ProviderName="<%$ ConnectionStrings:DefaultConnection.ProviderName %>" SelectCommand="SELECT [ProveedorID], [TipoDocumentoID], [Documento], [NombreComercial], [NombreContacto], [ApellidoContacto], [Direccion], [Celular], [Correo] FROM [Proveedor]" UpdateCommand="UPDATE [Proveedor] SET [TipoDocumentoID] = @TipoDocumentoID, [Documento] = @Documento, [NombreComercial] = @NombreComercial, [NombreContacto] = @NombreContacto, [ApellidoContacto] = @ApellidoContacto, [Direccion] = @Direccion, [Celular] = @Celular, [Correo] = @Correo WHERE [ProveedorID] = @ProveedorID">
            <DeleteParameters>
                <asp:Parameter Name="ProveedorID" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="TipoDocumentoID" Type="Int32" />
                <asp:Parameter Name="Documento" Type="String" />
                <asp:Parameter Name="NombreComercial" Type="String" />
                <asp:Parameter Name="NombreContacto" Type="String" />
                <asp:Parameter Name="ApellidoContacto" Type="String" />
                <asp:Parameter Name="Direccion" Type="String" />
                <asp:Parameter Name="Celular" Type="String" />
                <asp:Parameter Name="Correo" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="TipoDocumentoID" Type="Int32" />
                <asp:Parameter Name="Documento" Type="String" />
                <asp:Parameter Name="NombreComercial" Type="String" />
                <asp:Parameter Name="NombreContacto" Type="String" />
                <asp:Parameter Name="ApellidoContacto" Type="String" />
                <asp:Parameter Name="Direccion" Type="String" />
                <asp:Parameter Name="Celular" Type="String" />
                <asp:Parameter Name="Correo" Type="String" />
                <asp:Parameter Name="ProveedorID" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
    </p>
    <p>
        <asp:SqlDataSource ID="SqlDataSourceTipoDocumento" runat="server" ConnectionString="<%$ ConnectionStrings:DefaultConnection %>" SelectCommand="select TipoDocumentoID, Descripcion from TipoDocumento
union
select 0, '[Selecciona un tipo de documento...]'
order by 2"></asp:SqlDataSource>
    </p>


</asp:Content>
