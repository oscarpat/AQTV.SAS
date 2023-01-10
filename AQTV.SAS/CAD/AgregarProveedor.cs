using CAD.DSTableAdapters;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace CAD
{
    public class AgregarProveedor
    {
        private static ProveedorTableAdapter adapter = new ProveedorTableAdapter();
        private static string mensaje;
        public string Mensaje { get => mensaje; }
        public static void InsertProveedor(int TipoDocumentoID, string Documento, string NombreComercial, string NombreContacto,
                                           string ApellidoContacto, string Direccion, string Celular, string Correo)
        {
            try
            {
                adapter.InsertProveedor(TipoDocumentoID, Documento, NombreComercial, NombreContacto,
                                             ApellidoContacto, Direccion, Celular, Correo);
                mensaje = "registro gurado cone xito";
            }
            catch (Exception ex)
            {
                mensaje = ex.Message;
            }
        }

    }
}
