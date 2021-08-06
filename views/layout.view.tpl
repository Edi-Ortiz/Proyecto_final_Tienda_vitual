<!DOCTYPE html>
    <html>
        <head>
            <meta charset="utf-8" />
            <title>{{page_title}}</title>
            <meta http-equiv="X-UA-Compatible" content="ie=edge">
            <meta name="viewport" content="width=device-width, initial-scale=1"/>
            <link href="https://fonts.googleapis.com/css?family=Montserrat" rel="stylesheet">
            <link rel="stylesheet" href="//code.ionicframework.com/ionicons/2.0.1/css/ionicons.min.css">


            <link href="https://fonts.googleapis.com/css?family=Roboto:100,300,400,700&display=swap" rel="stylesheet">
            <link rel="shortcut icon" href="public/imgs/jesus.png" type="image/x-icon">
            <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,400,700,800&display=swap" rel="stylesheet">
            <link href="https://fonts.googleapis.com/css?family=Bebas+Neue|Poppins|Righteous&display=swap" rel="stylesheet">
            <link href="https://unpkg.com/aos@2.3.1/dist/aos.css" rel="stylesheet">
            <link href="https://fonts.googleapis.com/css?family=Raleway:300,400,700,800" rel="stylesheet">
            <link rel='stylesheet' href='http://fonts.googleapis.com/css?family=PT+Sans:400,700'>
            <script src="https://kit.fontawesome.com/15ee787164.js" crossorigin="anonymous"></script>
            <link rel="stylesheet" href="public/css/papier.css" />
            <!-- <link rel="stylesheet" href="public/css/estilo.css" /> -->
            <link rel="stylesheet" href="public/css/estilos.css" />
            <link rel="stylesheet" href="public/css/grid.css" />
            <link rel="stylesheet" href="public/css/principalsacra.css" />
            <link rel="stylesheet" href="public/css/stylemujereso.css" />
             
            <script src="https://unpkg.com/aos@2.3.1/dist/aos.js"></script>
            <script src="https://kit.fontawesome.com/c15b744a04.js" crossorigin="anonymous"></script>
            <script src="public/js/jquery.min.js"></script>
            <script src="https://code.iconify.design/1/1.0.5/iconify.min.js"></script>
            
            {{foreach css_ref}}
                <link rel="stylesheet" href="{{uri}}" />
            {{endfor css_ref}}


        </head>
        <body>

          <!-- Inicia el Menu -->
          <header>
            <nav>
                <section class="contenedor nav">
                      
                    <div style="width:300px;display:flex;    flex-Dirección:row;align-items:center" >
                    <i class="fab fa-google-wallet" style="font-size:40px; color:white;margin-right:10px">  </i>
                    <h2 style="font-weight: bold;color:white">TIENDAX</h2>
                    </div>
                    
                    <div class="enlaces-header"> <!-- Las clases se reeemplazan por lo que traen los controladores para saber si esta active o no -->
                        <a href="index.php?page=index" class="{{index}}">Inicio</a>
                        <a href="index.php?page=nosotros" class="{{nosotros}}">Sobre Nosotros</a>
                        <a href="index.php?page=mujeres" class="{{mujeres}}">Mujeres</a>
                        <a href="index.php?page=hombres" class="{{hombres}}">Hombres</a>
                        <a href="index.php?page=servicios" class="{{servicios}}">Servicios</a>
                        <a href="index.php?page=home" class="{{home}}">Catálogo</a>
                        <a href="index.php?page=login" class="{{login}}">Iniciar Sesión</a>
                        <a href="index.php?page=register" class="{{register}}">Crear Cuenta</a>
                        <!-- Icono carrito de compra. Si se agrega un producto se aumenta el contador y se muestra la cantidad.
                             Como es la vista publica del menu, si le da clic activa el controlador de carretilla anonima -->
                        {{if cartEntries}}
                            <a href="index.php?page=cartAnon" class="{{cart}}"><span class="ion-ios-cart"></span> <span id="cartcounter">{{cartEntries}}</span></a>
                        {{endif cartEntries}}
                    </div>
                    <div class="hamburguer">
                        <i class="fas fa-bars"></i>
                    </div>
                </section>
            </nav>
        </header>

          <!-- termina el menu -->

            <div class="contenido">
                {{{page_content}}}
            </div>

            <div class="footer">
                    <div class="footer-container">
                        <div class="footer-main">
                            <div class="footer-columna">
                                    <h3>Propietario</h3>
                                <p> 
                                    <b>Axl Lara</b>
                                    <br/>
                                    
                                </p>
                                </div>
                            <div class="footer-columna">
                                <h3> Dirección</h3>
                                <span class="fas fa-map-marker"><p>col. Cerro grande zona 4</p></span>
                                <span class="fas fa-phone"><p>(+504) 3333-3333 </p></span>
                                <span class="fas fa-envelope"><p>tiendax@gmail.com/p></span>
                                <span class="fas fa-mobile-alt"><p>(+504) 2222-2222</p></span>
                            </div> 
                            
                        </div>
                    </div>
                </div class="go-top-button">
                </div class="contenedor"></div> 
                
                <div class="footer-copy-redes">
                    <div class="main-copy-redes">
                        <div class="footer-copy">
                            <p >&copy; 2021, Todos los Derechos Reservados - | Tienda de Modax |</p>
                
                        </div>
                        <div class="footer-redes" >
                
                            <a href=""  class="fab fa-facebook" id="facebook" target="_blank"></a>
                            <a href="" class="fab fa-twitter" id="twitter" target="_blank"></a>
                            <a href="" class="fab fa-youtube" id="youtube" target="_blank"></a>
                            <a href="" class="fab fa-instagram-square" id="instagram" target="_blank"></a>
                            
                        </div>
                    </div> 
                </div>
            </div>

            
            {{foreach js_ref}}
                <script src="{{uri}}"></script>
            {{endfor js_ref}}
            <script>
              $().ready(function(e){
                $(".hbtn").click(function(e){
                  e.preventDefault();
                  e.stopPropagation();
                  $(".menu").toggleClass('open');
                  });
              });
            </script>
        </body>
    </html>
