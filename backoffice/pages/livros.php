<?php

verificarLogin();

$livros = getTodosLivros();

?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="<?= getAssets(); ?>/css/backoffice.css">
    <title>Backoffice</title>
</head>
<body>

    <h1>Backoffice (LIVROS)</h1>

    <nav>
    <a class="<?= ($pag_atual == "inicio") ? "active" : ""; ?>" href="../backoffice/inicio.php">Início</a>
        <a class="<?= ($pag_atual == "carousel") ? "active" : ""; ?>" href="../backoffice/carousel.php">Carousel</a>
        <a class="<?= ($pag_atual == "home") ? "active" : ""; ?>" href="../backoffice/home.php">Home</a>
        <a class="<?= ($pag_atual == "autor") ? "active" : ""; ?>" href="../backoffice/autor.php">Autor</a>
        <a class="<?= ($pag_atual == "livros") ? "active" : ""; ?>" href="../backoffice/livros.php">Livros</a>
        <a class="<?= ($pag_atual == "destaques") ? "active" : ""; ?>" href="../backoffice/destaques.php">Destaques</a>
        <a class="<?= ($pag_atual == "contactos") ? "active" : ""; ?>" href="../backoffice/contactos.php">Contactos</a>
        <a class="<?= ($pag_atual == "redes") ? "active" : ""; ?>" href="../backoffice/redes.php">Redes</a>
        <a class="<?= ($pag_atual == "configuracoes") ? "active" : ""; ?>" href="../backoffice/configuracoes.php">Configurações</a>
        <a class="<?= ($pag_atual == "sair") ? "active" : ""; ?>" href="../backoffice/sair.php">Sair</a>
    </nav>

    <div class="quadro">
        
        <table>
            <tr>
                <th>IMAGEM</th>
                <th>TÍTULO</th>
                <th>TEXTO</th>
                <th>DATA ATUALIZAÇÃO</th>
                <th>ACÇÕES</th>
            </tr>

            <?php foreach($livros as $l): ?>

                <tr>
                    <td><img src="<?= $l["imagem"]; ?>" alt="Capa Livro"></td>
                    <td><?= $l["titulo"]; ?></td>
                    <td><?= substr($l["texto"], 0, 100) . "..."; ?></td>
                    <td><?= $l["data_atualizacao"]; ?></td>
                    <td>
                        <a href="../backoffice/actions/livros-center.php?editar=<?= $l["id"]; ?>">Editar</a>
                        <br>
                        <a href="../backoffice/actions/livros-center.php?deletar=<?= $l["id"]; ?>">Deletar</a>
                    </td>
                </tr>

            <?php endforeach; ?>

        </table>
        
        <br>
        <hr>
        <br>

        <a href="../backoffice/actions/livros-center.php">
            <button class="botoes">Criar Novo LIVRO</button>
        </a>
    </div>
    
</body>
</html>