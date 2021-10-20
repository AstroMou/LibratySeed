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


            tarjetaEditar.Visible = false;



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











        }

        protected void Editar_Click(object sender, EventArgs e)
        {




            tarjetaEditar.Visible = true;





        }

        protected void CerrarEditar_Click(object sender, EventArgs e)
        {


            tarjetaEditar.Visible = false;

        }

        protected void Guardar_Click1(object sender, EventArgs e)
        {



            int IdTipoUsuario = int.Parse(ListaDeTipoUsuario.SelectedValue);

            string cedula = txt_Cedula.Text;
            string Nombre = Txt_Nombre.Text;
            string Apellido = Txt_Apellido.Text;
            int Telefono = int.Parse(Txt_Telefono.Text);
            string Direccion = Txt_Direccion.Text;
            string Correo = Txt_Correo.Text;

            funciono.Text = "Funciona el boton";
            Funciones Agregar = new Funciones();
            Agregar.agregarPersonas(IdTipoUsuario, cedula, Nombre, Apellido, Telefono, Direccion, Correo);
            Response.Redirect(Request.Url.ToString(), false);
            



        }

        


      

       

     
    }
}