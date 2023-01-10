using CAD;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WEB.AQTV.SAS
{
    public partial class WebForm3 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void AgregarButton_Click(object sender, EventArgs e)
        {
            if (!validarCampos()) return;
            AgregarTipoDocumentos.InsertTipoDocumento(DescripcionTextBox.Text);
            TipoDocumentoGridView.DataBind();
            MensajeLabel.Text = "Archivo agregado con exito";

            DescripcionTextBox.Text = string.Empty;
            DescripcionTextBox.Focus();

        }
        private bool validarCampos()
        {
            if (DescripcionTextBox.Text == string.Empty)
            {
                MensajeLabel.Text = "Debes tener una descripción";
                DescripcionTextBox.Focus();
                return false;
            }

            return true;
        }
    }
}