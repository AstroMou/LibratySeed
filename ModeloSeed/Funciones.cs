using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ModeloSeed
{
    public class Funciones
    {

        //Agregarpersona
        public void agregarPersonas(int _tipoUsuario, string _Cedula, string _Nombre, string _Apellido, int _Telefono, string _Direccion, string _Correo)
        {

            LibrarySeedBDDataContext dc = new LibrarySeedBDDataContext();
            TBL_USUARIO iTBL_USUARIO = new TBL_USUARIO
            {
                Cedula = _Cedula,
                Nom_usuario = _Nombre,
                Apell_usuario = _Apellido,
                Telef_usuario = _Telefono,
                Dirrec_usuario = _Direccion,
                Correo_usuario = _Correo,
                ID_tipousuario = _tipoUsuario
            };
            dc.TBL_USUARIO.InsertOnSubmit(iTBL_USUARIO);
            dc.SubmitChanges();



        }


        //Actualizar Nombre
        public void ActualizarNombre(string _cedula, string _nuevoNombre)
        {

            LibrarySeedBDDataContext dc = new LibrarySeedBDDataContext();

            try
            {
                var queryTBL_USUARIO = from _TBL_USUARIO in dc.TBL_USUARIO where _TBL_USUARIO.Cedula.Equals(_cedula) select _TBL_USUARIO;
                foreach (var USUARIO in queryTBL_USUARIO)
                {
                    USUARIO.Nom_usuario =_nuevoNombre;
                }
                dc.SubmitChanges();

            }
            catch (Exception)
            {

                throw;
            }

        }


        //Actualizar Apellido
        public void actualizaApellido(string _cedula, string _Apellido)
        {
            LibrarySeedBDDataContext dc = new LibrarySeedBDDataContext();
            var queryTBL_USUARIO = from TBL_USUARIO in dc.TBL_USUARIO where TBL_USUARIO.Cedula == _cedula select TBL_USUARIO;

            foreach (var TBL_USUARIO in queryTBL_USUARIO)
            {


                TBL_USUARIO.Apell_usuario = _Apellido;

            }
            dc.SubmitChanges();

        }


        //Actualizar Telefono
        public void actualizaTelefono(string _cedula, int _telefonousuario)
        {
            LibrarySeedBDDataContext dc = new LibrarySeedBDDataContext();
            var queryTBL_USUARIO = from TBL_USUARIO in dc.TBL_USUARIO where TBL_USUARIO.Cedula == _cedula select TBL_USUARIO;

            foreach (var TBL_USUARIO in queryTBL_USUARIO)
            {



                TBL_USUARIO.Telef_usuario = _telefonousuario;

            }
            dc.SubmitChanges();

        }


        //Actualizar Direccion
        public void actualizaDireccion(string _cedula, string _direccion)
        {
            LibrarySeedBDDataContext dc = new LibrarySeedBDDataContext();
            var queryTBL_USUARIO = from TBL_USUARIO in dc.TBL_USUARIO where TBL_USUARIO.Cedula == _cedula select TBL_USUARIO;

            foreach (var TBL_USUARIO in queryTBL_USUARIO)
            {
                TBL_USUARIO.Dirrec_usuario = _direccion;
            }
            dc.SubmitChanges();

        }


        //Actualizar Correo
        public void actualizaCorreo(string _cedula, string _correo)
        {
            LibrarySeedBDDataContext dc = new LibrarySeedBDDataContext();
            var queryTBL_USUARIO = from TBL_USUARIO in dc.TBL_USUARIO where TBL_USUARIO.Cedula == _cedula select TBL_USUARIO;

            foreach (var TBL_USUARIO in queryTBL_USUARIO)
            {


                TBL_USUARIO.Correo_usuario = _correo;

            }
            dc.SubmitChanges();

        }


        //Actualizar Tipo Usuario
        public void actualizaTipoUsuario(string _cedula, int _TipoUsuario)
        {
            LibrarySeedBDDataContext dc = new LibrarySeedBDDataContext();
            var queryTBL_USUARIO = from TBL_USUARIO in dc.TBL_USUARIO where TBL_USUARIO.Cedula == _cedula select TBL_USUARIO;

            foreach (var TBL_USUARIO in queryTBL_USUARIO)
            {

                TBL_USUARIO.ID_tipousuario = _TipoUsuario;
            }
            dc.SubmitChanges();

        }








    }
}
