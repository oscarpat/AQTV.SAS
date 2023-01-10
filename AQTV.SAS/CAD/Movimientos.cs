using BL;
using CAD.DSTableAdapters;
using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace CAD
{
    public class Movimientos
    {
        private static string mensaje;

        public static string Mensaje { get => mensaje; }

        public static int GrabarCompra(int proveedorID, List<CompraDetalle> listaCompraDetalle)
        {
            string conexion = ConfigurationManager.ConnectionStrings["DefaultConnection"].ConnectionString;
            SqlConnection cnn = new SqlConnection(conexion);
            cnn.Open();
            SqlTransaction trx = cnn.BeginTransaction();



            CompraDetalleTableAdapter adapterCompraDetalle = new CompraDetalleTableAdapter();
            CompraTableAdapter adapterCompra = new CompraTableAdapter();
            ProductoTableAdapter adapterproducto = new ProductoTableAdapter();

            adapterCompraDetalle.Connection = cnn;
            adapterproducto.Connection = cnn;
            adapterCompra.Connection = cnn;

            adapterCompraDetalle.Transaction = trx;
            adapterproducto.Transaction = trx;
            adapterCompra.Transaction = trx;



            try
            {
                int compraID = (int)adapterCompra.InsertCompra(proveedorID, DateTime.Now);
                foreach (CompraDetalle miDetalle in listaCompraDetalle)
                {
                    adapterCompraDetalle.InsertCompraDetalle(compraID,
                                                              miDetalle.ProductoID,
                                                              miDetalle.Descripcion,
                                                              miDetalle.Precio,
                                                              miDetalle.Cantidad);
                    adapterproducto.UpdateStock(miDetalle.Cantidad,
                                              miDetalle.ProductoID);
                }

                mensaje = "Ok";
                trx.Commit();
                cnn.Close();
                return compraID;
            }
            catch (Exception ex)
            {
                mensaje = ex.Message;
                trx.Rollback();
                cnn.Close();
                return 0;
            }
        }

        public static int GrabarVenta(int clienteID, List<VentasDetalle> listVentasDetalle)
        {
            string conexion = ConfigurationManager.ConnectionStrings["DefaultConnection"].ConnectionString;
            SqlConnection cnn = new SqlConnection(conexion);
            cnn.Open();
            SqlTransaction trx = cnn.BeginTransaction();

            VentaTableAdapter adapterVenta = new VentaTableAdapter();
            VentadetalleTableAdapter adapeterVentaDetalle = new VentadetalleTableAdapter();
            ProductoTableAdapter adapterproducto = new ProductoTableAdapter();

            adapterVenta.Connection = cnn;
            adapeterVentaDetalle.Connection = cnn;
            adapterproducto.Connection = cnn;

            adapterVenta.Transaction = trx;
            adapeterVentaDetalle.Transaction = trx;
            adapterproducto.Transaction = trx;

            try
            {


                int ventaID = (int)adapterVenta.InsertVenta(clienteID, DateTime.Now);
                foreach (VentasDetalle miDetalle in listVentasDetalle)
                {
                    adapeterVentaDetalle.InsertVentaDetalle(ventaID,
                                                            miDetalle.ProductoID,
                                                            miDetalle.Descripcion,
                                                            miDetalle.Precio,
                                                            miDetalle.Cantidad);
                    // double stock = adapterproducto.UpdateStock.stock
                    adapterproducto.UpdateVentaStock(miDetalle.Cantidad, miDetalle.ProductoID);
                }
                mensaje = "ok";
                trx.Commit();
                cnn.Close();
                return ventaID;
            }
            catch (Exception ex)
            {

                mensaje = ex.Message;
                trx.Rollback();
                cnn.Close();
                return 0;
            }

        }
    }
}
