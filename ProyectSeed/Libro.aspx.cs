using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ProyectSeed
{
    public partial class Libro : System.Web.UI.Page
    {

        protected void Page_Load(object sender, EventArgs e)
        {

            if (!IsPostBack)
            {
                Session["btn_GuardarLibro"] = true;
                Session["btn_GuardarCategoria"] = true;
                Session["btn_Editorial"] = true;
                Session["btn_Autor"] = true;



            }

        }


        //funciones dE Cerrar Tarjetas ============================================
        protected void Guardar_Click(object sender, EventArgs e)
        {

            //ActualizarLibros.Update();-> Este funciona para actualizar toda la pagina
            //Panelbody.Update(); -> Este funciona para actualizar El cuerpo de la tarjeta o acordeon
            //Paneltarjeta.Update();-> Funciona para actualizar la tarjeta o solamente una en especifico



        }
        protected void Btn_CerrarCategoria_Click(object sender, EventArgs e)
        {
            ScriptManager.RegisterStartupScript(this, GetType(), "CerrarCategoria", "Cerrarcate();", true);//Cerrar Categoria
            Session["btn_GuardarCategoria"] = true;


        }
        protected void Btn_CerrarEditorial_Click(object sender, EventArgs e)
        {
            ScriptManager.RegisterStartupScript(this, GetType(), "CerrarEditorial", "CerrarGuardarEditorial();", true);//Cerrar editorial
            Session["btn_Editorial"] = true;
        }
        protected void btnCerrarAutor_Click(object sender, EventArgs e)
        {
            ScriptManager.RegisterStartupScript(this, GetType(), "CerrarAutor", "CerrarGuardarAutor();", true);//Cerrar autor
            Session["btn_Autor"] = true;
        }
        //=============================================================



        //Funciones de abrir y cerrar Acordeones si algo  falla reparara aqui=================================================

        //Funciones para el boton de Cerrar Libro(Cerrar)

        protected void Cerrar_Click(object sender, EventArgs e)
        {

            ScriptManager.RegisterStartupScript(this, GetType(), "Cerrar", "CerrarGuardarLibro();", true);
            Session["btn_GuardarLibro"] = true;


        }

        //Funciones del Acordeon Libro
        protected void Agregar_Libro_Click(object sender, EventArgs e)
        {



            if ((Boolean)Session["btn_GuardarLibro"] == true)
            {
                ScriptManager.RegisterStartupScript(this, GetType(), "CerrarsCategoria", "Cerrarcate();", true);//Cerrar categoria
                Session["btn_GuardarCategoria"] = true;

                ScriptManager.RegisterStartupScript(this, GetType(), "CerrarEditorial", "CerrarGuardarEditorial();", true);//Cerrar editorial
                Session["btn_Editorial"] = true;

                ScriptManager.RegisterStartupScript(this, GetType(), "CerrarAutor", "CerrarGuardarAutor();", true);//Cerrar Autor
                Session["btn_Autor"] = true;


                ScriptManager.RegisterStartupScript(this, GetType(), "abrir", "AbriGuardarLibro();", true);//Abrir Agregar Libros
                Session["btn_GuardarLibro"] = false;
            }
            else
            {
                ScriptManager.RegisterStartupScript(this, GetType(), "Cerrar", "CerrarGuardarLibro();", true);//Cerrar Agregar Libros
                Session["btn_GuardarLibro"] = true;
            }





        }

        //Funciones del Acordeon Categoria
        protected void AgregarCategoria_Click(object sender, EventArgs e)
        {


            //Cerrar y abrir Cartegorias
            if ((Boolean)Session["btn_GuardarCategoria"] == true)
            {

                //Cerar las demas pestañas recordemo poner en true para que el boton funcion
                ScriptManager.RegisterStartupScript(this, GetType(), "CerrarLibros", "CerrarGuardarLibro();", true);//Cerrar Libro
                Session["btn_GuardarLibro"] = true;

                ScriptManager.RegisterStartupScript(this, GetType(), "CerrarEditorial", "CerrarGuardarEditorial();", true);//Cerrar editorial
                Session["btn_Editorial"] = true;


                ScriptManager.RegisterStartupScript(this, GetType(), "CerrarAutor", "CerrarGuardarAutor();", true);//Cerrar Autor
                Session["btn_Autor"] = true;



                ScriptManager.RegisterStartupScript(this, GetType(), "AbrirCategoria", "AbriGuardarCategoria();", true);//Abrir Categoria
                Session["btn_GuardarCategoria"] = false;

            }
            else
            {
                ScriptManager.RegisterStartupScript(this, GetType(), "CerrarCategoria", "Cerrarcate();", true);//Cerrar Categoria
                Session["btn_GuardarCategoria"] = true;
            }



        }

        //Funciones del Acordeon Editorial
        protected void AgregarEditorial_Click(object sender, EventArgs e)
        {


            if ((Boolean)Session["btn_Editorial"] == true)
            {
                ScriptManager.RegisterStartupScript(this, GetType(), "Cerrar", "CerrarGuardarLibro();", true);//cerrar libro
                Session["btn_GuardarLibro"] = true;

                ScriptManager.RegisterStartupScript(this, GetType(), "CerrarCategoria", "Cerrarcate();", true);//Cerrar Categoria
                Session["btn_GuardarCategoria"] = true;

                ScriptManager.RegisterStartupScript(this, GetType(), "CerrarAutor", "CerrarGuardarAutor();", true);//cerrar Autor
                Session["btn_Autor"] = true;


                ScriptManager.RegisterStartupScript(this, GetType(), "AbrirEditorial", "AbriGuardarEditoria();", true);//Abrir editorial
                Session["btn_Editorial"] = false;
            }
            else
            {
                ScriptManager.RegisterStartupScript(this, GetType(), "CerrarEditorial", "CerrarGuardarEditorial();", true);//Cerrar editorial
                Session["btn_Editorial"] = true;
            }





        }

        //Funciones del Acordeon Autor
        protected void AgregarAutor_Click(object sender, EventArgs e)
        {



            if ((Boolean)Session["btn_Autor"] == true)
            {


                ScriptManager.RegisterStartupScript(this, GetType(), "CerrarEditorial", "CerrarGuardarEditorial();", true);//Cerrar editorial
                Session["btn_Editorial"] = true;

                ScriptManager.RegisterStartupScript(this, GetType(), "CerrarCategoria", "Cerrarcate();", true);//Cerrar Categoria
                Session["btn_GuardarCategoria"] = true;

                ScriptManager.RegisterStartupScript(this, GetType(), "Cerrar", "CerrarGuardarLibro();", true);//Cerrar Agregar Libros
                Session["btn_GuardarLibro"] = true;

                ScriptManager.RegisterStartupScript(this, GetType(), "AbrirAutor", "AbriGuardarAutor();", true);//Abrir Autor
                Session["btn_Autor"] = false;
            }
            else
            {
                ScriptManager.RegisterStartupScript(this, GetType(), "CerrarAutor", "CerrarGuardarAutor();", true);//Cerrar autor
                Session["btn_Autor"] = true;
            }

        }

       //===========================================================================================================


      


    }
}