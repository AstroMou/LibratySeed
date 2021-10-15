using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using ModeloSeed;

namespace ProyectSeed
{
    public partial class AgregarUsuario : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Listas_obj lU = new Listas_obj();
            ListaDeTipoUsuario.DataSource = lU.ListaDeTipoUsuario();
            ListaDeTipoUsuario.DataTextField = "Tipo_Usuario";
            ListaDeTipoUsuario.DataValueField = "ID_tipousuario";
          
            ListaDeTipoUsuario.DataBind();



          
        }
    }
}