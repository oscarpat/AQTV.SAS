using CAD;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WEB.AQTV.SAS
{
    public partial class WebForm6 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void AgregarButton_Click(object sender, EventArgs e)
        {
            if (!validarCampos()) return;

            AgregarTipoDeServicio.InsertTipoServicio(DescripcionTextBox.Text);

            TipoDeServicioGridView.DataBind();
            MensajeLabel.Text = "servicio agrgado con exito";

            DescripcionTextBox.Text = string.Empty;
            DescripcionTextBox.Focus();
        }

        private bool validarCampos()
        {
            if (DescripcionTextBox.Text == string.Empty)
            {
                MensajeLabel.Text = "escribe un tipo de servicio";
                DescripcionTextBox.Focus();
                return false;


            }
            return true;
        }
    }
}