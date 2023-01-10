using CAD.DSTableAdapters;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace CAD
{
    public class AgregarTecnicoInstalador
    {
        private static TecnicoInstaladorTableAdapter adapter = new TecnicoInstaladorTableAdapter();

        public static void InsertTecnicoInstalador(int TipoDocumentoID,int TipodeServicioID, string Documento,string Nombre,string Apellido,string Direccion,string Celular,string Correo,DateTime Fecha)
        {
            adapter.InsertTecnicoInstalador(TipoDocumentoID, TipodeServicioID, Documento, Nombre, Apellido, Direccion, Celular, Correo,Fecha);
        }
    }
}
