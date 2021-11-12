<%@ Page Title="" Language="C#" MasterPageFile="~/semillaMaster.Master" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="ProyectSeed.index" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

    <link href="simonpix/StylesAs.css" rel="stylesheet" />

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>



    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
        <ContentTemplate>


            <fieldset style="overflow:hidden;">
               
                        <%--texto de ayuda inicio--%>
                        <div id="ayuda" class="TarjetasUnicas centrar">


                    <h1 class="Titulo Fuentes">Bienvenido al control de ayuda</h1>
                    <div id="tex1_ayuda" class="centrar texto Fuentes">
                        Este apartado será su guía de ayuda para poder comprender la interfaz del software:

                    </div>

                    <h1 class="Titulo Fuentes"></h1>
                    <div id="tex_apartado" class="centrar texto Fuentes">En la barra izquierda están los apartados como son: Inicio. Libro, Usuario, préstamo y claro el apartado de ayuda:
                    </div>
                       </div>   
                          <%--  fin de la bienbenida--%>

                            <%--inicio del acordeon--%>
                            <div class="accordion" id="accordionExample">
  <div class="card">
    <div class="card-header" id="headingOne">
      <h2 class="mb-0 Fuentes">
        <button class="btn btn-link" type="button" data-toggle="collapse" data-target="#collapseOne" aria-expanded="true" aria-controls="collapseOne">
       ➲Inicio
        </button>
      </h2>
    </div>

    <div id="collapseOne" class="collapse show" aria-labelledby="headingOne" data-parent="#accordionExample">
      <p class="card-body Fuentes">
       Cuenta con un Carrusel de imágenes con la fecha del día de su publicación, un poco de la historia como grupo Semillas Bibliotecas, la misión y visión, Incluyendo los reconocimientos que se han recibido como ONG.
          <br />
          <br />
          Para finalizar los botones con enlaces directos a las redes sociales como son: Facebook, Instagram, Yellow Place y la ubicación en el GPS (Google Map).
      </p>
    </div>
  </div>
                                </div>

                                <%--fin de inicio--%>
                               <%-- inicio de libro--%>
  <div class="card">
    <div class="card-header" id="headingTwo">
      <h2 class="mb-0 Fuentes">
        <button class="btn btn-link collapsed" type="button" data-toggle="collapse" data-target="#collapseTwo" aria-expanded="false" aria-controls="collapseTwo">
         ➲Libro
        </button>
      </h2>
    </div>
    <div id="collapseTwo" class="collapse" aria-labelledby="headingTwo" data-parent="#accordionExample">
      <div class="card-body Fuentes">
      El registro de libros de cada libro 

      </div>
    </div>
  </div>
                                <%-- fin de libro--%>
                               <%-- inicio de usuario--%>
  <div class="card">
    <div class="card-header Fuentes" id="headingThree">
      <h2 class="mb-0 Fuentes">
        <button class="btn btn-link collapsed" type="button" data-toggle="collapse" data-target="#collapseThree" aria-expanded="false" aria-controls="collapseThree">
          ➲Usuario
        </button>
      </h2>
    </div>
    <div id="collapseThree" class="collapse" aria-labelledby="headingThree" data-parent="#accordionExample">
      <p class="card-body Fuentes">
     En la parte superior derecha está el botón de agregar en color verde: Al darle clic despliega una Ventana auxiliar con los datos requeríos, en la primera fila:
          <br />
          Formulario es importante notar que se debe seleccionar el tipo de usuario ya sea adulto o niño. En las demás filas y columnas estas los campos de: El número de cédula, el teléfono, nombre, dirección, apellido, correo para poder crear un nuevo usuario; al final de la ventana auxiliar están dos botones, el de agregar y eliminar.
<br />
En esa misma parte superior derecha está el buscador, que únicamente en este aparato funciona con el número de cédula.
          <br />
Luego está la tabla con los datos de los usuarios.
          <br />
En la parte final hay dos columnas que cuentan con las filas de editar y eliminar, los cuales van a permitir editar o actualizar algún dato del usuario, al igual que poder eliminar   


      </p>
    </div>
  </div>
                                   <%-- fin de usuario--%>
                               <%-- inicio de prestamo--%>
                                <div class="card">
    <div class="card-header" id="headingTh">
      <h2 class="mb-0 Fuentes">
        <button class="btn btn-link collapsed" type="button" data-toggle="collapse" data-target="#collapseTh" aria-expanded="false" aria-controls="collapseTh">
          ➲Préstamo
        </button>
      </h2>
    </div>
    <div id="collapseTh" class="collapse" aria-labelledby="headingTh" data-parent="#accordionExample">
      <div class="card-body Fuentes">
     Dicho apartado cuenta con los movimientos
           
      </div>
    </div>
  </div>
<%-- fin de presstamo--%>
                  <%-- final del acordeon--%>
               <%-- contactos_texto--%>
                <div>
<h1 class="Titulo Fuentes"">En caso de problemas a nivel de programación contáctanos</h1>
                </div>

               <%-- contactos_botones--%>
<<<<<<< HEAD
<div class="mx" style="width: 200px;">
     <a href="https://mail.google.com/mail/u/0/?tab=rm#search/jhostin.cruz12346%40gmail.com?compose=new" target=" _blank">
=======




                <a href="https://mail.google.com/mail/u/0/?tab=rm#search/jhostin.cruz12346%40gmail.com?compose=new" target=" _blank">
>>>>>>> a045013011b72c5444b71a6904598419db61d29c
                    <button type="button" class="btn btn-dark">
                        <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-envelope-fill" viewBox="0 0 16 16">
  <path d="M.05 3.555A2 2 0 0 1 2 2h12a2 2 0 0 1 1.95 1.555L8 8.414.05 3.555zM0 4.697v7.104l5.803-3.558L0 4.697zM6.761 8.83l-6.57 4.027A2 2 0 0 0 2 14h12a2 2 0 0 0 1.808-1.144l-6.57-4.027L8 9.586l-1.239-.757zm3.436-.586L16 11.801V4.697l-5.803 3.546z"/>
</svg>
                       
                    </button>
                </a>
</div>
<br />
        <%-- fin de btn  --%>  
                                <%--inicio btn --%> 
                                <div class="mx" style="width: 200px;">
      <a href="https://www.instagram.com/de_la_cruzyt/?hl=es" target="_blank">
                    <button type="button" class="btn btn-dark">
                        <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-instagram" viewBox="0 0 16 16">
                            <path d="M8 0C5.829 0 5.556.01 4.703.048 3.85.088 3.269.222 2.76.42a3.917 3.917 0 0 0-1.417.923A3.927 3.927 0 0 0 .42 2.76C.222 3.268.087 3.85.048 4.7.01 5.555 0 5.827 0 8.001c0 2.172.01 2.444.048 3.297.04.852.174 1.433.372 1.942.205.526.478.972.923 1.417.444.445.89.719 1.416.923.51.198 1.09.333 1.942.372C5.555 15.99 5.827 16 8 16s2.444-.01 3.298-.048c.851-.04 1.434-.174 1.943-.372a3.916 3.916 0 0 0 1.416-.923c.445-.445.718-.891.923-1.417.197-.509.332-1.09.372-1.942C15.99 10.445 16 10.173 16 8s-.01-2.445-.048-3.299c-.04-.851-.175-1.433-.372-1.941a3.926 3.926 0 0 0-.923-1.417A3.911 3.911 0 0 0 13.24.42c-.51-.198-1.092-.333-1.943-.372C10.443.01 10.172 0 7.998 0h.003zm-.717 1.442h.718c2.136 0 2.389.007 3.232.046.78.035 1.204.166 1.486.275.373.145.64.319.92.599.28.28.453.546.598.92.11.281.24.705.275 1.485.039.843.047 1.096.047 3.231s-.008 2.389-.047 3.232c-.035.78-.166 1.203-.275 1.485a2.47 2.47 0 0 1-.599.919c-.28.28-.546.453-.92.598-.28.11-.704.24-1.485.276-.843.038-1.096.047-3.232.047s-2.39-.009-3.233-.047c-.78-.036-1.203-.166-1.485-.276a2.478 2.478 0 0 1-.92-.598 2.48 2.48 0 0 1-.6-.92c-.109-.281-.24-.705-.275-1.485-.038-.843-.046-1.096-.046-3.233 0-2.136.008-2.388.046-3.231.036-.78.166-1.204.276-1.486.145-.373.319-.64.599-.92.28-.28.546-.453.92-.598.282-.11.705-.24 1.485-.276.738-.034 1.024-.044 2.515-.045v.002zm4.988 1.328a.96.96 0 1 0 0 1.92.96.96 0 0 0 0-1.92zm-4.27 1.122a4.109 4.109 0 1 0 0 8.217 4.109 4.109 0 0 0 0-8.217zm0 1.441a2.667 2.667 0 1 1 0 5.334 2.667 2.667 0 0 1 0-5.334z" />
                        </svg>
                      
                    </button>
                </a>
<<<<<<< HEAD
</div>
 <br />                              
   <%-- fin de btn  --%>  
                                <%--inicio btn --%> 
<div class="mx" style="width: 200px;">
<a href="https://mail.google.com/mail/u/0/?tab=rm#search/leo456garcia%40gmail.com" target="_blank">
=======

                                
                <a href="https://mail.google.com/mail/u/0/?tab=rm#search/leo456garcia%40gmail.com" target="_blank">
>>>>>>> a045013011b72c5444b71a6904598419db61d29c
                    <button type="button" class="btn btn-dark">
                        <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-envelope-fill" viewBox="0 0 16 16">
  <path d="M.05 3.555A2 2 0 0 1 2 2h12a2 2 0 0 1 1.95 1.555L8 8.414.05 3.555zM0 4.697v7.104l5.803-3.558L0 4.697zM6.761 8.83l-6.57 4.027A2 2 0 0 0 2 14h12a2 2 0 0 0 1.808-1.144l-6.57-4.027L8 9.586l-1.239-.757zm3.436-.586L16 11.801V4.697l-5.803 3.546z"/>
</svg>
<<<<<<< HEAD
                       
=======
                        
                        Leopoldo Baltodano
>>>>>>> a045013011b72c5444b71a6904598419db61d29c
                    </button>
                </a>
</div>
<br />
                
                                   <%-- fin de btn  --%>  
                                <%--inicio btn --%> 
                                <div class="mx" style="width: 200px;">
<a href="https://www.instagram.com/astro_lly/?hl=es" target="_blank">
                    <button type="button" class="btn btn-dark">
                        <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-instagram" viewBox="0 0 16 16">
                            <path d="M8 0C5.829 0 5.556.01 4.703.048 3.85.088 3.269.222 2.76.42a3.917 3.917 0 0 0-1.417.923A3.927 3.927 0 0 0 .42 2.76C.222 3.268.087 3.85.048 4.7.01 5.555 0 5.827 0 8.001c0 2.172.01 2.444.048 3.297.04.852.174 1.433.372 1.942.205.526.478.972.923 1.417.444.445.89.719 1.416.923.51.198 1.09.333 1.942.372C5.555 15.99 5.827 16 8 16s2.444-.01 3.298-.048c.851-.04 1.434-.174 1.943-.372a3.916 3.916 0 0 0 1.416-.923c.445-.445.718-.891.923-1.417.197-.509.332-1.09.372-1.942C15.99 10.445 16 10.173 16 8s-.01-2.445-.048-3.299c-.04-.851-.175-1.433-.372-1.941a3.926 3.926 0 0 0-.923-1.417A3.911 3.911 0 0 0 13.24.42c-.51-.198-1.092-.333-1.943-.372C10.443.01 10.172 0 7.998 0h.003zm-.717 1.442h.718c2.136 0 2.389.007 3.232.046.78.035 1.204.166 1.486.275.373.145.64.319.92.599.28.28.453.546.598.92.11.281.24.705.275 1.485.039.843.047 1.096.047 3.231s-.008 2.389-.047 3.232c-.035.78-.166 1.203-.275 1.485a2.47 2.47 0 0 1-.599.919c-.28.28-.546.453-.92.598-.28.11-.704.24-1.485.276-.843.038-1.096.047-3.232.047s-2.39-.009-3.233-.047c-.78-.036-1.203-.166-1.485-.276a2.478 2.478 0 0 1-.92-.598 2.48 2.48 0 0 1-.6-.92c-.109-.281-.24-.705-.275-1.485-.038-.843-.046-1.096-.046-3.233 0-2.136.008-2.388.046-3.231.036-.78.166-1.204.276-1.486.145-.373.319-.64.599-.92.28-.28.546-.453.92-.598.282-.11.705-.24 1.485-.276.738-.034 1.024-.044 2.515-.045v.002zm4.988 1.328a.96.96 0 1 0 0 1.92.96.96 0 0 0 0-1.92zm-4.27 1.122a4.109 4.109 0 1 0 0 8.217 4.109 4.109 0 0 0 0-8.217zm0 1.441a2.667 2.667 0 1 1 0 5.334 2.667 2.667 0 0 1 0-5.334z" />
                        </svg>
                        
                    </button>
                </a>
</div>
<br />
                
            </fieldset>



        </ContentTemplate>
    </asp:UpdatePanel>




</asp:Content>
