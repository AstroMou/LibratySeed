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

        public void EliminarUsuario(string _Cedula)
        {
            LibrarySeedBDDataContext dc = new LibrarySeedBDDataContext();
            var queryTBL_USUARIO = from TBL_USUARIO in dc.TBL_USUARIO where TBL_USUARIO.Cedula == _Cedula select TBL_USUARIO;
          
            foreach (var del in queryTBL_USUARIO)
            {
                dc.TBL_USUARIO.DeleteOnSubmit(del);
            }
            dc.SubmitChanges();

        }





    }
}
