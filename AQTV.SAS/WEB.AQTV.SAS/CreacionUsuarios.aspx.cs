using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using WEB.AQTV.SAS.Clases;

namespace WEB.AQTV.SAS
{
    public partial class WebForm10 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnAceptar_Click_Click(object sender, EventArgs e)
        {
            LoginService.prIngresarUsuario(this.UsuarioTextBox.Text, this.PasswordTextBox.Text, this.EmailTextBox.Text, DateTime.Now, Convert.ToInt32(TIpoDropDownList.SelectedValue));

        }
    }
}