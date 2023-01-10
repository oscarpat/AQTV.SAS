using BL;
using CAD;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WEB.AQTV.SAS
{
    public partial class WebForm8 : System.Web.UI.Page
    {
        private List<VentasDetalle> listVentasDetalle;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                listVentasDetalle = new List<VentasDetalle>();
                Session["listVentasDetalle"] = listVentasDetalle;
            }
            else
            {
                listVentasDetalle = (List<VentasDetalle>)Session["listVentasDetalle"];
            }


            VentaGridView.DataSource = listVentasDetalle;
            VentaGridView.DataBind();
            ActualziarDatos();

        }

        protected void AgregarButton_Click(object sender, EventArgs e)
        {
            if (!validarCampos()) return;
            VentasDetalle miDetalle = new VentasDetalle();

            miDetalle.Cantidad = float.Parse(CantidadTextBox.Text);
            miDetalle.Descripcion = ProductoDropDownList.SelectedItem.Text;
            miDetalle.ProductoID = int.Parse(ProductoDropDownList.SelectedValue);
            miDetalle.Precio = decimal.Parse(CostoTextBox.Text);

            listVentasDetalle.Add(miDetalle);
            VentaGridView.DataBind();

            CantidadTextBox.Text = string.Empty;
            ProductoDropDownList.SelectedIndex = 0;
            CostoTextBox.Text = string.Empty;
            ProductoDropDownList.Focus();
            ActualziarDatos();

            MensajeLabel.Text = string.Empty;
        }

       

        private void ActualziarDatos()
        {
            float TotalCantidad = 0;
            Decimal TotalValor = 0;
            foreach (VentasDetalle miDetalle in listVentasDetalle)
            {
                TotalCantidad += miDetalle.Cantidad;
                TotalValor += miDetalle.Valor;
            }

            TotalCantidadTextBox.Text = string.Format("{0:N1}", TotalCantidad);
            TotalValorTextBox.Text = string.Format("{0:N1}", TotalValor);
        }

        protected void GrabarCompraButton_Click(object sender, EventArgs e)
        {
            if (!ValidarCamposGrabar()) return;
            int clienteID = int.Parse(ClienteDropDownList.SelectedValue);
            int VentaID = Movimientos.GrabarVenta(clienteID, listVentasDetalle);
            if (VentaID == 0)
            {
                MensajeLabel.Text = Movimientos.Mensaje;
                return;
            }
            MensajeLabel.Text = string.Format("La compra  {0} fue registrada con exito", VentaID);
            listVentasDetalle.Clear();
            ClienteDropDownList.SelectedIndex = 0;
            CantidadTextBox.Text = string.Empty;
            CostoTextBox.Text = string.Empty;

            ClienteDropDownList.Focus();
        }
        private bool ValidarCamposGrabar()
        {
            if (ClienteDropDownList.SelectedIndex == 0)
            {
                MensajeLabel.Text = "Debes ingrear un cliente";
                ClienteDropDownList.Focus();
                return false;
            }

            if (listVentasDetalle.Count == 0)
            {
                MensajeLabel.Text = "Debes ingrear un detalle a la venta";
                ClienteDropDownList.Focus();
                return false;
            }

            return true;
        }

        private bool validarCampos()
        {
            if (ProductoDropDownList.SelectedIndex == 0)
            {
                MensajeLabel.Text = "Debes ingrear un producto";
                ProductoDropDownList.Focus();
                return false;
            }

            if (CantidadTextBox.Text == string.Empty)
            {
                MensajeLabel.Text = "Debes una cantidad";
                CantidadTextBox.Focus();
                return false;
            }

            float cantidad = 0;

            if (!float.TryParse(CantidadTextBox.Text, out cantidad))
            {
                MensajeLabel.Text = "Debes una cantidad numerica en cantidad";
                CantidadTextBox.Focus();
                return false;
            }

            if (cantidad < 0)
            {
                MensajeLabel.Text = "Debes una cantidad mayor a cero";
                CantidadTextBox.Focus();
                return false;
            }

            if (CostoTextBox.Text == string.Empty)
            {
                MensajeLabel.Text = "Debes escribir un costo";
                CostoTextBox.Focus();
                return false;
            }

            decimal costo = 0;
            if (!decimal.TryParse(CostoTextBox.Text, out costo))
            {
                MensajeLabel.Text = "Debes una cantidad numerica en costo";
                CostoTextBox.Focus();
                return false;
            }
            if (costo < 0)
            {
                MensajeLabel.Text = "Debes una cantidad numerica mayor  a cero";
                CostoTextBox.Focus();
                return false;
            }

            return true;
        }
    }
}