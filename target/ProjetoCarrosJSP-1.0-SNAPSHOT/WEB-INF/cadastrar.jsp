<%-- 
    Document   : cadastrar.jsp
    Created on : 12/02/2019, 09:45:53
    Author     : Dud Felipe
--%>

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
                <div class="titulo">
                    <h1>Cadastro de carros</h1>
                </div>
                <form method="POST" 
                      action="<c:choose>
                          <c:when test="${c != null}">
                              ${pageContext.request.contextPath}/AlterarCarroServlet?id=${c.id}
                          </c:when>
                          <c:otherwise>
                              ${pageContext.request.contextPath}/CadastroServlet
                          </c:otherwise>
                        </c:choose>">
                    <div class="form-row mb-3">
                        <div class="col-sm-3"></div>

                        <div class="col-sm-3">
                            <label for="nome">Nome</label>
                            <c:choose>
                                <c:when test="${erroNome == null}">
                                    <input type="text" class="form-control" id="nome" name="nome" value="${c.nome}">
                                </c:when>
                                <c:otherwise>
                                    <input type="text" class="form-control is-invalid" id="nome" name="nome">
                                    <div class="invalid-feedback">
                                        <c:out value="${erroNome}"></c:out>
                                    </div>
                                </c:otherwise>
                            </c:choose>
                        </div>

                        <div class="col-sm-3">
                            <label for="marca">Marca</label>
                            <c:choose>
                                <c:when test="${erroMarca == null}">
                                    <input type="text" class="form-control" id="marca" name="marca" value="${c.marca}">
                                </c:when>
                                <c:otherwise>
                                    <input type="text" class="form-control is-invalid" id="marca" name="marca">
                                    <div class="invalid-feedback">
                                        <c:out value="${erroMarca}"></c:out>
                                    </div>
                                </c:otherwise>
                            </c:choose>
                        </div>

                        <div class="col-sm-3"></div>
                    </div>    

                    <div class="form-row mb-3">
                        <div class="col-sm-3"></div>

                        <div class="col-sm-3">
                            <label for="Ano">Ano</label>
                            <c:choose>
                                <c:when test="${erroAno == null}">    
                                    <input type="text" class="form-control" id="ano" name="ano" value="${c.ano}">
                                </c:when>
                                <c:otherwise>
                                    <input type="text" class="form-control is-invalid" id="ano" name="ano">
                                    <div class="invalid-feedback">
                                        <c:out value="${erroAno}"></c:out>
                                    </div>
                                </c:otherwise>
                            </c:choose>
                        </div>

                        <div class="col-sm-3">
                            <label for="preco">Preço</label>
                            <c:choose>
                                <c:when test="${erroPreco == null}">
                                    <input type="text" class="form-control" id="preco" name="preco" value="${c.preco}">
                                </c:when>
                                <c:otherwise>
                                    <input type="text" class="form-control is-invalid" id="preco" name="preco">
                                    <div class="invalid-feedback">
                                        <c:out value="${erroPreco}"></c:out>
                                    </div>
                                </c:otherwise>
                            </c:choose>
                        </div>

                        <div class="col-sm-3"></div>
                    </div>

                    <div class="form-row mb-3">
                        <div class="col-sm-3"></div>

                        
                        <div class="col-sm-3">
                            <label for="categoria">Categoria</label>
                            <c:choose>
                                <c:when test="${erroCategoria == null}">
                                    <select class="form-control" name="categoria">
                                </c:when>
                                <c:otherwise>
                                    <select class="form-control is-invalid" name="categoria">
                                    <div class="invalid-feedback">
                                        <c:out value="${erroCategoria}"></c:out>
                                    </div>
                                </c:otherwise>
                            </c:choose>
                                <option value="">Selecione...</option>
                                <option value="P">Popular</option>
                                <option value="L">Luxo</option>
                            </select>
                        </div>
                        
                        <div class="col-sm-3">
                            <label for="imagem">Imagem</label>
                            <div class="custom-file">
                                <input type="file" class="custom-file-input" id="inputGroupFile01" name="imagem" aria-describedby="inputGroupFileAddon01" value="${c.imagem}">
                                <label class="custom-file-label" for="inputGroupFile01">Escolha o arquivo</label>
                            </div>
                        </div>
                        
                        <div class="col-sm-3"></div>
                    </div>

                    <div class="form-row mb-3">
                        <div class="col-sm-6">
                            <input class="btn btn-success col-sm-12" type="submit" value="Cadastrar">
                        </div>
                    </div>
                </form>
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
