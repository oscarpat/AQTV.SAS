using CAD;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WEB.AQTV.SAS
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void AgregarButton_Click(object sender, EventArgs e)
        {
            if (!validarCampos()) return;
            decimal precio = decimal.Parse(PrecioTextBox.Text);
            float stok = float.Parse(StokTextBox.Text);
            AgregarProducto.InsertProducto(DescripcionTextBox.Text, precio, stok);
            mensajeLabel.Text = "Archivo agregado con exito";
            ProductoGridView.DataBind();

            DescripcionTextBox.Text = string.Empty;
            PrecioTextBox.Text = string.Empty;
            StokTextBox.Text = string.Empty;
            DescripcionTextBox.Focus();
           
        }
        private bool validarCampos()
        {
            if (DescripcionTextBox.Text == string.Empty)
            {
                mensajeLabel.Text = "Debes copiar una descripión";
                DescripcionTextBox.Focus();
                return false;
            }
            mensajeLabel.Text = string.Empty;

            if (PrecioTextBox.Text == string.Empty)
            {
                mensajeLabel.Text = "Debes introducir un precio";
                PrecioTextBox.Focus();
                return false;
            }
            mensajeLabel.Text = string.Empty;

            decimal precio = 0;
            if (!decimal.TryParse(PrecioTextBox.Text, out precio))
            {
                mensajeLabel.Text = "Debes introducir formatos numericos no letras";
                PrecioTextBox.Focus();
                return false;
            }
            mensajeLabel.Text = string.Empty;

            if (precio <= 0)
            {
                mensajeLabel.Text = "Debes introducir  numeros mayores a cero";
                PrecioTextBox.Focus();
                return false;
            }
            mensajeLabel.Text = string.Empty;

            if (StokTextBox.Text == string.Empty)
            {
                mensajeLabel.Text = "Debes introducir un Stock";
                StokTextBox.Focus();
                return false;
            }
            mensajeLabel.Text = string.Empty;

            float stok = 0;
            if (!float.TryParse(StokTextBox.Text, out stok))
            {
                mensajeLabel.Text = "Debes introducir formatos numericos no letras";
                StokTextBox.Focus();
                return false;
            }
            mensajeLabel.Text = string.Empty;

            if (stok <= 0)
            {
                mensajeLabel.Text = "Debes introducir  numeros mayores a cero";
                StokTextBox.Focus();
                return false;
            }
            mensajeLabel.Text = string.Empty;
            return true;
        }
    }
}