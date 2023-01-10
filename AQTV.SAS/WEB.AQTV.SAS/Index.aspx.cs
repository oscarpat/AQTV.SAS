using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WEB.AQTV.SAS
{
    public partial class Index : System.Web.UI.Page
    {

        protected void Page_Load(object sender, EventArgs e)
        {


            //string tipo = (string)Session["Tipo"];

            //if (!IsPostBack)
            //{
            //    if (tipo =="0")
            //    {
            //        Response.Redirect("~/Index.aspx");
            //    }
            //}

            string userid = (string)Session["UsuarioID"];
            if (!IsPostBack)
            {
                if (userid == string.Empty || userid == null)
                {
                    Response.Redirect("~/Ingresar.aspx");
                }
            }
          

        }
    }
}