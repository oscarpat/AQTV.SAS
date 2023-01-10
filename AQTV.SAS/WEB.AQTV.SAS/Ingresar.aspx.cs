using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using WEB.AQTV.SAS.Clases;

namespace WEB.AQTV.SAS
{
    public partial class WebForm9 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            //string tipo = (string)Session["Tipo"];
            //if (!IsPostBack)
            //{
            //    if (tipo == "0")
            //    {
            //        Response.Redirect("~/Index.aspx");
            //    }

            //}

            //string usuario = this.UsuarioTextBox.Text.Replace(";", "").Replace("--", "");
            //string contraseña = this.PasswordTextBox.Text.Replace(";", "").Replace("--", "");
            //if (LoginService.Autenticar(usuario, contraseña) == true)
            //{
            //    DataTable tblUsuario = LoginService.prConsultaUsuario(usuario, contraseña);
            //    LoginService.Security(Convert.ToInt32(tblUsuario.Rows[0]["UsuarioID"]), usuario, DateTime.Now, Request.ServerVariables["REMOTE_ADDR"]);
            //    Session["UsuarioID"] = tblUsuario.Rows[0]["UsuarioID"].ToString();
            //    Response.Redirect("~/Index.aspx");
            //}
            //else
            //{
            //    MensajeLabel.Text = "Usuario/Contraseña incorrecta";
            //}
        }


        protected void btnAceptar_Click_Click(object sender, EventArgs e)
        {
            string usuario = this.UsuarioTextBox.Text.Replace(";", "").Replace("--", "");
            string contraseña = this.PasswordTextBox.Text.Replace(";", "").Replace("--", "");
            if (LoginService.Autenticar(usuario, contraseña) == true)
            {
                
                DataTable tblUsuario = LoginService.prConsultaUsuario(usuario, contraseña);
                LoginService.Security(Convert.ToInt32(tblUsuario.Rows[0]["UsuarioID"]), usuario, DateTime.Now, Request.ServerVariables["REMOTE_ADDR"]);
                Session["UsuarioID"] = tblUsuario.Rows[0]["UsuarioID"].ToString();
                ////manejar los roles de usuario.
                //Session["Tipo"] = tblUsuario.Rows[0]["Tipo"].ToString();
                Response.Redirect("~/Index.aspx");
            }
            else
            {
                MensajeLabel.Text = "Usuario/Contraseña incorrecta";
            }
        }
    }
}