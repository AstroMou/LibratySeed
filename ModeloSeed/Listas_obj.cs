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








        public class TBL_USUARIOs
        {
            private string _Cedula;
            private string _Nom_usuario;
            private string _Apell_usuario;
            private decimal _Telef_usuario;
            private string _Dirrec_usuario;
            private string _Correo_usuario;
            private int _ID_Usuario;
            private string _Tipo_Usuario;
            public TBL_USUARIOs(
                string ACedula, string ANom_usuario, string AApell_usuario,
                decimal ATelef_usuario, string ADirrec_usuario, string ACorreo_usuario,
                int AID_Usuario, string ATipo_Usuario)
            {
                _Cedula = ACedula;
                _Nom_usuario = ANom_usuario;
                _Apell_usuario = AApell_usuario;
                _Telef_usuario = ATelef_usuario;
                _Dirrec_usuario = ADirrec_usuario;
                _Correo_usuario = ACorreo_usuario;
                _ID_Usuario = AID_Usuario;
                _Tipo_Usuario = ATipo_Usuario;
            }
            public string Cedula { get { return _Cedula; } }
            public string Nom_usuario { get { return _Nom_usuario; } }
            public string Apell_usuario { get { return _Apell_usuario; } }
            public decimal Telef_usuario { get { return _Telef_usuario; } }
            public string Dirrec_usuario { get { return _Dirrec_usuario; } }
            public string Correo_usuario { get { return _Correo_usuario; } }
            public int ID_Usuario { get { return _ID_Usuario; } }
            public string Tipo_Usuario { get { return _Tipo_Usuario; } }
        }
        public class TBL_USUARIOList : List<TBL_USUARIOs>
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
                        TBL_USUARIO.ID_Usuario,
                        TBL_USUARIO.TBL_tipousuario.Tipo_Usuario
                    };
                foreach (var r in query)
                    Add(new TBL_USUARIOs(
                        r.Cedula, r.Nom_usuario, r.Apell_usuario, r.Telef_usuario,
                        r.Dirrec_usuario, r.Correo_usuario, r.ID_Usuario, r.Tipo_Usuario));
            }
        }

        public List<TBL_USUARIOs> ListaUsuariosRelacionada()
        {

            LibrarySeedBDDataContext dc = new LibrarySeedBDDataContext();
            return new TBL_USUARIOList(dc);
        }



        public class ListaLibro
        {
            private string _Titulo_libro;
            private string _Idioma_libro;
            private bool _Existencia;
            private int _ID_Libro;
            private string _Ref_Libro;
            private string _Nomb_aut;
            private string _Nomb_edit;
            private string _Nombre_Cat;
            public ListaLibro(
                string ATitulo_libro, string AIdioma_libro, bool AExistencia,
                int AID_Libro, string ARef_Libro, string ANomb_aut, string ANomb_edit,
                string ANombre_Cat)
            {
                _Titulo_libro = ATitulo_libro;
                _Idioma_libro = AIdioma_libro;
                _Existencia = AExistencia;
                _ID_Libro = AID_Libro;
                _Ref_Libro = ARef_Libro;
                _Nomb_aut = ANomb_aut;
                _Nomb_edit = ANomb_edit;
                _Nombre_Cat = ANombre_Cat;
            }
            public string Titulo_libro { get { return _Titulo_libro; } }
            public string Idioma_libro { get { return _Idioma_libro; } }
            public bool Existencia { get { return _Existencia; } }
            public int ID_Libro { get { return _ID_Libro; } }
            public string Ref_Libro { get { return _Ref_Libro; } }
            public string Nomb_aut { get { return _Nomb_aut; } }
            public string Nomb_edit { get { return _Nomb_edit; } }
            public string Nombre_Cat { get { return _Nombre_Cat; } }
        }
        public class TBL_LIBROList : List<ListaLibro>
        {
            public TBL_LIBROList(LibrarySeedBDDataContext dc)
            {
                var query =
                    from TBL_LIBRO in dc.TBL_LIBRO
                    select new
                    {
                        TBL_LIBRO.Titulo_libro,
                        TBL_LIBRO.Idioma_libro,
                        TBL_LIBRO.Existencia,
                        TBL_LIBRO.ID_Libro,
                        TBL_LIBRO.Ref_Libro,
                        TBL_LIBRO.TBL_AUTOR.Nomb_aut,
                        TBL_LIBRO.TBL_EDITORIAL.Nomb_edit,
                        TBL_LIBRO.TBL_CATEGORIA.Nombre_Cat
                    };
                foreach (var r in query)
                    Add(new ListaLibro(
                        r.Titulo_libro, r.Idioma_libro, r.Existencia, r.ID_Libro,
                        r.Ref_Libro, r.Nomb_aut, r.Nomb_edit, r.Nombre_Cat));
            }
        }



        public List<ListaLibro> ListaDeTodosLosLibro()
        {

            LibrarySeedBDDataContext dc = new LibrarySeedBDDataContext();
            return new TBL_LIBROList(dc);
        }





        public class TBL_LIBRO
        {
            private string _Titulo_libro;
            private string _Idioma_libro;
            private bool _Existencia;
            private int _ID_Libro;
            private string _Ref_Libro;
            private string _Nomb_aut;
            private string _Nomb_edit;
            private string _Nombre_Cat;
            public TBL_LIBRO(
                string ATitulo_libro, string AIdioma_libro, bool AExistencia,
                int AID_Libro, string ARef_Libro, string ANomb_aut, string ANomb_edit,
                string ANombre_Cat)
            {
                _Titulo_libro = ATitulo_libro;
                _Idioma_libro = AIdioma_libro;
                _Existencia = AExistencia;
                _ID_Libro = AID_Libro;
                _Ref_Libro = ARef_Libro;
                _Nomb_aut = ANomb_aut;
                _Nomb_edit = ANomb_edit;
                _Nombre_Cat = ANombre_Cat;
            }
            public string Titulo_libro { get { return _Titulo_libro; } }
            public string Idioma_libro { get { return _Idioma_libro; } }
            public bool Existencia { get { return _Existencia; } }
            public int ID_Libro { get { return _ID_Libro; } }
            public string Ref_Libro { get { return _Ref_Libro; } }
            public string Nomb_aut { get { return _Nomb_aut; } }
            public string Nomb_edit { get { return _Nomb_edit; } }
            public string Nombre_Cat { get { return _Nombre_Cat; } }
        }
        public class TBL_LIBROLists : List<TBL_LIBRO>
        {
            public TBL_LIBROLists(LibrarySeedBDDataContext dc)
            {
                var query =
                    from TBL_LIBRO in dc.TBL_LIBRO
                    where
                      TBL_LIBRO.Existencia == true
                    select new
                    {
                        TBL_LIBRO.Titulo_libro,
                        TBL_LIBRO.Idioma_libro,
                        TBL_LIBRO.Existencia,
                        TBL_LIBRO.ID_Libro,
                        TBL_LIBRO.Ref_Libro,
                        TBL_LIBRO.TBL_AUTOR.Nomb_aut,
                        TBL_LIBRO.TBL_EDITORIAL.Nomb_edit,
                        TBL_LIBRO.TBL_CATEGORIA.Nombre_Cat
                    };
                foreach (var r in query)
                    Add(new TBL_LIBRO(
                        r.Titulo_libro, r.Idioma_libro, r.Existencia, r.ID_Libro,
                        r.Ref_Libro, r.Nomb_aut, r.Nomb_edit, r.Nombre_Cat));
            }
        }


        public List<TBL_LIBRO> Solohabilitados()
        {
            LibrarySeedBDDataContext dc = new LibrarySeedBDDataContext();
            return new TBL_LIBROLists(dc);
        }



        public class ListaCat
        {
            private int? _ID_categoria;
            private string _Nombre_Cat;
            private string _Ref_Cat;
            public ListaCat(
                int? AID_categoria, string ANombre_Cat, string ARef_Cat)
            {
                _ID_categoria = AID_categoria;
                _Nombre_Cat = ANombre_Cat;
                _Ref_Cat = ARef_Cat;
            }
            public int? ID_categoria { get { return _ID_categoria; } }
            public string Nombre_Cat { get { return _Nombre_Cat; } }
            public string Ref_Cat { get { return _Ref_Cat; } }
        }
        public class TBL_CATEGORIAList : List<ListaCat>
        {
            public TBL_CATEGORIAList(LibrarySeedBDDataContext dc)
            {
                var query =
                    from TBL_CATEGORIA in dc.TBL_CATEGORIA
                    select new
                    {
                        ID_categoria = TBL_CATEGORIA.ID_categoria,
                        Nombre_Cat = TBL_CATEGORIA.Nombre_Cat,
                        Ref_Cat = TBL_CATEGORIA.Ref_Cat
                    };
                foreach (var r in query)
                    Add(new ListaCat(
                        r.ID_categoria, r.Nombre_Cat, r.Ref_Cat));
            }
        }


        public List<ListaCat> ListaCategoria()
        {
            LibrarySeedBDDataContext dc = new LibrarySeedBDDataContext();
            return new TBL_CATEGORIAList(dc);
        }



    }



}
