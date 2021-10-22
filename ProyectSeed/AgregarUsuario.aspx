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

                    <div class="col-sm-4">






                        <div id="cuerpo" class="Tarjeta">

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
                                <asp:Button CssClass="Tarjetados" ID="Button1" runat="server" Text="Button" />
                            </div>
                        </div>
                    </div>
                </div>



                











                <asp:GridView ID="GWUsuarios" CssClass="ListaDesplegable table-hover  table table-striped table-bordered" AutoGenerateColumns="False" runat="server" PagerSettings-Position="Top" Width="90%">
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
