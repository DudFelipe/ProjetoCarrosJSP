<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Carros</title>
        <link href="assets/style.css" rel="stylesheet" type="text/css">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.0/css/bootstrap.min.css" integrity="sha384-PDle/QlgIONtM1aqA2Qemk5gPOE7wFq8+Em+G/hmo5Iq0CCmYZLv3fVRDJ4MMwEA" crossorigin="anonymous">
    </head>
    <body>
        <div id="tudo">
            <div id="topo"> <!--Topo da página (logomarca)-->
                <a href="IndexServlet">
                    <img id="imgLogo" src="assets/Imagens/logo.png" width="274px" height="87px">
                </a>

                <div id="menuSuperior"> <!--Menu superior - Links da página--> 
                    <a href="IndexServlet" id="linkHome">Home</a>
                    <a href="ListarServlet?categoria=P" id="linkPopulares">Carros Populares</a>
                    <a href="ListarServlet?categoria=L" id="linkLuxo">Carros de Luxo</a>
                    <a href="CadastroServlet" id="linkCadastra">Cadastrar Carro</a>
                </div> <!--Fim do menu superior-->
            </div><!--Fim do topo da página-->
            <div id="principal">
                <div class="titulo mb-4">
                    <h1><c:out value="${carro.nome}"></c:out></h1>
                </div>
                
                <div>
                    <div class="col-sm-4 mb-3">
                        <img src="<c:out value="${carro.imagem}"></c:out>" width="400px" height="200px">
                    </div>
                </div>
                
                
                <table class="table col-sm-6">
                    <thead>
                        <tr style="text-align: center;">
                            <th scope="col">Marca</th>
                            <th scope="col">Ano</th>
                            <th scope="col">Preço</th>
                            <th scope="col">Categoria</th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <td><c:out value="${carro.marca}" /></td>
                            <td><c:out value="${carro.ano}" /></td>
                            <td><c:out value="${carro.preco}" /></td>
                            <td><c:out value="${carro.categoria}" /></td>
                        </tr>

                    </tbody>
                </table>
            </div>
            <div id="rodape"> <!--Rodapé da página-->
                <p>
                    Este site foi desenvolvido para servir de exemplo de como criar
                    um site utilizando JSP e como se conectar com o banco de dados
                    para realizar consultas e mostrar seus resultados.<br />
                    <strong>Intellectuale - Tecnologia & Treinamento</strong>
                </p>
            </div> <!--Fim do rodapé da página-->
        </div>
    </body>
</html>
