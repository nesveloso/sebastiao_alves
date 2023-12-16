var menu_mobile_aberto = false;

function menuMobile(){
    let nav_mobile = document.getElementById("nav-mobile");
    if(!menu_mobile_aberto){
        nav_mobile.classList.add("active");
        menu_mobile_aberto = true;
    }

    let intervalo = setInterval(() => {
        let dropdown_menu = document.getElementById("navbarNav");
        let activo = dropdown_menu.classList.contains("show");
        let botao_mobile = document.getElementById("botao-menu-mobile");
        if(activo){
            botao_mobile.src = base_url_assets + "imagens/desktop/fechar.svg";
        }
        else{
            botao_mobile.src = base_url_assets + "imagens/desktop/menu.svg";
            nav_mobile.classList.remove("active");
            menu_mobile_aberto = false;
        }
        clearInterval(intervalo);
    }, 500);
}

function clickLivrosFooter(){
    setTimeout(() => {$("#botao-livros").dropdown('toggle');}, 750);
}

function voltarAtras(){
    window.history.back();
}

function scrollCaixaBranca(){
    let caixa_branca = document.getElementById("caixa-branca");
    window.scrollTo(caixa_branca.offsetLeft, caixa_branca.offsetTop);
}

function abrirTextoAutor(){
    let texto_abreviado = document.getElementById("texto-abreviado");
    let texto_completo = document.getElementById("texto-completo");
    let botao_vermais = document.getElementById("botao-vermais");
    texto_abreviado.style.display = "none";
    texto_completo.style.display = "block";
    botao_vermais.remove();
}