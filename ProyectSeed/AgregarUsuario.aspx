<%@ Page Title="" Language="C#" MasterPageFile="~/semillaMaster.Master" AutoEventWireup="true" CodeBehind="AgregarUsuario.aspx.cs" Inherits="ProyectSeed.AgregarUsuario" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

    <link rel="stylesheet" href="diseno/style.css" />


</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>



    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
        <ContentTemplate>


            <fieldset>


                <div class="row" style="margin-left: 70px;">

                    <div class="col-sm-5">


                        <div class="container centro" style="margin-left: 6%">

                            <div class="card" style="width: 18rem;">
                                <div class="card-body">
                                    
                                    <asp:DropDownList ID="ListaDeTipoUsuario" runat="server"></asp:DropDownList>
                                    
                                    <div id="CuerponNiño" runat="server">
                                    <h5 class="card-title">Agregar Usuauario</h5>
                                    <h6 class="card-subtitle mb-2 text-muted center">En este formulario podran agregar Usuarios</h6>
                                    <p class="card-text"></p>
                                    </div>
                                    <center>
                                    <asp:Button ID="Btn_Guardar" runat="server" Text="Button"></asp:Button>
                                    <asp:Button ID="Btn_Cansealar" runat="server" Text="Button"></asp:Button>
                                        </center>
                                </div>
                            </div>
                        </div>

                    </div>




                </div>
            </fieldset>



        </ContentTemplate>
    </asp:UpdatePanel>

</asp:Content>
