<?php

// Globais
$base_url = "https://happening-builders.000webhostapp.com/";
$pag_atual;
$raiz = __DIR__;

function getAssets(){
    global $base_url;
    return $base_url . "assets/";
}

// Novos dados de hospedagem
$base_dados = [
    "host" => "localhost",
    "user" => "id21684629_admin",
    "password" => "",
    "database" => "id21684629_sebastiao_alves_bd"
];

$pdo = new PDO("mysql:host=" . $base_dados["host"] . ";port=" . $base_dados["port"] . ";dbname=" . $base_dados["database"], $base_dados["user"], $base_dados["password"]);

//Funçoes
function selectSQL($sql){
    global $pdo;
    $query = $pdo->query($sql);
    return $query->fetchAll(PDO::FETCH_ASSOC);
}

function selectSQLUnico($sql){
    global $pdo;
    $query = $pdo->query($sql);
    return $query->fetch(PDO::FETCH_ASSOC);
}

function iduSQL($sql){
    global $pdo;
    $pdo->query($sql);
}

?>
