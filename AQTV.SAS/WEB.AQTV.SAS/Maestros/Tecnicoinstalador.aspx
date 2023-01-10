<%@ Page Title="" Language="C#" MasterPageFile="~/Principal.Master" AutoEventWireup="true" CodeBehind="TecnicoInstalador.aspx.cs" Inherits="WEB.AQTV.SAS.WebForm5" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">


   
        </script>
    <style type="text/css">
    .auto-style1 {
        width: 182px;
    }
    .auto-style2 {
        width: 216px;
    }
    .auto-style3 {
            width: 212px;
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


    <h1>Tecnico instalador</h1>
<table class="w-100">
    <tr>
        <td class="auto-style1">Tipo Documento ID</td>
        <td class="auto-style3">
            <asp:DropDownList ID="TipoDocumentoDropDownList" runat="server" DataSourceID="SqlDataSourceTipoDocumento" DataTextField="Descripcion" DataValueField="TipoDocumentoID" Width="198px">
            </asp:DropDownList>
        </td>
        <td class="auto-style2">Tipo de Servicio ID</td>
        <td>
            <asp:DropDownList ID="TipoDeServicioDropDownList" runat="server" DataSourceID="SqlDataSourceTipoDeServicio" DataTextField="Descripcion" DataValueField="TipodeServicioID" Width="196px">
            </asp:DropDownList>
        </td>
    </tr>
    <tr>
        <td class="auto-style1">Documento</td>
        <td class="auto-style3">
            <asp:TextBox ID="DocumentoTextBox" runat="server"></asp:TextBox>
        </td>
        <td class="auto-style2">Nombre</td>
        <td>
            <asp:TextBox ID="NombreTextBox" runat="server"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style1">Apellido</td>
        <td class="auto-style3">
            <asp:TextBox ID="ApellidoTextBox" runat="server"></asp:TextBox>
        </td>
        <td class="auto-style2">Direccion</td>
        <td>
            <asp:TextBox ID="DireccionTextBox" runat="server"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style1">Celular</td>
        <td class="auto-style3">
            <asp:TextBox ID="CelularTextBox" runat="server"></asp:TextBox>
        </td>
        <td class="auto-style2">Correo</td>
        <td>
            <asp:TextBox ID="CorreoTextBox" runat="server"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style1">Fecha</td>
        <td class="auto-style3">
            <asp:TextBox ID="FechaTextBox" runat="server" CssClass="FechaTextBox"></asp:TextBox>
        </td>
        <td class="auto-style2">&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
</table>
<p>
    <asp:Button ID="AgregarTecnicoButton" runat="server" Text="Agregar Tecnico" OnClick="AgregarTecnicoButton_Click" />
</p>
<p> <strong>
        <asp:Label ID="MensajeLabel" runat="server" Style="font-size: x-large; color: #0000CC"></asp:Label>
        </strong></p>
<p>
    <asp:GridView ID="AgregarTecnicoGridView" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="TecnicoIntaladorID" DataSourceID="SqlDataSourceAgregarTecnico" EmptyDataText="There are no data records to display." ForeColor="#333333" GridLines="None">
        <AlternatingRowStyle BackColor="White" />
        <Columns>
            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
            <asp:BoundField DataField="TecnicoIntaladorID" HeaderText="T Intalador" ReadOnly="True" SortExpression="TecnicoIntaladorID" />
            <asp:BoundField DataField="TipoDocumentoID" HeaderText="T Documento" SortExpression="TipoDocumentoID" />
            <asp:BoundField DataField="TipodeServicioID" HeaderText="Tipo de Servicio" SortExpression="TipodeServicioID" />
            <asp:BoundField DataField="Documento" HeaderText="Documento" SortExpression="Documento" />
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
    <asp:SqlDataSource ID="SqlDataSourceAgregarTecnico" runat="server" ConnectionString="<%$ ConnectionStrings:DefaultConnection %>" DeleteCommand="DELETE FROM [TecnicoInstalador] WHERE [TecnicoIntaladorID] = @TecnicoIntaladorID" InsertCommand="INSERT INTO [TecnicoInstalador] ([TipoDocumentoID], [TipodeServicioID], [Documento], [Nombre], [Apellido], [Direccion], [Celular], [Correo], [Fecha]) VALUES (@TipoDocumentoID, @TipodeServicioID, @Documento, @Nombre, @Apellido, @Direccion, @Celular, @Correo, @Fecha)" ProviderName="<%$ ConnectionStrings:DefaultConnection.ProviderName %>" SelectCommand="SELECT [TecnicoIntaladorID], [TipoDocumentoID], [TipodeServicioID], [Documento], [Nombre], [Apellido], [Direccion], [Celular], [Correo], [Fecha] FROM [TecnicoInstalador]" UpdateCommand="UPDATE [TecnicoInstalador] SET [TipoDocumentoID] = @TipoDocumentoID, [TipodeServicioID] = @TipodeServicioID, [Documento] = @Documento, [Nombre] = @Nombre, [Apellido] = @Apellido, [Direccion] = @Direccion, [Celular] = @Celular, [Correo] = @Correo, [Fecha] = @Fecha WHERE [TecnicoIntaladorID] = @TecnicoIntaladorID">
        <DeleteParameters>
            <asp:Parameter Name="TecnicoIntaladorID" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="TipoDocumentoID" Type="Int32" />
            <asp:Parameter Name="TipodeServicioID" Type="Int32" />
            <asp:Parameter Name="Documento" Type="String" />
            <asp:Parameter Name="Nombre" Type="String" />
            <asp:Parameter Name="Apellido" Type="String" />
            <asp:Parameter Name="Direccion" Type="String" />
            <asp:Parameter Name="Celular" Type="String" />
            <asp:Parameter Name="Correo" Type="String" />
            <asp:Parameter DbType="Date" Name="Fecha" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="TipoDocumentoID" Type="Int32" />
            <asp:Parameter Name="TipodeServicioID" Type="Int32" />
            <asp:Parameter Name="Documento" Type="String" />
            <asp:Parameter Name="Nombre" Type="String" />
            <asp:Parameter Name="Apellido" Type="String" />
            <asp:Parameter Name="Direccion" Type="String" />
            <asp:Parameter Name="Celular" Type="String" />
            <asp:Parameter Name="Correo" Type="String" />
            <asp:Parameter DbType="Date" Name="Fecha" />
            <asp:Parameter Name="TecnicoIntaladorID" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
</p>
    <p>
        <asp:SqlDataSource ID="SqlDataSourceTipoDocumento" runat="server" ConnectionString="<%$ ConnectionStrings:DefaultConnection %>" SelectCommand="select TipoDocumentoID, Descripcion from TipoDocumento
           union
           select 0, '[Selecciona un tipo de documento...]'
           order by 2">

        </asp:SqlDataSource>
</p>
    <p>
        <asp:SqlDataSource ID="SqlDataSourceTipoDeServicio" runat="server" ConnectionString="<%$ ConnectionStrings:DefaultConnection %>" SelectCommand="select TipodeServicioID, Descripcion from TipodeServicio
            union
            select 0, '[Selecciona un tipo de Servicio...]'
            order by 2">

        </asp:SqlDataSource>
</p>
    <p>
        &nbsp;</p>

</asp:Content>

  
