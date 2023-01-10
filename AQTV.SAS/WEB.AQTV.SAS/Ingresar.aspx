<%@ Page Title="" Language="C#" MasterPageFile="~/Principal.Master" AutoEventWireup="true" CodeBehind="Ingresar.aspx.cs" Inherits="WEB.AQTV.SAS.WebForm9" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">



    <div class="bgded overlay" style="background-image: url('images/demo/backgrounds/01.png');">
        <div id="pageintro" class="hoc clear">
            <div class="flexslider basicslider">
                <ul class="slides">
                    <li>
                        <article>
                            <footer>
                                <asp:TextBox ID="UsuarioTextBox" runat="server" class="btn" placeholder="User"> </asp:TextBox>
                                <asp:TextBox ID="PasswordTextBox" runat="server" class="btn" placeholder="Password"></asp:TextBox>

                                <asp:Button ID="btnAceptar_Click" runat="server" Text="Ingresar" OnClick="btnAceptar_Click_Click" class="btn" />
                                <asp:Button ID="CreacionUserButton" runat="server" Text="Creación de usuarios" OnClick="btnAceptar_Click_Click" class="btn" PostBackUrl="~/CreacionUsuarios.aspx" />

                            </footer>
                            <strong>
                                <asp:Label ID="MensajeLabel" runat="server" Text="" CssClass="auto-style1" placeholder="Introducir usuario y contraña"></asp:Label>
                            </strong>
                        </article>
                    </li>
                </ul>
            </div>
        </div>
    </div>



    <!-- About Section -->
    <section id="about" class="about-section text-center">
        <div class="container">
            <asp:Image ID="Iogo" runat="server" Height="300px" ImageUrl="~/Imagenes/Logo.png" />
            <div class="row">
                <div class="col-lg-8 mx-auto">
                    <h2 class="text-white mb-4">Comunicación sin barreras</h2>
                    <h2 class="text-white mb-4">Visión</h2>
                    <p class="text-white-50">
                        » La visión de la empresa como tal es a 10 años tener como mínimo 3 sucursales con su infraestructura propia y que estas 
                      cuenten con totas las herramientas tecnológicas que les permita proyectarse regional, nacional e internacionalmente. 
                      De igual forma contar por lo menos con un número suficiente de vehículos que nos permita como empresa responder
                      oportunamente al momento de satisfacer las necesidades y requerimientos de los usuarios o clientes. Contar con 
                      personal debidamente capacitado en Análisis y Sistemas de Información, que nos brinden como empresa las garantías y
                      la mejor imagen en el campo empresarial. Contar con un buen sistema contable que que nos permita agilizar y 
                      optimizar todas las actividades financieras de la empresa.
                    </p>
                    <h2 class="text-white mb-4">Misión</h2>
                    <p class="text-white-50">
                        » Como misión la empresa AQTVSAS tiene, solucionar las necesidades de la gran mayoría de usuarios tanto del sector 
                        público, como del sector privado a través de los productos y servicios ofrecidos como lo son:
                    </p>
                    <h4 class="text-white mb-1">• Internet</h4>
                    <h4 class="text-white mb-1">• Televisión satelital</h4>
                    <h4 class="text-white mb-1">• Dotación e instalación de cámaras de seguridad</h4>
                    <h4 class="text-white mb-1">• Energía solar y eólica</h4>
                    <h4 class="text-white mb-1">• Todo lo concerniente a servicios de electricidad..</h4>
                </div>
            </div>
            <img src="img/ipad.jpeg" class="img-fluid" alt="">
        </div>
    </section>

    <!-- Projects Section -->
    <section id="projects" class="projects-section bg-light">
        <div class="container">

            <!-- Featured Project Row -->
            <div class="row align-items-center no-gutters mb-4 mb-lg-5">
                <div class="col-xl-8 col-lg-7">
                    <img class="img-fluid mb-3 mb-lg-0" src="img/bg-mastheadd.jpeg" alt="">
                </div>
                <div class="col-xl-4 col-lg-5">
                    <div class="featured-text text-center text-lg-left">
                        <h4>La palabra imposible solo existe en el diccionario.</h4>
                        <p class="text-black-50 mb-0">Grayscale is open source and MIT licensed. This means you can use it for any project - even commercial projects! Download it, customize it, and publish your website!</p>
                    </div>
                </div>
            </div>

            <!-- Project One Row -->
            <div class="row justify-content-center no-gutters mb-5 mb-lg-0">
                <div class="col-lg-6">
                    <img class="img-fluid" src="img/demo-imagee-01.jpeg" alt="">
                </div>
                <div class="col-lg-6">
                    <div class="bg-black text-center h-100 project">
                        <div class="d-flex h-100">
                            <div class="project-text w-100 my-auto text-center text-lg-left">
                                <h4 class="text-white">No importa las distancias</h4>
                                <p class="mb-0 text-white-50">An example of where you can put an image of a project, or anything else, along with a description.</p>
                                <hr class="d-none d-lg-block mb-0 ml-0">
                            </div>
                        </div>
                    </div>
                </div>
            </div>

            <!-- Project Two Row -->
            <div class="row justify-content-center no-gutters">
                <div class="col-lg-6">
                    <img class="img-fluid" src="img/demo-imagee-02.jpeg" alt="">
                </div>
                <div class="col-lg-6 order-lg-first">
                    <div class="bg-black text-center h-100 project">
                        <div class="d-flex h-100">
                            <div class="project-text w-100 my-auto text-center text-lg-right">
                                <h4 class="text-white">Retos que superamos a diario</h4>
                                <p class="mb-0 text-white-50">Another example of a project with its respective description. These sections work well responsively as well, try this theme on a small screen!</p>
                                <hr class="d-none d-lg-block mb-0 mr-0">
                            </div>
                        </div>
                    </div>
                </div>
            </div>

        </div>
    </section>

    <!-- Signup Section -->
    <section id="signup" class="signup-section">
        <div class="container">
            <div class="row">
                <div class="col-lg-8 mx-auto">
                    <h2 class="text-white mb-4">Comunicación sin barreras</h2>
                    <h2 class="text-white mb-4">Direción y teléfono</h2>
                    <p class="text-white-50">Nos pueden contactar en el celular:</p>
                    <p class="text-white-50">• 3508232025 o al 3218893395</p>
                    <p class="text-white-50">• En la dirección: Calle Cordoba 21 - 30</p>
                    <p class="text-white-50">• Amalfi antioquia.</p>

                    <h2 class="text-white mb-4">Horarios de atención al publico</h2>
                    <p class="text-white-50">Nos encuentra de las 9 am a 6 pm, para brindarle los siguiente servicios:   </p>
                    <p class="text-white-50">• todo lo relacionado con energía solar </p>
                    <p class="text-white-50">• televisión pospago y prepago</p>
                    <p class="text-white-50">• internet satelital y circuito de cámaras de seguridad.</p>

                </div>
            </div>
        </div>
    </section>

    <!-- Contact Section -->
    <section class="contact-section bg-black">
        <div class="container">
            <div class="row">
                <div class="col-md-4 mb-3 mb-md-0">
                    <div class="card py-4 h-100">
                        <div class="card-body text-center">
                            <i class="fas fa-map-marked-alt text-primary mb-2"></i>
                            <h4 class="text-uppercase m-0">Dirección</h4>
                            <hr class="my-4">
                            <div class="small text-black-50">Calle Cordoba 21 - 30</div>
                        </div>
                    </div>
                </div>

                <div class="col-md-4 mb-3 mb-md-0">
                    <div class="card py-4 h-100">
                        <div class="card-body text-center">
                            <i class="fas fa-envelope text-primary mb-2"></i>
                            <h4 class="text-uppercase m-0">Correo</h4>
                            <hr class="my-4">
                            <div class="small text-black-50">
                                <a href="#">aqtv.sas@gmail.com</a>
                            </div>
                        </div>
                    </div>
                </div>

                <div class="col-md-4 mb-3 mb-md-0">
                    <div class="card py-4 h-100">
                        <div class="card-body text-center">
                            <i class="fas fa-mobile-alt text-primary mb-2"></i>
                            <h4 class="text-uppercase m-0">Celular</h4>
                            <hr class="my-4">
                            <div class="small text-black-50">+57 350-823-20-25  -   321-889-33-95</div>
                        </div>
                    </div>
                </div>
            </div>

            <div class="social d-flex justify-content-center">
                <a href="#" class="mx-2">
                    <i class="fab fa-twitter"></i>
                </a>
                <a href="#" class="mx-2">
                    <i class="fab fa-facebook-f"></i>
                </a>
                <a href="#" class="mx-2">
                    <i class="fab fa-github"></i>
                </a>
            </div>

        </div>
    </section>



</asp:Content>
