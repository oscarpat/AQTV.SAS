using CAD.DSTableAdapters;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace CAD
{
    public class AgregarTipoDocumentos
    {
       private static TipoDocumentoTableAdapter adapter = new TipoDocumentoTableAdapter();
        
        public static void InsertTipoDocumento(string Descripcion)
        {
            adapter.InsertTipoDocumento(Descripcion);
        }
    }
}
