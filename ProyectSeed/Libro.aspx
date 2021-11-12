<%@ Page Title="" Language="C#" MasterPageFile="~/semillaMaster.Master" AutoEventWireup="true" CodeBehind="Libro.aspx.cs" Inherits="ProyectSeed.Libro" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="diseno/styleLibros.css" rel="stylesheet" />

    <script>


        function AbriGuardarLibro() {
            $('#CuerpoAgregaLibro').collapse('show');
        }
        function CerrarGuardarLibro() {
            $('#CuerpoAgregaLibro').collapse('hide');
        }
        function AbriGuardarCategoria() {
            $('#CuerpoAgregarCategoria').collapse('show');
        }

        function Cerrarcate() {
            $('#CuerpoAgregarCategoria').collapse('hide');
        }

        function AbriGuardarEditoria() {
            $('#CuerpoAgregarEditorial').collapse('show');
        }
        function CerrarGuardarEditorial() {
            $('#CuerpoAgregarEditorial').collapse('hide');
        }

        function AbriGuardarAutor() {
            $('#CuerpoAgregarAutor').collapse('show');
        }
        function CerrarGuardarAutor() {
            $('#CuerpoAgregarAutor').collapse('hide');
        }


        function AbrirAlertaCerrar() {
            $('#AlertaCerrar').modal('show');
        }

        function CerrarAlertaCerrar() {
            $('#AlertaCerrar').modal('hide');
        }

    </script>


</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>



    <asp:UpdatePanel ID="Panelbody" UpdateMode="Conditional" runat="server">
        <ContentTemplate>


            <fieldset>








                <!-- Modal -->
                <div class="modal fade" id="AlertaCerrar" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
                    <div class="modal-dialog" role="document">
                        <div class="modal-content">
                            <div class="modal-header">

                                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                    <span aria-hidden="true">&times;</span>
                                </button>
                            </div>
                            <div class="modal-body">
                                ¿Estas seguro que quieres cerrar?
                                Los cambios puede que no se guarden
                            </div>


                            <asp:UpdatePanel ID="UpdatePanel1" runat="server" UpdateMode="Conditional">
                                <ContentTemplate>
                                    <div class="modal-footer">

                                        <asp:Button ID="CancelarCerrar" runat="server" OnClick="CancelarCerrar_Click" Text="Cancelar" />

                                        <asp:Button ID="CerrarTodo" runat="server" OnClick="CerrarTodo_Click" Text="Aceptar" />


                                    </div>
                                </ContentTemplate>
                            </asp:UpdatePanel>


                        </div>
                    </div>
                </div>





                <%--Empieza el codigo --%>
                <%--Empieza Agregar Libro--%>

                <%--Botones de todo los acordeones--%>
                <asp:UpdatePanel ID="Paneltarjeta" UpdateMode="Conditional" runat="server">
                    <ContentTemplate>




                        <div class="MiTarejet">

                            <%--Botones de los acordeones--%>

                            <p>
                                <asp:UpdatePanel ID="Botones" UpdateMode="Conditional" runat="server">
                                    <ContentTemplate>

                                        <%--Boton de agrega Libro--%>

                                        <asp:Button ID="Agregar_Libro" CssClass="btn btn-primary" OnClick="Agregar_Libro_Click" runat="server" Text="Agregar Libro" />

                                        <%--Boton de Agrega Categoria--%>
                                        <asp:Button ID="AgregarCategoria" CssClass="btn btn-primary" OnClick="AgregarCategoria_Click" runat="server" Text="Agregar Categorias" />

                                        <%--Boton de Agrega Categoria--%>
                                        <asp:Button ID="AgregarEditorial" CssClass="btn btn-primary" OnClick="AgregarEditorial_Click" runat="server" Text="Agregar Editorial" />

                                        <%--Boton de Agrega Categoria--%>
                                        <asp:Button ID="AgregarAutor" CssClass="btn btn-primary" OnClick="AgregarAutor_Click" runat="server" Text="Agregar Autor" />



                                    </ContentTemplate>
                                </asp:UpdatePanel>

                            </p>






                            <%-- El cuarpo del acordeon que se abre es de libros--%>





                            <asp:UpdatePanel ID="UpdateLibro" UpdateMode="Conditional" runat="server">
                                <ContentTemplate>

                                    <div class="collapse" id="CuerpoAgregaLibro">


                                        <%--   Este es el contenido que se encuentra dentro del acordeon--%>
                                        <asp:UpdatePanel ID="ActualizarLibros" UpdateMode="Conditional" runat="server">

                                            <ContentTemplate>

                                                <div id="CuerpoDeLaTarjeta">
                                                    <div class="card TarjetaConfi card-body">
                                                        Incia el Formulario Libros

                        <div>
                            <asp:Button ID="Guardar" runat="server" OnClick="Guardar_Click" Text="Guardar" />
                            <asp:Button ID="Cerrar" runat="server" OnClick="Cerrar_Click" Text="Cerrar" />


                        </div>


                                                    </div>
                                                </div>


                                            </ContentTemplate>
                                            <%--   Este es el contenido que se encuentra dentro del acordeon--%>
                                        </asp:UpdatePanel>
                                    </div>
                                </ContentTemplate>
                            </asp:UpdatePanel>

                            <asp:UpdatePanel ID="PanelAgregarCategoriar" UpdateMode="Conditional" runat="server">
                                <ContentTemplate>

                                    <div class="collapse" id="CuerpoAgregarCategoria">


                                        <%--   Este es el contenido que se encuentra dentro del acordeon--%>
                                        <asp:UpdatePanel ID="ActualizarCategoria" UpdateMode="Conditional" runat="server">

                                            <ContentTemplate>

                                                <div id="CuerpoDeLaCategoria">
                                                    <div class="card TarjetaConfi card-body">
                                                        Incia el Formulario Categoria

                        <div>
                            <asp:Button ID="Btn_AgregaCategoria" runat="server" Text="Guardar" />
                            <asp:Button ID="Btn_CerrarCategoria" runat="server" OnClick="Btn_CerrarCategoria_Click" Text="Cerar" />

                        </div>


                                                    </div>
                                                </div>


                                            </ContentTemplate>
                                            <%--   Este es el contenido que se encuentra dentro del acordeon--%>
                                        </asp:UpdatePanel>
                                    </div>
                                </ContentTemplate>
                            </asp:UpdatePanel>

                            <asp:UpdatePanel ID="PanelEditorial" UpdateMode="Conditional" runat="server">
                                <ContentTemplate>

                                    <div class="collapse" id="CuerpoAgregarEditorial">


                                        <%--   Este es el contenido que se encuentra dentro del acordeon--%>
                                        <asp:UpdatePanel ID="PanelEditorialCuerpo" UpdateMode="Conditional" runat="server">

                                            <ContentTemplate>

                                                <div id="CuerpoDeLaEditorial">
                                                    <div class="card TarjetaConfi card-body">
                                                        Incia el Formulario Editorial

                        <div>
                            <asp:Button ID="btn_GuardarEditorial" runat="server" Text="Guardar" />
                            <asp:Button ID="Btn_CerrarEditorial" runat="server" OnClick="Btn_CerrarEditorial_Click" Text="Cerar" />

                        </div>


                                                    </div>
                                                </div>


                                            </ContentTemplate>
                                            <%--   Este es el contenido que se encuentra dentro del acordeon--%>
                                        </asp:UpdatePanel>
                                    </div>
                                </ContentTemplate>
                            </asp:UpdatePanel>

                            <asp:UpdatePanel ID="PanelAutor" UpdateMode="Conditional" runat="server">
                                <ContentTemplate>

                                    <div class="collapse" id="CuerpoAgregarAutor">


                                        <%--   Este es el contenido que se encuentra dentro del acordeon--%>
                                        <asp:UpdatePanel ID="CuerpoAutor" UpdateMode="Conditional" runat="server">

                                            <ContentTemplate>

                                                <div id="CuerpoDeLaAutor">
                                                    <div class="card TarjetaConfi card-body">
                                                        Incia el Formulario Autor

                        <div>
                            <asp:Button ID="btn_GuardarAutor" runat="server" Text="Guardar" />
                            <asp:Button ID="btnCerrarAutor" runat="server" OnClick="btnCerrarAutor_Click" Text="Cerar" />

                        </div>


                                                    </div>
                                                </div>


                                            </ContentTemplate>
                                            <%--   Este es el contenido que se encuentra dentro del acordeon--%>
                                        </asp:UpdatePanel>
                                    </div>
                                </ContentTemplate>
                            </asp:UpdatePanel>







                        </div>
                    </ContentTemplate>
                </asp:UpdatePanel>

                <div class="container">
                    <div class="row">
                        <div class="col-md-offset-1 col-md-6" style="margin-bottom:12px;">

                            <asp:DropDownList ID="DWL_OpcionesDevistas" CssClass="custom-select" AutoPostBack="true" runat="server">
                                <asp:ListItem Value="0">TODO</asp:ListItem>
                                <asp:ListItem Value="1">CATEGORIAS</asp:ListItem>
                                <asp:ListItem Value="2">Solo Existentes</asp:ListItem>

                            </asp:DropDownList>


                        </div>
                    </div>
                </div>





                <asp:UpdatePanel ID="TablaDeDatos" UpdateMode="Conditional" runat="server">

                    <ContentTemplate>



                        <asp:GridView ID="DGW_Listas" CssClass=" table-hover  table table-striped table-bordered" runat="server"></asp:GridView>

                    </ContentTemplate>

                </asp:UpdatePanel>





                <%--  El cuarpo del acordeon que se abre--%>
                <%--termina eliminar libro--%>
            </fieldset>



        </ContentTemplate>
    </asp:UpdatePanel>


</asp:Content>
