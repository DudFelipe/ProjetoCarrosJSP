<%-- 
    Document   : index
    Created on : 11/02/2019, 15:09:05
    Author     : Dud Felipe
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
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
            <form id="form1">
                <div id="topo"> <!--Topo da página (logomarca)-->
                    <a href="IndexServlet">
                        <img id="imgLogo" src="assets/Imagens/logo.png" width="274px" height="87px">
                    </a>
                    
                    <div id="menuSuperior"> <!--Menu superior - Links da página--> 
                        <a href="IndexServlet" id="linkHome">Home</a>
                        <a href="PopularesServlet" id="linkPopulares">Carros Populares</a>
                        <a href="luxo.jsp" id="linkLuxo">Carros de Luxo</a>
                        <a href="CadastroServlet" id="linkCadastra">Cadastrar Carro</a>
                    </div> <!--Fim do menu superior-->
                </div><!--Fim do topo da página-->
                <div id="principal">
                    <div class="titulo">
                        <h1>Projeto JSP</h1>
                    </div>

                    <p>
                        Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam elit ante, 
                        ullamcorper a ipsum at, hendrerit scelerisque ligula. Integer vestibulum lacus 
                        vitae ipsum suscipit pharetra. Duis ac massa et odio porta interdum eu ut nisi. 
                        Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus 
                        mus. Maecenas consequat, metus non commodo porttitor, nulla risus tincidunt velit, 
                        eu tristique felis augue eu urna. Nam justo neque, pellentesque id dictum eu, 
                        convallis sed nisi. Suspendisse sollicitudin, lacus ut sodales ultricies, neque 
                        felis euismod eros, blandit accumsan nulla risus non odio. Donec ut tortor varius, 
                        mollis velit at, imperdiet sem.
                    </p>

                    <p>
                        Duis fringilla augue dui, ut lobortis ex cursus a. Etiam varius ligula et nibh 
                        fringilla, in suscipit libero dignissim. Nunc nec felis sodales, gravida libero 
                        nec, aliquam odio. Sed erat justo, feugiat et accumsan quis, hendrerit sit amet 
                        nibh. Aenean laoreet, felis vitae elementum sollicitudin, arcu augue pellentesque 
                        purus, sed suscipit sem mi non libero. Suspendisse dapibus justo a dignissim 
                        semper. Praesent pellentesque viverra nisi sit amet commodo. Sed quis eros 
                        tincidunt, congue felis eu, tempus odio. In hac habitasse platea dictumst. Etiam 
                        vestibulum velit dui, vitae imperdiet mi fermentum nec.
                    </p>

                    <p> 
                        Vivamus ullamcorper pretium ullamcorper. Phasellus laoreet vel ligula non mollis. 
                        Aliquam ut erat ligula. Aliquam vel rutrum nisi, quis gravida odio. Cras lobortis 
                        mattis ante, non maximus magna commodo vitae. Quisque rhoncus accumsan tempor. 
                        Praesent blandit, enim eu blandit varius, orci est molestie tortor, ut ornare dolor 
                        nisi at orci.
                    </p>

                    <p>
                        Donec dignissim felis nulla. Sed laoreet, dolor sed tristique interdum, nulla 
                        tortor condimentum sem, eget posuere erat dui at lectus. Sed sed tincidunt est. 
                        Aenean porta sem vel risus blandit ornare. Cras ut elit at justo laoreet luctus. 
                        Nunc sed augue dolor. Mauris faucibus purus eget urna aliquet vehicula. Cras 
                        euismod ut quam nec finibus. Duis vitae vestibulum ipsum, vitae vehicula justo. 
                        Nunc vel diam vitae tortor efficitur vulputate. Nullam consequat tincidunt lectus 
                        a faucibus. Nullam auctor semper urna sed dictum. Nullam tempus ante egestas erat 
                        dapibus semper. Sed rutrum malesuada lorem ut sollicitudin.
                    </p>

                    <p> 
                        Vivamus ullamcorper pretium ullamcorper. Phasellus laoreet vel ligula non mollis. 
                        Aliquam ut erat ligula. Aliquam vel rutrum nisi, quis gravida odio. Cras lobortis 
                        mattis ante, non maximus magna commodo vitae. Quisque rhoncus accumsan tempor. 
                        Praesent blandit, enim eu blandit varius, orci est molestie tortor, ut ornare dolor 
                        nisi at orci.
                    </p>

                    <p>
                        Donec dignissim felis nulla. Sed laoreet, dolor sed tristique interdum, nulla 
                        tortor condimentum sem, eget posuere erat dui at lectus. Sed sed tincidunt est. 
                        Aenean porta sem vel risus blandit ornare. Cras ut elit at justo laoreet luctus. 
                        Nunc sed augue dolor. Mauris faucibus purus eget urna aliquet vehicula. Cras 
                        euismod ut quam nec finibus. Duis vitae vestibulum ipsum, vitae vehicula justo. 
                        Nunc vel diam vitae tortor efficitur vulputate. Nullam consequat tincidunt lectus 
                        a faucibus. Nullam auctor semper urna sed dictum. Nullam tempus ante egestas erat 
                        dapibus semper. Sed rutrum malesuada lorem ut sollicitudin.
                    </p>
                </div>
                <div id="rodape"> <!--Rodapé da página-->
                    <p>
                        Este site foi desenvolvido para servir de exemplo de como criar
                        um site utilizando ASP.NET e como se conectar com o banco de dados
                        para realizar consultas e mostrar seus resultados.<br />
                        <strong>Intellectuale - Tecnologia & Treinamento</strong>
                    </p>
                </div> <!--Fim do rodapé da página-->
            </form>
        </div>
    </body>
</html>
