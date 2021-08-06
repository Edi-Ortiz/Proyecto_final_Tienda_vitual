<?php

/**
 * Controlador Pagina Oficina Dazie
 * 
 * @return void
 */

 function run()
 {
    $arrViewData = array();

    $arrViewData['page_title'] = "Oficina Tiendax";
    addJsRef("public/js/main.js");

    //Añadir linea debajo de la pestaña que esta seleccionada en el menu
    addToContext("index","");
    addToContext("nosotros","");
    addToContext("mujeres","");
    addToContext("hombres","");
    addToContext("servicios","active");
    addToContext("home","");
    addToContext("login","");
    addToContext("register","");
    addToContext("cart","");

    renderizar("webshop/servicios/oficina", $arrViewData);
 }  

 run();

?>