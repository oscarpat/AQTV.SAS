using CAD;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WEB.AQTV.SAS
{
    public partial class WebForm5 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void AgregarTecnicoButton_Click(object sender, EventArgs e)
        {
            if (!validarCampos()) return;
            AgregarTecnicoInstalador.InsertTecnicoInstalador(Convert.ToInt32(TipoDocumentoDropDownList.SelectedValue), 
                                                             Convert.ToInt32(TipoDeServicioDropDownList.SelectedValue),
                                                             DocumentoTextBox.Text, NombreTextBox.Text, ApellidoTextBox.Text, 
                                                             DireccionTextBox.Text, CelularTextBox.Text,
                                                             CorreoTextBox.Text, DateTime.Now);
            AgregarTecnicoGridView.DataBind();

            TipoDocumentoDropDownList.SelectedIndex = 0;
            TipoDeServicioDropDownList.SelectedIndex = 0;
            DocumentoTextBox.Text = string.Empty;
            NombreTextBox.Text = string.Empty;
            ApellidoTextBox.Text = string.Empty;
            DireccionTextBox.Text = string.Empty;
            CelularTextBox.Text = string.Empty;
            CorreoTextBox.Text = string.Empty;

            MensajeLabel.Text = string.Empty;
            TipoDocumentoDropDownList.Focus();





        }

        private bool validarCampos()
        {
            if (TipoDocumentoDropDownList.SelectedIndex == 0)
            {
                MensajeLabel.Text = "Escoge tipo Documento";
                TipoDocumentoDropDownList.Focus();
                return false;
            }
        
            if (TipoDeServicioDropDownList.SelectedIndex == 0)
            {
                MensajeLabel.Text = "Escoge tipo de servicio";
                TipoDeServicioDropDownList.Focus();
                return false;
            }       


            if (DocumentoTextBox.Text == string.Empty)
            {
                MensajeLabel.Text = "Escoge Documento";
                DocumentoTextBox.Focus();
                return false;
            }
            
            if (NombreTextBox.Text == string.Empty)
            {
                MensajeLabel.Text = "Escoge un nombre ";
                NombreTextBox.Focus();
                return false;
            }

            if (ApellidoTextBox.Text == string.Empty)
            {
                MensajeLabel.Text = "Escoge un apellido ";
                ApellidoTextBox.Focus();
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