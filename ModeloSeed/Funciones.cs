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


        public Boolean ExisteLaPersona(string _Cedula)
        {
            LibrarySeedBDDataContext dc = new LibrarySeedBDDataContext();
            try
            {
                if (dc.TBL_USUARIO.Any(a => a.Cedula == _Cedula))
                {
                    return true;

                }
                else
                {
                    return false;
                }

            }
            catch (Exception)
            {

                return false;
            }


        }

        public void EliminarUsuario(int IDEliminar)
        {
            LibrarySeedBDDataContext dc = new LibrarySeedBDDataContext();
            var queryTBL_USUARIO = from TBL_USUARIO in dc.TBL_USUARIO where TBL_USUARIO.ID_Usuario == IDEliminar select TBL_USUARIO;

            foreach (var del in queryTBL_USUARIO)
            {
                dc.TBL_USUARIO.DeleteOnSubmit(del);
            }
            dc.SubmitChanges();

        }



        public Boolean Actualizar(int ID, string _CedulaNueva, string _Nom_usuario, string _Apell_usuario, int _Telef_usuario, string _Dirrec_usuario, string _Correo_usuario, int _ID_tipousuario)
        {

            try
            {

                LibrarySeedBDDataContext dc = new LibrarySeedBDDataContext();

                var queryTBL_USUARIO = from TBL_USUARIO in dc.TBL_USUARIO where TBL_USUARIO.ID_Usuario == ID select TBL_USUARIO;
                foreach (var TBL_USUARIO in queryTBL_USUARIO)
                {
                    TBL_USUARIO.Cedula = _CedulaNueva;
                    TBL_USUARIO.Nom_usuario = _Nom_usuario;
                    TBL_USUARIO.Apell_usuario = _Apell_usuario;
                    TBL_USUARIO.Telef_usuario = _Telef_usuario;
                    TBL_USUARIO.Dirrec_usuario = _Dirrec_usuario;
                    TBL_USUARIO.Correo_usuario = _Correo_usuario;
                    TBL_USUARIO.ID_tipousuario = _ID_tipousuario;
                }
                dc.SubmitChanges();

                return true;


            }
            catch (Exception)
            {

                return false;
            }
            
            

        }



    }
}
