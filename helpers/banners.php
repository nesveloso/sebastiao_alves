<?php

function getBannersDesktop(){
    $sql = "SELECT * FROM banners_desktop";
    $resultado = selectSQL($sql);
    for($i=0; $i<count($resultado); $i++){
        if(strlen($resultado[$i]["subtitulo"]) > 250){
            $resultado[$i]["subtitulo"] = substr($resultado[$i]["subtitulo"], 0, 250) . "...";
        }
    }
    return $resultado;
}

function getBannersDesktopEspecifico($id){
    $sql = "SELECT * FROM banners_desktop WHERE id=$id";
    $resultado = selectSQLUnico($sql);
    return $resultado;
}

function getBannersMobile(){
    $sql = "SELECT * FROM banners_mobile";
    $resultado = selectSQL($sql);
    
    for($i=0; $i<count($resultado); $i++){
        if(strlen($resultado[$i]["subtitulo"]) > 250){
            $resultado[$i]["subtitulo"] = substr($resultado[$i]["subtitulo"], 0, 250) . "...";
        }
    }
    return $resultado;
}

function getBannersMobileEspecifico($id){
    $sql = "SELECT * FROM banners_mobile WHERE id=$id";
    $resultado = selectSQLUnico($sql);
    return $resultado;
}

?>