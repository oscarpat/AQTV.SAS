using CAD;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WEB.AQTV.SAS
{
    public partial class WebForm4 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void ProveedorButton_Click(object sender, EventArgs e)
        {
            if (!validarCampos()) return;

            AgregarProveedor.InsertProveedor(Convert.ToInt32(TipoDocumentoDropDownList.SelectedValue), DocumentoTextBox.Text, NombreComercialTextBox.Text,
                                             NombreContactoTextBox.Text, ApellidoContactoTextBox.Text, DireccionTextBox.Text, CelularTextBox.Text,
                                             CorreoTextBox.Text);

            proveedorGridView.DataBind();

            TipoDocumentoDropDownList.SelectedIndex = 0;
            DocumentoTextBox.Text = string.Empty;
            NombreComercialTextBox.Text = string.Empty;
            NombreContactoTextBox.Text = string.Empty;
            ApellidoContactoTextBox.Text = string.Empty;
            DireccionTextBox.Text = string.Empty;
            CelularTextBox.Text = string.Empty;
            CorreoTextBox.Text = string.Empty; ;

            TipoDocumentoDropDownList.Focus();
            MensajeLabel.Text = string.Empty;
        }

        private bool validarCampos()
        {
            if (TipoDocumentoDropDownList.SelectedIndex == 0)
            {
                MensajeLabel.Text = "Escoge tipo Documento";
                TipoDocumentoDropDownList.Focus();
                return false;
            }

            if (DocumentoTextBox.Text == string.Empty)
            {
                MensajeLabel.Text = "Escoge Documento";
                DocumentoTextBox.Focus();
                return false;
            }

            if (NombreComercialTextBox.Text == string.Empty)
            {
                MensajeLabel.Text = "Escoge un nombre comercial";
                NombreComercialTextBox.Focus();
                return false;
            }

            if (NombreContactoTextBox.Text == string.Empty)
            {
                MensajeLabel.Text = "Escoge un nombre contacto ";
                NombreContactoTextBox.Focus();
                return false;
            }

            if (ApellidoContactoTextBox.Text == string.Empty)
            {
                MensajeLabel.Text = "Escoge un apellidos ";
                ApellidoContactoTextBox.Focus();
                return false;
            }

            if (DireccionTextBox.Text == string.Empty)
            {
                MensajeLabel.Text = "Escoge una direccion valida ";
                DireccionTextBox.Focus();
                return false;
            }

            if (CelularTextBox.Text == string.Empty)
            {

                MensajeLabel.Text = "Escoge un celular ";
                CelularTextBox.Focus();
                return false;
            }


            if (CorreoTextBox.Text == string.Empty)
            {
                MensajeLabel.Text = "Escoge un correo ";
                CorreoTextBox.Focus();
                return false;
            }

            RegexUtilities ValidarCorreo = new RegexUtilities();

            if (!ValidarCorreo.IsValidEmail(CorreoTextBox.Text))
            {
                MensajeLabel.Text = "Tu correo no es valido";
                CorreoTextBox.Focus();
                return false;
            }

            return true;
        }
    }
}