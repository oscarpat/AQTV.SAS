using CAD;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WEB.AQTV.SAS
{
    public partial class WebForm2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void AgregarButton_Click(object sender, EventArgs e)
        {
            if (!validarCampos()) return;

            if (!AgregarClientes.InsertClientes(Convert.ToInt32(TipoDocumentoDropDownList.SelectedValue),
                                         IdentificacionTextBox.Text,
                                         NombreTextBox.Text,
                                         ApellidoTextBox.Text,
                                         DireccionTextBox.Text,
                                         CelularTextBox.Text,
                                         CorreoTextBox.Text,
                                         Convert.ToDateTime(FechaTextBox.Text)))
            {
                MensajeLabel.Text = AgregarClientes.Mensaje;
                return;
            }

            MensajeLabel.Text = "Cliente agregado";
            ClientesGridView.DataBind();

            TipoDocumentoDropDownList.SelectedIndex = 0;
            IdentificacionTextBox.Text = string.Empty;
            NombreTextBox.Text = string.Empty;
            ApellidoTextBox.Text = string.Empty;
            DireccionTextBox.Text = string.Empty;
            CelularTextBox.Text = string.Empty;
            CorreoTextBox.Text = string.Empty;
            FechaTextBox.Text = string.Empty;
            TipoDocumentoDropDownList.Focus();
        }
        private bool validarCampos()
        {
            if (TipoDocumentoDropDownList.SelectedIndex == 0)
            {
                MensajeLabel.Text = "Escoge un tipo un tipo de documento";
                TipoDocumentoDropDownList.Focus();
                return false;
            }

            if (IdentificacionTextBox.Text == string.Empty)
            {
                MensajeLabel.Text = "Escoge un tipo una idenificación";
                IdentificacionTextBox.Focus();
                return false;
            }

            if (NombreTextBox.Text == string.Empty)
            {
                MensajeLabel.Text = "Escribe un nombre";
                NombreTextBox.Focus();
                return false;

            }

            if (ApellidoTextBox.Text == string.Empty)
            {
                MensajeLabel.Text = "Escrib un apellido";
                ApellidoTextBox.Focus();
                return false;

            }
            if (DireccionTextBox.Text == string.Empty)
            {
                MensajeLabel.Text = "Escribe un direccion";
                DireccionTextBox.Focus();
                return false;
            }

            if (CelularTextBox.Text == string.Empty)
            {
                MensajeLabel.Text = "Escribe un numero de celular";
                CelularTextBox.Focus();
                return false;
            }

            if (CorreoTextBox.Text == string.Empty)
            {
                MensajeLabel.Text = "Escribe un numero de celular";
                CorreoTextBox.Focus();
                return false;
            }

            RegexUtilities ValiarCorreo = new RegexUtilities();

            if (!ValiarCorreo.IsValidEmail(CorreoTextBox.Text))
            {
                MensajeLabel.Text = "Email Invalido";
                CorreoTextBox.Focus();
                return false;
            }

            if (FechaTextBox.Text == string.Empty)
            {
                MensajeLabel.Text = "Escribe un fecha";
                FechaTextBox.Focus();
                return false;
            }
            return true;
        }
    }
}