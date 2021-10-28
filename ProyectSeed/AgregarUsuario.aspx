<%@ Page Title="" Language="C#" MasterPageFile="~/semillaMaster.Master" AutoEventWireup="true" CodeBehind="AgregarUsuario.aspx.cs" Inherits="ProyectSeed.AgregarUsuario" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

    <link rel="stylesheet" href="diseno/style.css" />


    <script>

        function openModal() {
            $('#Guardar').modal('show');
            $('#Alerta').show();
        }
        function abrirEditar() {
            $('#exampleModal').modal('show');
        }

        function abrirEliminar() {
            $('#ModalEliminar').modal('show');
        }
        //$('#myCollapsible').collapse({
        //    toggle: false
        //})

        //Idiomas con el 1er método   

    </script>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>



    <asp:UpdatePanel ID="PanelPrincipal" runat="server" UpdateMode="Conditional">
        <ContentTemplate>


            <%--Modal de alerta eliminar --%>


            <div class="modal fade" id="ModalEliminar" tabindex="-1" role="dialog" aria-labelledby="ModalAlerta" aria-hidden="true">
                <div class="modal-dialog" role="document">
                    <div class="modal-content">
                        <div class="modal-header">
                            <h5 class="modal-title" id="ModalAlerta">Modal title</h5>
                            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                <span aria-hidden="true">&times;</span>
                            </button>
                        </div>
                        <div class="modal-body">
                            Estas serguro que quieres eliminar
                            <asp:Button ID="Elimina" OnClick="Elimina_Click" runat="server" Text="Eliminar" />
                 

                        </div>
                        <div class="modal-footer">
                            <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                            <button type="button" class="btn btn-primary">Save changes</button>
                        </div>
                    </div>
                </div>
            </div>

            <%--fin modal alerta eliminar--%>

            <fieldset class="Ajuste" style="overflow: hidden;">
                <!-- Modal -->
                <div class="modal fade" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
                    <div class="modal-dialog" role="document">
                        <div class="modal-content">
                            <div class="modal-header">
                                <h5 class="modal-title" id="exampleModalLabel">Modal title</h5>
                                <asp:Button ID="Button1" OnClick="Editar_Click1" CssClass="btn-warning" runat="server" Text="Guardar Cambios" Visible="false" />
                                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                    <span aria-hidden="true">&times;</span>
                                </button>
                            </div>
                            <div class="modal-body">
                                <asp:UpdatePanel ID="UpdatePanel2" runat="server" UpdateMode="Always">
                                    <ContentTemplate>
                                        <div class="row">
                                            <div class="col-md-12">
                                                <h5>
                                                    <div class="shadow-none p-3 mb-5 bg-light rounded">

                                                        <h5>
                                                            <asp:Label ID="Titulo" runat="server" Text="Label"></asp:Label></h5>

                                                        <div class="centro">
                                                            <asp:DropDownList ID="ListaDeTipoUsuario" runat="server" CssClass="custom-select" AutoPostBack="true"></asp:DropDownList>
                                                        </div>



                                                        <div id="CuerpoDeAgregar" runat="server">


                                                            <div class="row">
                                                                <div class="col-md-6">
                                                                    <p>cedula</p>
                                                                    <asp:TextBox ID="txt_Cedula" CssClass="form-control" placeholder="Ingrese cedula" MaxLength="16" runat="server"></asp:TextBox>
                                                                    <p>Nombre  </p>
                                                                    <asp:TextBox ID="Txt_Nombre" CssClass="form-control" placeholder="Ingrese Nombre" MaxLength="16" runat="server"></asp:TextBox>
                                                                    <p>Apellido</p>
                                                                    <asp:TextBox ID="Txt_Apellido" CssClass="form-control" placeholder="Ingrese Apellido" MaxLength="16" runat="server"></asp:TextBox>

                                                                </div>
                                                                <div class="col-md-6">


                                                                    <p>telefono </p>
                                                                    <asp:TextBox ID="Txt_Telefono" CssClass="form-control" placeholder="Ingrese Numero" runat="server"></asp:TextBox>
                                                                    <p>Direccion</p>
                                                                    <asp:TextBox ID="Txt_Direccion" CssClass="form-control" placeholder="Ingrese Direccion" runat="server"></asp:TextBox>
                                                                    <p>Correo</p>
                                                                    <asp:TextBox ID="Txt_Correo" TextMode="Email" placeholder="Ingrese Correo" CssClass="UltimoMargen form-control" runat="server"></asp:TextBox>
                                                                </div>

                                                            </div>

                                                            <div class="BotonesFormulario">
                                                                <asp:Label ID="funciono" runat="server" Text=""></asp:Label>
                                                                <asp:Button ID="Guardar" OnClick="Guardar_Click1" CssClass="btn-info" runat="server" Text="Guardar" />
                                                                <asp:Button ID="Editar" OnClick="Editar_Click1" CssClass="btn-warning" runat="server" Text="Guardar Cambios" Visible="false" />
                                                                <asp:Button ID="Cancelar" OnClick="Cancelar_Click" CssClass="btn-danger" runat="server" Text="Canselar" />

                                                            </div>

                                                        </div>
                                                    </div>
                                                </h5>
                                            </div>
                                        </div>
                                    </ContentTemplate>
                                </asp:UpdatePanel>
                            </div>
                            <div class="modal-footer">
                            </div>
                        </div>
                    </div>
                </div>





                <div class="container">
                    <br />
                    <br />
                </div>


                <asp:UpdatePanel ID="ActualizarDataGri" UpdateMode="Conditional" runat="server">



                    <ContentTemplate>
                        <!-- Button trigger modal -->
                        <div class="row">
                            <div class="col-md-2">
                                <div class="form-group">
                                     

                              
                                </div>
                                
                            </div>
                            <div class="col-md-6">
                            </div>

                            <div class="col-md-4">



                                <div class="form-group">
                                </div>
                                <div class="form-group">
                                     <span class="fa fa-user mr-3">
                                      <asp:Button ID="Nuevo" OnClick="Nuevo_Click" CssClass="btn-success " runat="server" Text="Agregar" UseSubmitBehavior="false" CausesValidation="false" /></span>
                                    <asp:TextBox ID="txt_cedulaBuscar" placeholder="Buscar..." runat="server" CssClass="" OnTextChanged="txt_cedulaBuscar_TextChanged" AutoPostBack="true"></asp:TextBox>
                                   


                                    <span class="fa fa-search mr-3">
                                        <label for="txt_cedulaBuscar">Buscar</label>
                                    </span>







                                    <asp:Button ID="Btn_Recargar" CssClass="alert-info" runat="server" OnClick="Unnamed1_Click" Text="Recargar" Width="123px" />


                                </div>

                            </div>






                        </div>
                        <asp:GridView ID="GWUsuarios" DataKeyNames="ID_USUARIO" runat="server" AutoGenerateColumns="False" AutoPostBack="true" CssClass=" table-hover  table table-striped table-bordered" PagerSettings-Position="Top" Width="100%" OnRowCommand="GWUsuarios_RowCommand">

                            <Columns>
                                <asp:BoundField DataField="ID_USUARIO" HeaderText="Cedula">
                                    <HeaderStyle CssClass="bg-primary" ForeColor="White" />
                                </asp:BoundField>
                                <asp:BoundField DataField="Tipo_Usuario" HeaderText="Tipo">
                                    <HeaderStyle CssClass="bg-primary" ForeColor="White" />
                                </asp:BoundField>
                                <asp:BoundField DataField="Nom_usuario" HeaderText="Nombre Del Usuario">
                                    <HeaderStyle CssClass="bg-primary" ForeColor="White" />
                                </asp:BoundField>
                                <asp:BoundField DataField="Apell_usuario" HeaderText="Apellido Del Cliente">
                                    <HeaderStyle CssClass="bg-primary" ForeColor="White" />
                                </asp:BoundField>
                                <asp:BoundField DataField="Telef_usuario" HeaderText="Telefono Del Cliente">
                                    <HeaderStyle CssClass="bg-primary" ForeColor="White" />
                                </asp:BoundField>
                                <asp:BoundField DataField="Dirrec_usuario" HeaderText="Direccion Del Cliente">
                                    <HeaderStyle CssClass="bg-primary" ForeColor="White" />
                                </asp:BoundField>
                                <asp:BoundField DataField="Correo_usuario" HeaderText="Correo Del Usuario">
                                    <HeaderStyle CssClass="bg-primary" ForeColor="White" />
                                </asp:BoundField>
                                <asp:ButtonField CommandName="editar" Text="Editar" ButtonType="Button" ShowHeader="True" AccessibleHeaderText="Editar" HeaderText="Editar">
                                    <ControlStyle CssClass="btn btn-warning"></ControlStyle>
                                </asp:ButtonField>
                                <asp:ButtonField Text="Eliminar" AccessibleHeaderText="Eliminar" HeaderText="Eliminar" CommandName="eliminar">
                                    <ControlStyle CssClass="btn btn-danger"></ControlStyle>
                                </asp:ButtonField>
                            </Columns>
                        </asp:GridView>
                        <div>
                            <asp:Label ID="lbl_Anuncio" runat="server"></asp:Label>
                        </div>

                    </ContentTemplate>



                </asp:UpdatePanel>





            </fieldset>



        </ContentTemplate>
    </asp:UpdatePanel>




</asp:Content>
