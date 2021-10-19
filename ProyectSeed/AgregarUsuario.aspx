<%@ Page Title="" Language="C#" MasterPageFile="~/semillaMaster.Master" AutoEventWireup="true" CodeBehind="AgregarUsuario.aspx.cs" Inherits="ProyectSeed.AgregarUsuario" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

    <link rel="stylesheet" href="diseno/style.css" />


    <script>

        function openModal() {
            $('#Guardar').modal('show');
            $('#Alerta').show();
        }


        //Idiomas con el 1er método   

    </script>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>



    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
        <ContentTemplate>


            <fieldset class="Ajuste" style="overflow: hidden;">


                <div class="row Magenes">
                    <div class="col-sm-6">




                        <div class="Tarjeta">


                            <div class="centro">
                                <asp:DropDownList ID="ListaDeTipoUsuario" runat="server" AutoPostBack="true"></asp:DropDownList>
                            </div>

                            <h5>
                                <asp:Label ID="Titulo" runat="server" Text="Label"></asp:Label></h5>

                            <div id="CuerpoDeAgregar" runat="server">


                                <div class="row">
                                    <div class="col-md-6">
                                        <p>cedula</p>
                                        <asp:TextBox ID="txt_Cedula" runat="server"></asp:TextBox>
                                        <p>Nombre  </p>
                                        <asp:TextBox ID="Txt_Nombre" runat="server"></asp:TextBox>
                                        <p>Apellido</p>
                                        <asp:TextBox ID="Txt_Apellido" runat="server"></asp:TextBox>

                                    </div>
                                    <div class="col-md-6">


                                        <p>telefono </p>
                                        <asp:TextBox ID="Txt_Telefono" runat="server"></asp:TextBox>
                                        <p>Direccion</p>
                                        <asp:TextBox ID="Txt_Direccion" runat="server"></asp:TextBox>
                                        <p>Correo</p>
                                        <asp:TextBox ID="Txt_Correo" CssClass="UltimoMargen" runat="server"></asp:TextBox>

                                    </div>

                                </div>

                                <div class="BotonesFormulario">
                                    
                                    <asp:Button ID="Button1" runat="server" Text="Guardar" />
                                    <asp:Button ID="Button2" runat="server" Text="Caselar" />

                                </div>

                            </div>
                        </div>
                    </div>

                    <div class="col-sm-4">

                        <div id="Botones" class="BotonesPrincipales">


                            <button type="button" data-toggle="collapse" data-target="#EditarU" aria-expanded="false" aria-controls="collapseExample">Editar</button>
                            <button type="button" data-toggle="collapse" data-target="#EliminarU" aria-expanded="false" aria-controls="collapseExample">Eliminar</button>



                            <div class="collapse" id="EditarU">
                                <div class="card card-body">
                                    Editar
                                </div>
                            </div>

                            <div class="collapse" id="EliminarU">
                                <div class="card card-body">
                                    Eliminar
                                </div>
                            </div>



                        </div>
                    </div>


                </div>















                <asp:GridView ID="GWUsuarios" CssClass="ListaDesplegable table-hover  table table-striped table-bordered" AutoGenerateColumns="false" runat="server" PagerSettings-Position="Top" Width="90%">
                    <Columns>
                        <asp:BoundField DataField="ID_USUARIO" HeaderText="Cedula">
                            <HeaderStyle CssClass="bg-primary" ForeColor="White"></HeaderStyle>
                        </asp:BoundField>
                        <asp:BoundField DataField="Tipo_Usuario" HeaderText="Tipo"></asp:BoundField>
                        <asp:BoundField DataField="Nom_usuario" HeaderText="Nombre Del Usuario"></asp:BoundField>
                        <asp:BoundField DataField="Apell_usuario" HeaderText="Apellido Del Cliente"></asp:BoundField>
                        <asp:BoundField DataField="Telef_usuario" HeaderText="Telefono Del Cliente"></asp:BoundField>
                        <asp:BoundField DataField="Dirrec_usuario" HeaderText="Direccion Del Cliente"></asp:BoundField>
                        <asp:BoundField DataField="Correo_usuario" HeaderText="Correo Del Usuario"></asp:BoundField>

                    </Columns>

                </asp:GridView>






            </fieldset>



        </ContentTemplate>
    </asp:UpdatePanel>




</asp:Content>
