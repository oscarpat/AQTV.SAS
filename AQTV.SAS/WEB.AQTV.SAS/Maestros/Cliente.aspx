<%@ Page Title="" Language="C#" MasterPageFile="~/Principal.Master" AutoEventWireup="true" CodeBehind="Cliente.aspx.cs" Inherits="WEB.AQTV.SAS.WebForm2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            max-width: 300px;
            width: 341px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">


        <link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
        <link rel="stylesheet" href="/resources/demos/style.css">
        <script src="https://code.jquery.com/jquery-1.12.4.js"></script>
        <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
        <script>
            $(function () {
                $(".FechaTextBox").datepicker({
                    dateFormat: "yy/mm/dd",
                    changeYear: true
                });
                 $( "#tabs" ).tabs();
            });
        </script>
    <h1> Cliente</h1>
    <p> 
        <table>
            <tr>
                <td class="modal-sm">TipoDocumentoID:</td>
                <td class="auto-style1">
                    <asp:DropDownList ID="TipoDocumentoDropDownList" runat="server" DataSourceID="SqlDataSourceTipoDoccumento" DataTextField="Descripcion" DataValueField="TipoDocumentoID" Height="27px" Width="269px">
                    </asp:DropDownList>
                </td>
                <td>Identificacion</td>
                <td>
                    <asp:TextBox ID="IdentificacionTextBox" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="modal-sm">Nombre:</td>
                <td class="auto-style1">
                    <asp:TextBox ID="NombreTextBox" runat="server"></asp:TextBox>
                </td>
                <td>Apellido</td>
                <td>
                    <asp:TextBox ID="ApellidoTextBox" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="modal-sm">Dirección</td>
                <td class="auto-style1">
                    <asp:TextBox ID="DireccionTextBox" runat="server"></asp:TextBox>
                </td>
                <td>Celular</td>
                <td>
                    <asp:TextBox ID="CelularTextBox" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="modal-sm">Correo</td>
                <td class="auto-style1">
                    <asp:TextBox ID="CorreoTextBox" runat="server"></asp:TextBox>
                </td>
                <td>Fecha</td>
                <td>
                    <asp:TextBox ID="FechaTextBox" runat="server" CssClass="FechaTextBox"></asp:TextBox>
                </td>
            </tr>
        </table>
    </p>
    <p> 
        <asp:Button ID="AgregarButton" runat="server" OnClick="AgregarButton_Click" Text="Agregar cliente" />
    </p>
    <p> <strong>
        <asp:Label ID="MensajeLabel" runat="server" Style="font-size: x-large; color: #0000CC"></asp:Label>
        </strong></p>
    <p> 
        <asp:GridView ID="ClientesGridView" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="ClientesID" DataSourceID="SqlDataSourceCliente" EmptyDataText="There are no data records to display." ForeColor="#333333" GridLines="None" Width="1207px">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                <asp:BoundField DataField="ClientesID" HeaderText="Clientes" ReadOnly="True" SortExpression="ClientesID" />
                <asp:BoundField DataField="TipoDocumentoID" HeaderText="Tipo Documento" SortExpression="TipoDocumentoID" />
                <asp:BoundField DataField="Identificacion" HeaderText="Identificación" SortExpression="Identificacion" />
                <asp:BoundField DataField="Nombre" HeaderText="Nombre" SortExpression="Nombre" />
                <asp:BoundField DataField="Apellido" HeaderText="Apellido" SortExpression="Apellido" />
                <asp:BoundField DataField="Direccion" HeaderText="Dirección" SortExpression="Direccion" />
                <asp:BoundField DataField="Celular" HeaderText="Celular" SortExpression="Celular" />
                <asp:BoundField DataField="Correo" HeaderText="Correo" SortExpression="Correo" />
                <asp:BoundField DataField="Fecha" DataFormatString="{0:d}" HeaderText="Fecha" SortExpression="Fecha" />
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
        <asp:SqlDataSource ID="SqlDataSourceCliente" runat="server" ConnectionString="<%$ ConnectionStrings:DefaultConnection %>" DeleteCommand="DELETE FROM [Clientes] WHERE [ClientesID] = @ClientesID" InsertCommand="INSERT INTO [Clientes] ([TipoDocumentoID], [Identificacion], [Nombre], [Apellido], [Direccion], [Celular], [Correo], [Fecha]) VALUES (@TipoDocumentoID, @Identificacion, @Nombre, @Apellido, @Direccion, @Celular, @Correo, @Fecha)" ProviderName="<%$ ConnectionStrings:DefaultConnection.ProviderName %>" SelectCommand="SELECT [ClientesID], [TipoDocumentoID], [Identificacion], [Nombre], [Apellido], [Direccion], [Celular], [Correo], [Fecha] FROM [Clientes]" UpdateCommand="UPDATE [Clientes] SET [TipoDocumentoID] = @TipoDocumentoID, [Identificacion] = @Identificacion, [Nombre] = @Nombre, [Apellido] = @Apellido, [Direccion] = @Direccion, [Celular] = @Celular, [Correo] = @Correo, [Fecha] = @Fecha WHERE [ClientesID] = @ClientesID">
            <DeleteParameters>
                <asp:Parameter Name="ClientesID" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="TipoDocumentoID" Type="Int32" />
                <asp:Parameter Name="Identificacion" Type="String" />
                <asp:Parameter Name="Nombre" Type="String" />
                <asp:Parameter Name="Apellido" Type="String" />
                <asp:Parameter Name="Direccion" Type="String" />
                <asp:Parameter Name="Celular" Type="String" />
                <asp:Parameter Name="Correo" Type="String" />
                <asp:Parameter Name="Fecha" Type="DateTime" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="TipoDocumentoID" Type="Int32" />
                <asp:Parameter Name="Identificacion" Type="String" />
                <asp:Parameter Name="Nombre" Type="String" />
                <asp:Parameter Name="Apellido" Type="String" />
                <asp:Parameter Name="Direccion" Type="String" />
                <asp:Parameter Name="Celular" Type="String" />
                <asp:Parameter Name="Correo" Type="String" />
                <asp:Parameter Name="Fecha" Type="DateTime" />
                <asp:Parameter Name="ClientesID" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
    </p>
    <p> 
        <asp:SqlDataSource ID="SqlDataSourceTipoDoccumento" runat="server" ConnectionString="<%$ ConnectionStrings:DefaultConnection %>" SelectCommand="select TipoDocumentoID, Descripcion from TipoDocumento
union
select 0, '[Selecciona un tipo de documento...]'
order by 2"></asp:SqlDataSource>
    </p>
</asp:Content>
