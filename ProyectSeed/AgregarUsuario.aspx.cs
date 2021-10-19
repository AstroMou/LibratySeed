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

            if (!IsPostBack)
            {
                Listas_obj lU = new Listas_obj();
                ListaDeTipoUsuario.DataSource = lU.ListaDeTipoUsuario();
                ListaDeTipoUsuario.DataTextField = "Tipo_Usuario";
                ListaDeTipoUsuario.DataValueField = "ID_tipousuario";
                ListaDeTipoUsuario.DataBind();
                

                GWUsuarios.DataSource = new Listas_obj().ListaUsuariosRelacionada();
                GWUsuarios.DataBind();
                
            }

          





            int Numeros = int.Parse(ListaDeTipoUsuario.SelectedValue);



            //if (Numeros==1)
            //{
            //    CuerponNiño.Visible = false;

            //}
            //else
            //{
            //    CuerponNiño.Visible = true;

            //}



            switch (Numeros)
            {
                case 1:

           
                    Titulo.Text = "Formulario Agregar Adulto";
                    break;

                case 2:

                    Titulo.Text = "Formulario Agregar Niño";


                    break;


                default:
                    break;
            }


          



        }

        protected void Guardar_Click(object sender, EventArgs e)
        {
            ScriptManager.RegisterStartupScript(this, this.GetType(), "Pop", "openModal();", true);
        }

     
    }
}