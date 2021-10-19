using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ModeloSeed
{
    public class Listas_obj
    {
        public List<TBL_tipousuario> ListaDeTipoUsuario()
        {
            try
            {
                LibrarySeedBDDataContext dc = new LibrarySeedBDDataContext();
                List<TBL_tipousuario> ListaDeLosTiposUsuarios = (from _TipoUsuario in dc.TBL_tipousuario select _TipoUsuario).ToList();
                return ListaDeLosTiposUsuarios;
            }
            catch (Exception)
            {

                return new List<TBL_tipousuario>();
            }
        }








        public class TBL_USUARIO
        {
            private string _ID_USUARIO;
            private string _Nom_usuario;
            private string _Apell_usuario;
            private decimal _Telef_usuario;
            private string _Dirrec_usuario;
            private string _Correo_usuario;
            private string _Tipo_Usuario;
            public TBL_USUARIO(
                string AID_USUARIO, string ANom_usuario, string AApell_usuario,
                decimal ATelef_usuario, string ADirrec_usuario, string ACorreo_usuario,
                string ATipo_Usuario)
            {
                _ID_USUARIO = AID_USUARIO;
                _Nom_usuario = ANom_usuario;
                _Apell_usuario = AApell_usuario;
                _Telef_usuario = ATelef_usuario;
                _Dirrec_usuario = ADirrec_usuario;
                _Correo_usuario = ACorreo_usuario;
                _Tipo_Usuario = ATipo_Usuario;
            }
            public string ID_USUARIO { get { return _ID_USUARIO; } }
            public string Nom_usuario { get { return _Nom_usuario; } }
            public string Apell_usuario { get { return _Apell_usuario; } }
            public decimal Telef_usuario { get { return _Telef_usuario; } }
            public string Dirrec_usuario { get { return _Dirrec_usuario; } }
            public string Correo_usuario { get { return _Correo_usuario; } }
            public string Tipo_Usuario { get { return _Tipo_Usuario; } }
        }
        public class TBL_USUARIOList : List<TBL_USUARIO>
        {
            public TBL_USUARIOList(LibrarySeedBDDataContext dc)
            {
                var query =
                    from TBL_USUARIO in dc.TBL_USUARIO
                    select new
                    {
                        TBL_USUARIO.Cedula,
                        TBL_USUARIO.Nom_usuario,
                        TBL_USUARIO.Apell_usuario,
                        TBL_USUARIO.Telef_usuario,
                        TBL_USUARIO.Dirrec_usuario,
                        TBL_USUARIO.Correo_usuario,
                        TBL_USUARIO.TBL_tipousuario.Tipo_Usuario
                    };
                foreach (var r in query)
                    Add(new TBL_USUARIO(
                        r.Cedula, r.Nom_usuario, r.Apell_usuario, r.Telef_usuario,
                        r.Dirrec_usuario, r.Correo_usuario, r.Tipo_Usuario));
            }
        }
        public List<TBL_USUARIO> ListaUsuariosRelacionada()
        {

            LibrarySeedBDDataContext dc = new LibrarySeedBDDataContext();
            return new TBL_USUARIOList(dc);
        }

    }
}
