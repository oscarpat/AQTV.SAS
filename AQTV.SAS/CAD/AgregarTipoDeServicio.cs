using CAD.DSTableAdapters;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace CAD
{
    public class AgregarTipoDeServicio
    {
        private static TipodeServicioTableAdapter adapter = new TipodeServicioTableAdapter();

        public static void InsertTipoServicio(string Descripcion)
        {
            adapter.InsertTipoServicio(Descripcion);
        }

    }
}
