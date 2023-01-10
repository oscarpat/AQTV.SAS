<%@ Page Title="" Language="C#" MasterPageFile="~/Principal.Master" AutoEventWireup="true" CodeBehind="Productos.aspx.cs" Inherits="WEB.AQTV.SAS.WebForm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h1>Productos</h1>
    <p>
        <table class="nav-justified">
            <tr>
                <td>Descripción:</td>
                <td>
                    <asp:TextBox ID="DescripcionTextBox" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>Precio</td>
                <td>
                    <asp:TextBox ID="PrecioTextBox" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>Stok</td>
                <td>
                    <asp:TextBox ID="StokTextBox" runat="server"></asp:TextBox>
                </td>
            </tr>
        </table>
    </p>
    <p>
        <asp:Button ID="AgregarButton" runat="server" OnClick="AgregarButton_Click" Text="Agregar producto" />
    </p>
    <p>
        <asp:Label ID="mensajeLabel" runat="server" style="font-size: x-large; color: #000099; font-weight: 700"></asp:Label>
    </p>
    <p>
        <asp:GridView ID="ProductoGridView" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="ProductoID" DataSourceID="SqlDataSource1" EmptyDataText="There are no data records to display." ForeColor="#333333" GridLines="None" Width="719px">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                <asp:BoundField DataField="ProductoID" HeaderText="Producto ID" ReadOnly="True" SortExpression="ProductoID" />
                <asp:BoundField DataField="Descripcion" HeaderText="Descripción" SortExpression="Descripcion" />
                <asp:BoundField DataField="Precio" HeaderText="Precio" SortExpression="Precio" DataFormatString="{0:C1}" >
                <ItemStyle HorizontalAlign="Right" />
                </asp:BoundField>
                <asp:BoundField DataField="Stok" HeaderText="Stok" SortExpression="Stok" DataFormatString="{0:N1}" >
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
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:DefaultConnection %>" DeleteCommand="DELETE FROM [Producto] WHERE [ProductoID] = @ProductoID" InsertCommand="INSERT INTO [Producto] ([Descripcion], [Precio], [Stok]) VALUES (@Descripcion, @Precio, @Stok)" ProviderName="<%$ ConnectionStrings:DefaultConnection.ProviderName %>" SelectCommand="SELECT [ProductoID], [Descripcion], [Precio], [Stok] FROM [Producto]" UpdateCommand="UPDATE [Producto] SET [Descripcion] = @Descripcion, [Precio] = @Precio, [Stok] = @Stok WHERE [ProductoID] = @ProductoID">
            <DeleteParameters>
                <asp:Parameter Name="ProductoID" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="Descripcion" Type="String" />
                <asp:Parameter Name="Precio" Type="Decimal" />
                <asp:Parameter Name="Stok" Type="Double" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="Descripcion" Type="String" />
                <asp:Parameter Name="Precio" Type="Decimal" />
                <asp:Parameter Name="Stok" Type="Double" />
                <asp:Parameter Name="ProductoID" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
    </p>







</asp:Content>
