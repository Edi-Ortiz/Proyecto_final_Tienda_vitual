<!DOCTYPE html>
    <html>
        <head>
            <meta charset="utf-8" />
            <title>{{page_title}}</title>
            <meta name="viewport" content="width=device-width, initial-scale=1"/>
            <link rel="stylesheet" href="//code.ionicframework.com/ionicons/2.0.1/css/ionicons.min.css">
            <link rel="stylesheet" href="public/css/papier.css" />
            <link rel="stylesheet" href="public/css/estilo.css" />
            <link rel="stylesheet" href="public/css/principalsacra.css" />

            <script src="public/js/jquery.min.js"></script>
            <script src="https://code.iconify.design/1/1.0.5/iconify.min.js"></script>

            {{foreach css_ref}}
                <link rel="stylesheet" href="{{uri}}" />
            {{endfor css_ref}}
        </head>
        <body>
            <div class="menu">
                <div class="brand">{{page_title}}</div>
                <ul>
                    {{if notifnum}}
                    <li><a href="index.php?page=notificacion">
                      <span class="ion-android-notifications">&nbsp;{{notifnum}}</span></a>
                    </li>
                    {{endif notifnum}}
                    {{foreach appmenu}}
                      <li><a href="index.php?page={{mdlprg}}">{{mdldsc}}</a></li>
                    {{endfor appmenu}}
                    <!-- Icono carrito de compra. Si se agrega un producto se aumenta el contador y se muestra la cantidad.
                                                Como es la vista privada del menu, si le da clic activa el controlador de carretilla autenticada -->
                    {{if cartEntries}}
                    <li><a href="index.php?page=cartAut"><span class="ion-ios-cart"></span> <span
                                id="cartcounter">{{cartEntries}}</span></a></li>
                    {{endif cartEntries}}
                    <li><a href="index.php?page=logout">Cerrar Sesión</a></li>
                </ul>
                <div class="hbtn"> <div>&nbsp;</div><div>&nbsp;</div><div>&nbsp;</div></div>
            </div>
            <div class="contenido">
                {{{page_content}}}
            </div>

            <div class="footer">
                &copy; 2021, Todos los Derechos Reservados - | Tiendax |
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
