<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Resultado</title>
</head>
<style>
body {
    margin: 0;
    padding: 0;
    display: flex;
    align-items: center;
    justify-content: center;
    flex-direction: column;
    height: 100vh;
    font-family: Arial, Helvetica, sans-serif;
    background-color: #c41535;
}

header {
    position: fixed;
    top: 0;
    padding: 5px;
    align-items: center;
    text-align: center;
    width: 100%;
    height: 6rem;
    font-size: 1rem;
    font-weight: bold;
    border-radius: 10px;
    background-color: #fff;
    color: #000;
    display: inline;
}
.header-container {
    display: flex; 
    align-items: center; 
}

.header-container img {
    height: 8rem;
    margin-bottom: 10px

}

.cabecalho {
    flex-grow: 1; /* Faça o texto ocupar o espaço restante */
    text-align: center; /* Centralize o texto */
    margin-right: 14rem;
    font-size: 3rem
    
}
.resultado {
    margin-top: 20rem;
    border-radius: 1rem;
    padding: 50px;
    background-color: #043c74;
    margin: 0 auto; 
    display: block; 
    align-items: center;
    justify-content: center;
}
.resultado p{
    color: rgb(105,105,105);
    font-size: 2rem;
}
.resultado p{
    color: #fff;
    font-size: 2rem;
}
</style>
<body>
    <%
        // Obter os parâmetros do formulário
        String nota1 = request.getParameter("primeiraNota");
        String nota2 = request.getParameter("segundaNota");

        // Converter os parâmetros para números
        double nota1Value = Double.parseDouble(nota1);
        double nota2Value = Double.parseDouble(nota2);

        // Calcular a média
        double media = (nota1Value + nota2Value) / 2;
    %>
    <header>
        <div class="header-container">
             <img src="./content/logoUni.png" />
            <h3 class="cabecalho">
                Sua média Calculada
            </h3>
        </div>
    </header>
    <div class="resultado">
        <p>Nota 1: <span> <%= nota1 %></span</p>
        <p>Nota 2: <span><%= nota2 %></span></p>
        <p>Média: <span><%= media %></span></p>
    </div>
</body>
</html>
