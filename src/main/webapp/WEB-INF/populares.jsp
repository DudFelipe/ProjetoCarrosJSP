<%-- 
    Document   : populares
    Created on : 12/02/2019, 15:04:22
    Author     : Dud Felipe
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Carros</title>
        <link href="assets/style.css" rel="stylesheet" type="text/css">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.0/css/bootstrap.min.css" integrity="sha384-PDle/QlgIONtM1aqA2Qemk5gPOE7wFq8+Em+G/hmo5Iq0CCmYZLv3fVRDJ4MMwEA" crossorigin="anonymous">
        <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.7.2/css/all.css" integrity="sha384-fnmOCqbTlWIlj8LyTjo7mOUStjsKC4pOpQbqyi7RrhN7udi9RwhKkMHpvLbHG9Sr" crossorigin="anonymous">
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
                <div class="titulo">
                    <h1>Carros Populares</h1>
                </div>
                
                <table class="table col-sm-9">
                    <thead>
                        <tr style="text-align: center;">
                            <th scope="col">Id</th>
                            <th scope="col">Nome</th>
                            <th scope="col">Marca</th>
                            <th scope="col">Ano</th>
                            <th scope="col">Preço</th>
                            <th scope="col">Categoria</th>
                            <th scope="col">Imagem</th>
                            <th scope="col">Editar</th>
                            <th scope="col">Excluir</th>
                        </tr>
                    </thead>
                    <tbody>
                        <c:forEach items="${carros}" var="c">
                            <tr>
                                <fmt:setLocale value="pt-BR" />
                                <td scope="row"><c:out value="${c.id}" /></td>
                                <td><a href="${pageContext.request.contextPath}/DetalheServlet?id=${c.id}"><c:out value="${c.nome}"></c:out></a></td>
                                <td><c:out value="${c.marca}" /></td>
                                <td><c:out value="${c.ano}" /></td>
                                <td><fmt:formatNumber value="${c.preco}" type="currency"/></td>
                                <td><c:out value="${c.categoria}" /></td>
                                <td><img src="${c.imagem}" width="200px" height="100px"></td>

                                <td><a href="${pageContext.request.contextPath}/AlterarCarroServlet?id=${c.id}&categoria=${c.categoria}"><i class="far fa-edit"></i></a></td>
                                <td><a href="${pageContext.request.contextPath}/ExcluirCarroServlet?id=${c.id}&categoria=${c.categoria}"><i class="far fa-trash-alt"></i></a></td>
                            </tr>
                        </c:forEach>

                    </tbody>
                </table>
            
            </div>
            <div id="rodape"> <!--Rodapé da página-->
                <p>
                    Este site foi desenvolvido para servir de exemplo de como criar
                    um site utilizando ASP.NET e como se conectar com o banco de dados
                    para realizar consultas e mostrar seus resultados.<br />
                    <strong>Intellectuale - Tecnologia & Treinamento</strong>
                </p>
            </div> <!--Fim do rodapé da página-->
        </div>
    </body>
</html>
