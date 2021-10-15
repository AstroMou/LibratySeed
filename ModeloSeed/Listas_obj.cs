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
    }
}
