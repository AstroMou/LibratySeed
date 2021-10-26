<%@ Page Title="" Language="C#" MasterPageFile="~/semillaMaster.Master" AutoEventWireup="true" CodeBehind="AgregarUsuario.aspx.cs" Inherits="ProyectSeed.AgregarUsuario" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

    <link rel="stylesheet" href="diseno/style.css" />


    <script>

        function openModal() {
            $('#Guardar').modal('show');
            $('#Alerta').show();
        }

        //$('#myCollapsible').collapse({
        //    toggle: false
        //})

        //Idiomas con el 1er método   

    </script>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>



    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
        <ContentTemplate>




            <fieldset class="Ajuste" style="overflow: hidden;">


                <div class="row">
                    <div class="col-sm-6">

                        <div class="Tarjeta" style="margin-left: 22px;">


                            <div class="centro">
                                <asp:DropDownList ID="ListaDeTipoUsuario" runat="server" AutoPostBack="true"></asp:DropDownList>
                            </div>

                            <h5>
                                <asp:Label ID="Titulo" runat="server" Text="Label"></asp:Label></h5>

                            <div id="CuerpoDeAgregar" runat="server">


                                <div class="row">
                                    <div class="col-md-6">
                                        <p>cedula</p>
                                        <asp:TextBox ID="txt_Cedula" placeholder="Ingrese cedula" MaxLength="16" runat="server"></asp:TextBox>
                                        <p>Nombre  </p>
                                        <asp:TextBox ID="Txt_Nombre" placeholder="Ingrese Nombre" MaxLength="16" runat="server"></asp:TextBox>
                                        <p>Apellido</p>
                                        <asp:TextBox ID="Txt_Apellido" placeholder="Ingrese Apellido" MaxLength="16" runat="server"></asp:TextBox>

                                    </div>
                                    <div class="col-md-6">


                                        <p>telefono </p>
                                        <asp:TextBox ID="Txt_Telefono" placeholder="Ingrese Numero" runat="server"></asp:TextBox>
                                        <p>Direccion</p>
                                        <asp:TextBox ID="Txt_Direccion" placeholder="Ingrese Direccion" runat="server"></asp:TextBox>
                                        <p>Correo</p>
                                        <asp:TextBox ID="Txt_Correo" placeholder="Ingrese Correo" CssClass="UltimoMargen" runat="server"></asp:TextBox>

                                    </div>

                                </div>

                                <div class="BotonesFormulario">
                                    <asp:Label ID="funciono" runat="server" Text=""></asp:Label>
                                    <asp:Button ID="Guardar" OnClick="Guardar_Click1" runat="server" Text="Guardar" />
                                    <asp:Button ID="Button2" runat="server" Text="Caselar" />

                                </div>

                            </div>
                        </div>
                    </div>

                    <div class="col-sm-6">

                        <div class="Tarjeta">


                            <div class="centro">

                                <asp:DropDownList ID="EdicionTipo" AutoPostBack="true" runat="server"></asp:DropDownList>

                            </div>

                            <h5>
                                <asp:Label ID="LBL_Editar" runat="server" Text="EDITAR USUARIOS"></asp:Label></h5>

                            <div id="Div1" runat="server">


                                <div class="row">
                                    <div class="col-md-6">
                                        <p>cedula</p>
                                        <asp:TextBox ID="CedulaEditar" placeholder="Ingrese cedula" MaxLength="16" runat="server"></asp:TextBox>
                                        <p>Nombre  </p>
                                        <asp:TextBox ID="NombreEditar" placeholder="Ingrese Nombre" MaxLength="16" runat="server"></asp:TextBox>
                                        <p>Apellido</p>
                                        <asp:TextBox ID="ApelldioE" placeholder="Ingrese Apellido" MaxLength="16" runat="server"></asp:TextBox>

                                    </div>
                                    <div class="col-md-6">


                                        <p>telefono </p>
                                        <asp:TextBox ID="TelefonoEditar" placeholder="Ingrese Numero" runat="server"></asp:TextBox>
                                        <p>Direccion</p>
                                        <asp:TextBox ID="DireccionEditar" placeholder="Ingrese Direccion" runat="server"></asp:TextBox>
                                        <p>Correo</p>
                                        <asp:TextBox ID="CorreoEditae" placeholder="Ingrese Correo" CssClass="UltimoMargen" runat="server"></asp:TextBox>

                                    </div>

                                </div>

                                <div class="BotonesFormulario">
                                    <asp:Label ID="Label2" runat="server" Text=""></asp:Label>
                                    <asp:Button ID="Button1" OnClick="Guardar_Click1" runat="server" Text="Guardar" />
                                    <asp:Button ID="Button3" runat="server" Text="Caselar" />

                                </div>

                            </div>
                        </div>
                    </div>





                    <%--                        <div id="cuerpo" class="Tarjeta">

                            <asp:DropDownList CssClass="Tarjetados" ID="Tipo" AutoPostBack="true" runat="server">
                                <asp:ListItem Value="1">nombre</asp:ListItem>
                                <asp:ListItem Value="2">Apellido</asp:ListItem>
                                <asp:ListItem Value="3">Direccion</asp:ListItem>
                                <asp:ListItem Value="4">Tipo</asp:ListItem>
                                <asp:ListItem Value="5">Telefono</asp:ListItem>
                                <asp:ListItem Value="6">CorreoCliente</asp:ListItem>
                            </asp:DropDownList>


                            <div>
                                <asp:TextBox CssClass="Tarjetados" ID="txt_CedulaE" placeholder="ingrese la cedula" runat="server"></asp:TextBox>
                            </div>
                            <div class="textoeditar">
                                <asp:TextBox CssClass="Tarjetados" placeholder="ingrese los datos a editar" ID="txt_CosaEditar" runat="server"></asp:TextBox>
                            </div>
                            <div class="textoeditar">

                                <asp:DropDownList ID="EdicionTipo" AutoPostBack="true" runat="server"></asp:DropDownList>


                            </div>

                            <asp:Label ID="MensajeGeneral" runat="server" Text=""></asp:Label>
                            <asp:Label ID="segundoM" runat="server" Text=""></asp:Label>
                            <div class="textoeditar">
                                <asp:Button CssClass="Tarjetados" OnClick="EditarBoton_Click" ID="EditarBoton" runat="server" Text="Editar" />
                            </div>
                        </div>
                    </div>--%>
                </div>




                <div class="container">
                    <br />
                    <br />
                </div>


                <asp:UpdatePanel ID="ActualizarDataGri" runat="server">



                    <ContentTemplate>
                        <asp:Button ID="btn_buscar" runat="server" OnClick="btn_buscar_Click" Text="Buscar" Width="187px" />
                        <asp:TextBox ID="txt_cedulaBuscar" runat="server" CssClass="" Width="373px"></asp:TextBox>
                        <asp:Button ID="Btn_Recargar" runat="server" OnClick="Unnamed1_Click" Text="Recargar" Width="123px" />
                        <asp:GridView ID="GWUsuarios" runat="server" AutoGenerateColumns="False" AutoPostBack="true" CssClass="ListaDesplegable table-hover  table table-striped table-bordered" PagerSettings-Position="Top" Width="90%">

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
                            </Columns>
                        </asp:GridView>
                        <div>
                            <asp:Label ID="lbl_Anuncio" runat="server"></asp:Label>
                        </div>

                    </ContentTemplate>



                </asp:UpdatePanel>
                <div>
                </div>




            </fieldset>



        </ContentTemplate>
    </asp:UpdatePanel>




</asp:Content>
