<%@ Page Title="" Language="C#" MasterPageFile="~/semillaMaster.Master" AutoEventWireup="true" CodeBehind="Usuario.aspx.cs" Inherits="ProyectSeed.Usuario" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

    <link rel="stylesheet" href="diseno/style.css" />


</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>



    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
        <ContentTemplate>


            <fieldset>


                <div class="row">

                    <div class="col-sm-5">


                        <div class="container centro" style="margin-left: 6%">

                            <div class="card" style="width: 18rem;">
                                <div class="card-body">
                                    <h5 class="card-title">Agregar Usuauario</h5>
                                    <h6 class="card-subtitle mb-2 text-muted">En este formulario podran agregar Usuarios</h6>
                                    <p class="card-text"></p>

                                    <asp:Button ID="Btn_Guardar" runat="server" Text="Button"></asp:Button>
                                    <asp:Button ID="Btn_Cansealar" runat="server" Text="Button"></asp:Button>

                                </div>
                            </div>
                        </div>

                    </div>




                </div>
            </fieldset>



        </ContentTemplate>
    </asp:UpdatePanel>

</asp:Content>
