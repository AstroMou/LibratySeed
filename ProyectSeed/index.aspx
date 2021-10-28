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
                <%-- redes--%>
                <a href="https://www.facebook.com/semillasbca/" target=" _blank">
                <button type="button" class="btn btn-dark">
                    <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-facebook" viewBox="0 0 16 16">
                        <path d="M16 8.049c0-4.446-3.582-8.05-8-8.05C3.58 0-.002 3.603-.002 8.05c0 4.017 2.926 7.347 6.75 7.951v-5.625h-2.03V8.05H6.75V6.275c0-2.017 1.195-3.131 3.022-3.131.876 0 1.791.157 1.791.157v1.98h-1.009c-.993 0-1.303.621-1.303 1.258v1.51h2.218l-.354 2.326H9.25V16c3.824-.604 6.75-3.934 6.75-7.951z" />
                    </svg> Facebook
                </button>
            </a>
            <a href="https://www.instagram.com/bibliotecasemillas_diriamba/?hl=es" target="_blank">
                <button type="button" class="btn btn-dark">
                    <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-instagram" viewBox="0 0 16 16">
                        <path d="M8 0C5.829 0 5.556.01 4.703.048 3.85.088 3.269.222 2.76.42a3.917 3.917 0 0 0-1.417.923A3.927 3.927 0 0 0 .42 2.76C.222 3.268.087 3.85.048 4.7.01 5.555 0 5.827 0 8.001c0 2.172.01 2.444.048 3.297.04.852.174 1.433.372 1.942.205.526.478.972.923 1.417.444.445.89.719 1.416.923.51.198 1.09.333 1.942.372C5.555 15.99 5.827 16 8 16s2.444-.01 3.298-.048c.851-.04 1.434-.174 1.943-.372a3.916 3.916 0 0 0 1.416-.923c.445-.445.718-.891.923-1.417.197-.509.332-1.09.372-1.942C15.99 10.445 16 10.173 16 8s-.01-2.445-.048-3.299c-.04-.851-.175-1.433-.372-1.941a3.926 3.926 0 0 0-.923-1.417A3.911 3.911 0 0 0 13.24.42c-.51-.198-1.092-.333-1.943-.372C10.443.01 10.172 0 7.998 0h.003zm-.717 1.442h.718c2.136 0 2.389.007 3.232.046.78.035 1.204.166 1.486.275.373.145.64.319.92.599.28.28.453.546.598.92.11.281.24.705.275 1.485.039.843.047 1.096.047 3.231s-.008 2.389-.047 3.232c-.035.78-.166 1.203-.275 1.485a2.47 2.47 0 0 1-.599.919c-.28.28-.546.453-.92.598-.28.11-.704.24-1.485.276-.843.038-1.096.047-3.232.047s-2.39-.009-3.233-.047c-.78-.036-1.203-.166-1.485-.276a2.478 2.478 0 0 1-.92-.598 2.48 2.48 0 0 1-.6-.92c-.109-.281-.24-.705-.275-1.485-.038-.843-.046-1.096-.046-3.233 0-2.136.008-2.388.046-3.231.036-.78.166-1.204.276-1.486.145-.373.319-.64.599-.92.28-.28.546-.453.92-.598.282-.11.705-.24 1.485-.276.738-.034 1.024-.044 2.515-.045v.002zm4.988 1.328a.96.96 0 1 0 0 1.92.96.96 0 0 0 0-1.92zm-4.27 1.122a4.109 4.109 0 1 0 0 8.217 4.109 4.109 0 0 0 0-8.217zm0 1.441a2.667 2.667 0 1 1 0 5.334 2.667 2.667 0 0 1 0-5.334z" />
                    </svg> Instagram
                </button>
            </a>
                  <a href="https://yellow.place/es/semillas-bibliotecas-diriamba-nicaragua" target="_blank">
        <button type="button" class="btn btn-dark">
            <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-rainbow" viewBox="0 0 16 16">
                <path d="M8 4.5a7 7 0 0 0-7 7 .5.5 0 0 1-1 0 8 8 0 1 1 16 0 .5.5 0 0 1-1 0 7 7 0 0 0-7-7zm0 2a5 5 0 0 0-5 5 .5.5 0 0 1-1 0 6 6 0 1 1 12 0 .5.5 0 0 1-1 0 5 5 0 0 0-5-5zm0 2a3 3 0 0 0-3 3 .5.5 0 0 1-1 0 4 4 0 1 1 8 0 .5.5 0 0 1-1 0 3 3 0 0 0-3-3zm0 2a1 1 0 0 0-1 1 .5.5 0 0 1-1 0 2 2 0 1 1 4 0 .5.5 0 0 1-1 0 1 1 0 0 0-1-1z" />
            </svg> Yellow Place
        </button>
    </a>

                 <a href="https://www.google.com/maps/place/Semillas,+Biblioteca+y+Centro+de+Aprendizaje/@11.8545678,-86.2410005,17z/data=!4m13!1m7!3m6!1s0x8f741d48f393f45f:0x1a00865be91e0921!2s1ra.+Av+SO,+Diriamba!3b1!8m2!3d11.8545626!4d-86.2388118!3m4!1s0x8f741d49b03e7f31:0x2a67db940e831fca!8m2!3d11.854416!4d-86.2386651" target="_blank">
        <button type="button" class="btn btn-dark">
            <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-geo-alt-fill" viewBox="0 0 16 16">
                <path d="M8 16s6-5.686 6-10A6 6 0 0 0 2 6c0 4.314 6 10 6 10zm0-7a3 3 0 1 1 0-6 3 3 0 0 1 0 6z" />
            </svg> Google Map
        </button>
    </a>

            </fieldset>



        </ContentTemplate>
    </asp:UpdatePanel>




</asp:Content>
