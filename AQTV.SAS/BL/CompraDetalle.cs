﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace BL
{
    public class CompraDetalle
    {
        public int ProductoID { get; set; }
        public string Descripcion { get; set; }
        public decimal Precio { get; set; }
        public float Cantidad { get; set; }

        public decimal Valor { get { return (decimal)Cantidad * Precio; } }
    }
}
