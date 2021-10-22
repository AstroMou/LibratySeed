<%@ Page Title="" Language="C#" MasterPageFile="~/semillaMaster.Master" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="ProyectSeed.index" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

    <link href="simonpix/StylesAs.css" rel="stylesheet" />

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>



    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
        <ContentTemplate>


            <fieldset>



                <div id="carouselExampleFade" class="carousel slide carousel-fade" data-ride="carousel">
                    <div class="carousel-inner">
                        <div class="carousel-item active">
                            <img src="ImagenesAstrosi/Fondos/i01_5.jpg" class="d-block w-100" alt="400">
                        </div>



                        <div class="carousel-item">
                            <img src="ImagenesAstrosi/Fondos/IMG-20200906-WA0252.jpg" class="d-block w-100" alt="400">
                        </div>
                        <div class="carousel-item">
                            <img src="ImagenesAstrosi/Fondos/i01_5.jpg" class="d-block w-100" alt="400">
                        </div>
                    </div>
                    <a class="carousel-control-prev" href="#carouselExampleFade" role="button" data-slide="prev">
                        <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                        <span class="sr-only">Previous</span>
                    </a>
                    <a class="carousel-control-next" href="#carouselExampleFade" role="button" data-slide="next">
                        <span class="carousel-control-next-icon" aria-hidden="true"></span>
                        <span class="sr-only">Next</span>
                    </a>
                </div>



                <div id="MisioVision" class="TarjetasUnicas centrar">


                    <h1 class="Titulo Fuentes">Misión</h1>
                    <div id="tit_mis" class="centrar texto Fuentes">
                        Se centra en Ofrecer, sus servicios especialmente a aquellos en edad escolar, un espacio sano en donde encontrar cariño, asistencia educativa, libros, recursos y programas para formar buenas relaciones, tener acceso gratuito a información, estimular el pensamiento crítico, recrearse, y descubrir y desarrollar habilidades cognitivas y creativas.
La actual administración es dirigida por Anke Fängewisch proporciona un ambiente de paz y tranquilidad donde cualquier expresión de arte o sentimientos son reconocidos y no infravalorados. Cuenta con personal diversos, en su totalidad voluntarios.
                    </div>

                     <h1 class="Titulo Fuentes">Visión</h1>
                    <div id="tit_vis" class="centrar texto Fuentes">
                        Somos parte de la Fundación Semillas, Amigos de la Niñez. Promovemos, especialmente, el amor por aprender, los libros y la lectura Semillas, Bibliotecas y Centros de Aprendizaje es parte de Fundación Semillas, Amigos de la Niñez.
                    </div>
                    <h1 class="Titulo Fuentes">Premios</h1>
                    <div id="tit_prem" class="centrar texto Fuentes">
                        Cruz Roja de Nicaragua, sede Jinotepe. Por promover en la comunidad la donación de sangre voluntaria.
                        <br />
                        Libros para Niños, ONG nicaragüense. Por promover el amor por los libros y la lectura entre la niñez.
                    </div>
                </div>

             
                
            </fieldset>



        </ContentTemplate>
    </asp:UpdatePanel>




</asp:Content>
