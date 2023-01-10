using CAD.DSTableAdapters;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace CAD
{
    public class AgregarClientes
    {
        private static ClientesTableAdapter adapter = new ClientesTableAdapter();

        private static string mensaje;

        public static string Mensaje { get => mensaje; }
        public static bool InsertClientes(int TipoDocumentoID, string Identificacion, string Nombre, string Apellido,
                                       string Direccion, string Celular, string Correo, DateTime Fecha)
        {
            try
            {
                adapter.InsertClientes(TipoDocumentoID, Identificacion, Nombre, Apellido, Direccion, Celular, Correo, Fecha);
                mensaje = "Registro agregado con exito";

                return true;
            }
            catch (Exception ex)
            {
                mensaje = ex.Message;
                return false;
            }
        }

    }
}
