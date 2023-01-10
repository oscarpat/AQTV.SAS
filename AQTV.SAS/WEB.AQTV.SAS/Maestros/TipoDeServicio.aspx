<%@ Page Title="" Language="C#" MasterPageFile="~/Principal.Master" AutoEventWireup="true" CodeBehind="TipoDeServicio.aspx.cs" Inherits="WEB.AQTV.SAS.WebForm6" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h1>Tipo de servcio</h1>
    <p>
        <table>
            <tr>
                <td>Descripcion:</td>
                <td>
                    <asp:TextBox ID="DescripcionTextBox" runat="server" Width="203px"></asp:TextBox>
                </td>
            </tr>
        </table>
    </p>
    <p>
        <asp:Button ID="AgregarButton" runat="server" OnClick="AgregarButton_Click" Text="Agregar" />
    </p>
    <p><strong>
        <asp:Label ID="MensajeLabel" runat="server" style="color: #0000CC; font-size: x-large"></asp:Label>
        </strong></p>
    <p>
        <asp:GridView ID="TipoDeServicioGridView" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="TipodeServicioID" DataSourceID="SqlDataSourceTipoDeServicio" EmptyDataText="There are no data records to display." Width="593px">
            <Columns>
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                <asp:BoundField DataField="TipodeServicioID" HeaderText="TipodeServicioID" ReadOnly="True" SortExpression="TipodeServicioID" />
                <asp:BoundField DataField="Descripcion" HeaderText="Descripcion" SortExpression="Descripcion" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSourceTipoDeServicio" runat="server" ConnectionString="<%$ ConnectionStrings:DefaultConnection %>" DeleteCommand="DELETE FROM [TipodeServicio] WHERE [TipodeServicioID] = @TipodeServicioID" InsertCommand="INSERT INTO [TipodeServicio] ([Descripcion]) VALUES (@Descripcion)" ProviderName="<%$ ConnectionStrings:DefaultConnection.ProviderName %>" SelectCommand="SELECT [TipodeServicioID], [Descripcion] FROM [TipodeServicio]" UpdateCommand="UPDATE [TipodeServicio] SET [Descripcion] = @Descripcion WHERE [TipodeServicioID] = @TipodeServicioID">
            <DeleteParameters>
                <asp:Parameter Name="TipodeServicioID" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="Descripcion" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="Descripcion" Type="String" />
                <asp:Parameter Name="TipodeServicioID" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
    </p>
</asp:Content>
