<%@ Page Title="" Language="C#" MasterPageFile="~/Principal.Master" AutoEventWireup="true" CodeBehind="CreacionUsuarios.aspx.cs" Inherits="WEB.AQTV.SAS.WebForm10" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <div class="bgded overlay" style="background-image:url('images/demo/backgrounds/01.png');">
  <div id="pageintro" class="hoc clear"> 
    <div class="flexslider basicslider">
      <ul class="slides">      
        <li>
          <article>
            <footer>
                <asp:TextBox ID="UsuarioTextBox" runat="server" class="btn" placeholder="User" > </asp:TextBox>
                <asp:TextBox ID="PasswordTextBox" runat="server" class="btn" placeholder="Password"></asp:TextBox>
                <asp:TextBox ID="EmailTextBox" runat="server" class="btn" placeholder="Email"></asp:TextBox>
               <%-- <asp:TextBox ID="tipoTextBox" runat="server" class="btn" placeholder="Tipo"></asp:TextBox>--%>
                <asp:DropDownList ID="TIpoDropDownList" runat="server"  class="btn" placeholder="Tipo">
                    <asp:ListItem Value="0">Admin</asp:ListItem>
                    <asp:ListItem Value="1">technical</asp:ListItem>
                    <asp:ListItem Value="2">User</asp:ListItem>
                </asp:DropDownList>			  
                
                <asp:Button ID="btnAceptar_Click" runat="server" Text="Crear Usuario" OnClick="btnAceptar_Click_Click" placeholder="Email"  class="btn" />
                <asp:Button ID="RegresarButton" runat="server" Text="Regresar"  class="btn" PostBackUrl="~/Ingresar.aspx"/>
              </footer>
              <strong>
              <asp:Label ID="MensajeLabel" runat="server" Text="Label" CssClass="auto-style1"></asp:Label> 
              </strong> 
          </article>
        </li>
      </ul>
    </div>

  </div>
</div>
</asp:Content>
