using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace WEB.AQTV.SAS.Clases
{
    public class UsuarioEntity
    {
        public UsuarioEntity()
        {
            UsuarioID = 0;
            UserNama = string.Empty;
            Contraseña = string.Empty;
            Email = string.Empty;
            FechaRegistro = DateTime.Now;
            Estado = 0;
            UtimoAcceso = DateTime.Now;
            IPAcceso = string.Empty;
        }

        public int UsuarioID { get; set; }
        public string UserNama { get; set; }
        public string Contraseña { get; set; }
        public string Email { get; set; }
        public DateTime FechaRegistro { get; set; }
        public int Estado { get; set; }
        public DateTime UtimoAcceso { get; set; }
        public int UsuarioSecurityID { get; set; }
        public string IPAcceso { get; set; }
    }
}