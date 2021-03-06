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


        public void actualizarTabla() {

            GWUsuarios.DataSource = new Listas_obj().ListaUsuariosRelacionada();
            GWUsuarios.DataBind();
        }
        protected void Page_Load(object sender, EventArgs e)
        {

            if (!IsPostBack)
            {
                Listas_obj lU = new Listas_obj();
                ListaDeTipoUsuario.DataSource = lU.ListaDeTipoUsuario();
                ListaDeTipoUsuario.DataTextField = "Tipo_Usuario";
                ListaDeTipoUsuario.DataValueField = "ID_tipousuario";
                ListaDeTipoUsuario.DataBind();

                actualizarTabla();


                //GWUsuarios.DataSource = new ListaPrueba().Lista();
                //ListaDeTipoUsuario.DataBind();


                //EdicionTipo.DataSource = lU.ListaDeTipoUsuario();
                //EdicionTipo.DataTextField = "Tipo_Usuario";
                //EdicionTipo.DataValueField = "ID_tipousuario";
                //EdicionTipo.DataBind();

                Btn_Recargar.Visible = false;

            }




            //Selecionar el tipo de Usuario
            int Numeros = int.Parse(ListaDeTipoUsuario.SelectedValue);

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


            //Mostrar y ocultar el tipo de Usuario que vas a editar


            //Luego voy a Utilizar
            //EdicionTipo.Visible = false;

            //int eleccionTipo = int.Parse(Tipo.SelectedValue);

            //switch (eleccionTipo)
            //{
            //    case 4:
            //        EdicionTipo.Visible = true;
            //        txt_CosaEditar.Visible = false;
            //        break;

            //    default:
            //        EdicionTipo.Visible = false;
            //        txt_CosaEditar.Visible = true;
            //        break;
            //}



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
            ActualizarDataGri.Update();
            Response.Redirect(Request.Url.ToString(), false);




        }

        protected void EditarBoton_Click(object sender, EventArgs e)
        {
            //string Cedula = txt_CedulaE.Text;
            //string cosaEditar = txt_CosaEditar.Text;
            //int eleccionTipo = int.Parse(Tipo.SelectedValue);

            //int TipoDeEdicion = int.Parse(Tipo.SelectedValue);

            //switch (TipoDeEdicion)
            //{
            //    //Nombre
            //    case 1:

            //        try
            //        {

            //            if (Cedula.Length > 15 && cosaEditar.Length >= 4)
            //            {
            //                Funciones NombreA = new Funciones();
            //                NombreA.ActualizarNombre(Cedula, cosaEditar);
            //                Response.Redirect(Request.Url.ToString(), false);

            //            }
            //            else
            //            {

            //                MensajeGeneral.Text = "El campo de cedula o Nombre son incorrectos";


            //            }

            //        }
            //        catch (Exception)
            //        {

            //            throw;
            //        }






            //        break;





            //    //Apellido
            //    case 2:

            //        try
            //        {

            //            if (Cedula.Length > 15 && cosaEditar.Length >= 4)
            //            {
            //                Funciones Apellido = new Funciones();
            //                Apellido.actualizaApellido(Cedula, cosaEditar);
            //                Response.Redirect(Request.Url.ToString(), false);

            //            }
            //            else
            //            {

            //                MensajeGeneral.Text = "El campo de cedula o Apellido son incorrectos";


            //            }

            //        }
            //        catch (Exception)
            //        {

            //            throw;
            //        }






            //        break;


            //    //Direccion
            //    case 3:

            //        try
            //        {

            //            if (Cedula.Length > 15 && cosaEditar.Length >= 4)
            //            {
            //                Funciones NombreA = new Funciones();

            //                NombreA.actualizaDireccion(Cedula, cosaEditar);
            //                Response.Redirect(Request.Url.ToString(), false);

            //            }
            //            else
            //            {

            //                MensajeGeneral.Text = "El campo de cedula o Direccion son incorrectos";


            //            }

            //        }
            //        catch (Exception)
            //        {

            //            throw;
            //        }






            //        break;



            //    //Tipo
            //    case 4:
            //        int Numeros = int.Parse(EdicionTipo.SelectedValue);
            //        try
            //        {

            //            if (Cedula.Length > 15)
            //            {
            //                Funciones TipoEditar = new Funciones();
            //                TipoEditar.actualizaTipoUsuario(Cedula, Numeros);
            //                Response.Redirect(Request.Url.ToString(), false);

            //            }
            //            else
            //            {

            //                MensajeGeneral.Text = "El campo de cedula es incorrecto";


            //            }

            //        }
            //        catch (Exception)
            //        {

            //            throw;
            //        }






            //        break;

            //    //Telefono

            //    case 5:


            //        try
            //        {

            //            if (Cedula.Length > 15 && cosaEditar.Length >= 4)
            //            {
            //                Funciones telefono = new Funciones();

            //                telefono.actualizaTelefono(Cedula, int.Parse(cosaEditar));
            //                Response.Redirect(Request.Url.ToString(), false);

            //            }
            //            else
            //            {

            //                MensajeGeneral.Text = "El campo de cedula o Direccion son incorrectos";


            //            }

            //        }
            //        catch (Exception)
            //        {

            //            throw;
            //        }






            //        break;


            //        //Correo
            //    case 6:


            //        try
            //        {

            //            if (Cedula.Length > 15 && cosaEditar.Length >= 4)
            //            {
            //                Funciones Correo = new Funciones();

            //                Correo.actualizaCorreo(Cedula, cosaEditar);
            //                Response.Redirect(Request.Url.ToString(), false);

            //            }
            //            else
            //            {

            //                MensajeGeneral.Text = "El campo de cedula o Direccion son incorrectos";


            //            }

            //        }
            //        catch (Exception)
            //        {

            //            throw;
            //        }






            //        break;






            //    default:
            //        break;
            //}








        }



        protected void Unnamed1_Click(object sender, EventArgs e)
        {
            GWUsuarios.Visible = true;
            GWUsuarios.DataSource = new Listas_obj().ListaUsuariosRelacionada();
            GWUsuarios.DataBind();
            Btn_Recargar.Visible = false;
            txt_cedulaBuscar.Text = "";
            lbl_Anuncio.Text = "";
        }

        protected void Cancelar_Click(object sender, EventArgs e)
        {
            txt_Cedula.Text = "";
            Txt_Nombre.Text = "";
            Txt_Apellido.Text = "";
            Txt_Telefono.Text = "";
            Txt_Direccion.Text = "";
            Txt_Correo.Text = "";
            Response.Redirect(Request.Url.ToString(), false);


        }


     
        protected void txt_cedulaBuscar_TextChanged(object sender, EventArgs e)
        {
            string ClienteBusaqueda = txt_cedulaBuscar.Text;
            Funciones existe = new Funciones();

            bool existeU = existe.ExisteLaPersona(ClienteBusaqueda);

            if (existeU)
            {

                txt_cedulaBuscar.Text = "";
                GWUsuarios.Visible = true;
                Btn_Recargar.Visible = true;
                GWUsuarios.DataSource = new ListaPrueba().ListaUsuariosRelacionada(ClienteBusaqueda);
                GWUsuarios.DataBind();
                ActualizarDataGri.Update();
               
                lbl_Anuncio.Visible = false;
                ClienteBusaqueda = null;
            }
            else
            {
                txt_cedulaBuscar.Text = "";
                ActualizarDataGri.Update();
                lbl_Anuncio.Visible = true;
                Btn_Recargar.Visible = true;
                lbl_Anuncio.Text = "EL usuario no existe";
                GWUsuarios.Visible = false;
                ClienteBusaqueda = null;
            }



            //Response.Redirect(Request.Url.ToString(), false);
        }

        protected void GWUsuarios_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            switch (e.CommandName)
            {
                case "editar":
                    GWUsuarios.SelectedIndex = Convert.ToInt32(e.CommandArgument);
                    int ID  = (int)GWUsuarios.SelectedValue;
                    Session["IDEditar"] = ID;
                    LibrarySeedBDDataContext dc = new LibrarySeedBDDataContext();
                    TBL_USUARIO usuarioEditar = (from _usuario in dc.TBL_USUARIO where (_usuario.ID_Usuario.Equals(ID)) select _usuario).FirstOrDefault();

                    ListaDeTipoUsuario.SelectedValue = usuarioEditar.ID_tipousuario.ToString();
                   // Session["CedulaEditando"] = usuarioEditar.Cedula;
                    txt_Cedula.Text = usuarioEditar.Cedula;
                    Txt_Nombre.Text = usuarioEditar.Nom_usuario;
                    Txt_Apellido.Text = usuarioEditar.Apell_usuario;
                    Txt_Telefono.Text = usuarioEditar.Telef_usuario.ToString();
                    Txt_Direccion.Text = usuarioEditar.Dirrec_usuario;
                    Txt_Correo.Text = usuarioEditar.Correo_usuario;
                    Guardar.Visible = false;
                    Editar.Visible = true;
                    ScriptManager.RegisterStartupScript(this, GetType(), "MostrarEditar", "abrirEditar();", true);
                    break;
                case "eliminar":

                    GWUsuarios.SelectedIndex = Convert.ToInt32(e.CommandArgument);
                    int IDEliminar = (int)GWUsuarios.SelectedValue;
                    Session["IDEliminar"] = IDEliminar;


                    ScriptManager.RegisterStartupScript(this, GetType(), "MostrarEliminar", "abrirEliminar();", true);

                    break;
                default:
                    break;
            }
        }

        protected void Editar_Click1(object sender, EventArgs e)
        {
            if (Session["IDEditar"] != null)
            {
                try
                {
                    int ID = (int)Session["IDEditar"];
                    int tipoUsuario = int.Parse(ListaDeTipoUsuario.SelectedValue);
               

                    string cedulaNueva = txt_Cedula.Text;
                    string Nombre = Txt_Nombre.Text;
                    string Apellido = Txt_Apellido.Text;
                    int Telefono = int.Parse(Txt_Telefono.Text);
                    string Direccion = Txt_Direccion.Text;
                    string Correo = Txt_Correo.Text;



                    Funciones Actualizar = new Funciones();

                    bool nuevo = Actualizar.Actualizar(ID, cedulaNueva, Nombre, Apellido, Telefono, Direccion, Correo, tipoUsuario);

                   if (nuevo)
                   {
                    
                       PanelPrincipal.Update();
                       ActualizarDataGri.Update();
                       Session["IDEditar"] = null;
                       actualizarTabla();
                        Response.Redirect(Request.Url.ToString(), false);
                   }
                   else
                   {
                      

                   }
                     

                    
                    
                }
                catch (Exception)
                {

                    throw;
                }
            }
        }

        protected void Nuevo_Click(object sender, EventArgs e)
        {
            Guardar.Visible = true;
            Editar.Visible = false;
            txt_Cedula.Text = String.Empty;
            Txt_Nombre.Text = String.Empty;
            Txt_Apellido.Text = String.Empty;
            Txt_Telefono.Text = String.Empty;
            Txt_Direccion.Text = String.Empty;
            Txt_Correo.Text = String.Empty;
            PanelPrincipal.Update();
            ScriptManager.RegisterStartupScript(this, GetType(), "MostrarEditar", "abrirEditar();", true);
        }

        protected void Elimina_Click(object sender, EventArgs e)
        {


            Funciones ELiminar = new Funciones();
            ELiminar.EliminarUsuario((int)Session["IDEliminar"]);
            PanelPrincipal.Update();
            ActualizarDataGri.Update();
            Session["IDEliminar"] = null;
            actualizarTabla();
            Response.Redirect(Request.Url.ToString(), false);


        }

        
    }
}