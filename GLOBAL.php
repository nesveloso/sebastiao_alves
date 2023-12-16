<?php

// Globais
$base_url = "http://localhost/sebastiao_alves/";
$pag_atual;
$raiz = __DIR__;

function getAssets(){
    global $base_url;
    return $base_url . "assets/";
}

// Novos dados de hospedagem
$base_dados = [
    "host" => "sql202.infinityfree.com",
    "user" => "if0_35600284",
    "password" => "fqsjrodUtFHd2",
    "dbname" => "if0_35600284_escritor_alves"
];


$pdo = new PDO("mysql:host=" . $base_dados["host"] . ";dbname=" . $base_dados["database"], $base_dados["user"], $base_dados["password"]);


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