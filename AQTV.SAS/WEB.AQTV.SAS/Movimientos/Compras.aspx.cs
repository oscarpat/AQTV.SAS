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
    public partial class WebForm7 : System.Web.UI.Page
    {
        private List<CompraDetalle> ListaCompraDetalle;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                ListaCompraDetalle = new List<CompraDetalle>();
                Session["ListaCompraDetalle"] = ListaCompraDetalle;
            }
            else
            {
                ListaCompraDetalle = (List<CompraDetalle>)Session["ListaCompraDetalle"];
            }

            ComprasGridView.DataSource = ListaCompraDetalle;
            ComprasGridView.DataBind();
            actilizarTotales();

        }

        protected void AgregarButton_Click(object sender, EventArgs e)
        {
            if (!ValidarCampos()) return;

            CompraDetalle compradetalle = new CompraDetalle();

            compradetalle.Descripcion = ProductoDropDownList.SelectedItem.Text;
            compradetalle.Cantidad = float.Parse(CantidadTextBox.Text);
            compradetalle.Precio = decimal.Parse(CostoTextBox.Text);
            compradetalle.ProductoID = int.Parse(ProductoDropDownList.SelectedValue);

            ListaCompraDetalle.Add(compradetalle);
            ComprasGridView.DataBind();

            ProveedorDropDownList.SelectedIndex = 0;
            ProductoDropDownList.SelectedIndex = 0;
            CantidadTextBox.Text = string.Empty;
            CostoTextBox.Text = string.Empty;
            ProductoDropDownList.Focus();
            actilizarTotales();

            MensajeLabel.Text = string.Empty;

        }

        private void actilizarTotales()
        {
            float Totalcantidad = 0;
            decimal TotalValor = 0;

            foreach (CompraDetalle miDetalle in ListaCompraDetalle)
            {
                Totalcantidad += miDetalle.Cantidad;
                TotalValor += miDetalle.Valor;
            }

            TotalCantidadTextBox.Text = string.Format("{0:N1}", Totalcantidad);
            TotalValorTextBox.Text = string.Format("{0:N1}", TotalValor);
        }

        private bool ValidarCampos()
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

        protected void GrabarButton_Click(object sender, EventArgs e)
        {
            if (!ValidarCamposGravar()) return;

            int proveedorID = int.Parse(ProveedorDropDownList.SelectedValue);
            int compraID = Movimientos.GrabarCompra(proveedorID, ListaCompraDetalle);
            if (compraID == 0)
            {
                MensajeLabel.Text = Movimientos.Mensaje;
                return;
            }

            MensajeLabel.Text = "Compra exitosa";
            ProveedorDropDownList.SelectedIndex = 0;
            ListaCompraDetalle.Clear();
            ProveedorDropDownList.Focus();
        }

        private bool ValidarCamposGravar()
        {
            if (ProveedorDropDownList.SelectedIndex == 0)
            {
                MensajeLabel.Text = "Debes ingrear un provedor";
                ProveedorDropDownList.Focus();
                return false;
            }

            if (ListaCompraDetalle.Count == 0)
            {
                MensajeLabel.Text = "Debes ingrear un detalle a la compra";
                ProveedorDropDownList.Focus();
                return false;
            }

            return true;
        }

        protected void EliminarButton_Click(object sender, EventArgs e)
        {
            ProveedorDropDownList.SelectedIndex = 0;
            ProductoDropDownList.SelectedIndex = 0;
            CantidadTextBox.Text = string.Empty;
            CostoTextBox.Text = string.Empty;
            ProductoDropDownList.Focus();
            actilizarTotales();

            MensajeLabel.Text = string.Empty;

        }
    }
}