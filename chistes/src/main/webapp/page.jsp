<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<!doctype html>
<html lang="en">

<head>
    <title>Chistes</title>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS v5.2.1 -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-iYQeCzEYFbKjA/T2uDLTpkwGzCiq6soy8tYaI1GyVh/UjpbCx/TYkiZhlZB6+fzT" crossorigin="anonymous">

    <!-- Custom CSS -->
    <link rel="stylesheet" href="css/style.css">
</head>

<body>
    <header>
        <div class="row pt-xxl bg-dark text-white relative py-xxl">
            <div class="abs-left-center">
            	<a href="index.html">
                	<img src="img/logo.png" alt="">
            	</a>
            </div>
            <div class="abs-center-center">
                <p class="h1 text-center">Chistes paco</p>
            </div>
        </div>
    </header>
    <main>
    	<div class="accordion accordion-flush" id="accordionFlushExample">
      	<!-- CATEGORIES -->
		  <div class="accordion-item">
		    <h2 class="accordion-header" id="flush-headingOne">
		      <button class="accordion-button collapsed text-center" type="button" data-bs-toggle="collapse" data-bs-target="#flush-collapseOne" aria-expanded="false" aria-controls="flush-collapseOne">
		        CATEGORIAS
		      </button>
		    </h2>
		    <div id="flush-collapseOne" class="accordion-collapse collapse" aria-labelledby="flush-headingOne"  data-bs-parent="#accordionFlushExample">
		      <div class="accordion-body">
		        <div class="bg-gray">
		            <div class="row justify-content-center py-5 px-3">
		            <c:forEach items="${cats}" var="cat">
		                <div class="col-xl-1 col-lg-2 col-md-3 col-sm-4 my-3">
		                    <div class="card">
		                    	<a href="Controller?op=detallesinicio&cat=<c:out value="${cat.id}"/>&catname=<c:out value="${cat.name}"/>#chistecontent">
			                        <img class="card-img-top" src="http://www.ies-azarquiel.es/paco/apichistes/img/<c:out value="${cat.id}"/>.png"
			                            alt="Title"/>
		                    	</a>
		                    </div>
		                </div>
		            </c:forEach>
		           	</div>
		        </div>
		      </div>
		    </div>
		  </div>
	  <!-- JOKES (show if category clicked) -->
		  <c:if test="${catname!= null}">
		  <div class="accordion-item">
		    <h2 class="accordion-header" id="flush-headingTwo">
		      <button class="accordion-button collapsed text-center" type="button" data-bs-toggle="collapse" data-bs-target="#flush-collapseTwo" aria-expanded="false" aria-controls="flush-collapseTwo">
		        CHISTES
		      </button>
		    </h2>
		    <div id="flush-collapseTwo" class="accordion-collapse collapse" aria-labelledby="flush-headingTwo" data-bs-parent="#accordionFlushExample">
		      <div class="accordion-body">
			        <div class="bg-gray-light" id="chistecontent">
			        	<div class="text-center pt-5">
			        		<p class="h1"><c:out value="${catname}"/></p>
			        	</div>
			            <div class="row px-5 justify-content-center py-5 px-3">
			            <c:forEach items="${jokes}" var="joke">
			                <div class="col-lg-6 my-2 d-flex">
			                    <div class="card bg-dark py-2 px-5 text-white flex-fill">
			                        <div class="row align-items-center h-100">
			                            <div class="col-2">
			                                <img class="card-img-top" src="http://www.ies-azarquiel.es/paco/apichistes/img/<c:out value="${joke.idcat}"/>.png"
			                                    alt="Title">
			                            </div>
			                            <div class="col-10">
			                                <div class="card-body">
			                                    <p class="h5 text-start">
			                                    	<c:out value="${joke.content}" escapeXml="false"/>
			                                    </p>
			                                </div>
			                            </div>
			                        </div>
			                    </div>
			                </div>
			            </c:forEach>
			            </div>
			        </div>
		      </div>
		    </div>
		  </div>
		  </c:if>
		</div>
    </main>
    <footer>
        <!-- place footer here -->
    </footer>
    <!-- Bootstrap JavaScript Libraries -->
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.6/dist/umd/popper.min.js"
        integrity="sha384-oBqDVmMz9ATKxIep9tiCxS/Z9fNfEXiDAYTujMAeBAsjFuCZSmKbSSUnQlmh/jp3" crossorigin="anonymous">
        </script>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/js/bootstrap.min.js"
        integrity="sha384-7VPbUDkoPSGFnVtYi0QogXtr74QeVeeIs99Qfg5YCF+TidwNdjvaKZX19NZ/e6oz" crossorigin="anonymous">
        </script>
</body>

</html>