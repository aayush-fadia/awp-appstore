<%-- 
    Document   : index
    Created on : Jun 10, 2020, 10:47:02 AM
    Author     : HP
--%>

<%@page import="java.util.List" %>
<%@page import="com.AppStore.domain.Application" %>
<%@page import="com.AppStore.domain.AppCategory" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@page contentType="text/html" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">
    <!-- Bootstrap core CSS -->
    <link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
    <!-- Custom styles for this template -->
    <link href="css/shop-homepage.css" rel="stylesheet">

    <title>Zenith</title>
</head>
<body>
<jsp:include page="/header.jsp"/>
<div class="container">
    <div class="row">
        <jsp:include page="/sidebar.jsp"/>
        <div class="col-lg-9">

            <h2><c:out value="${category.toUpperCase()}"/>:</h2>
            <div class="row">
                <c:set var="item" value='${requestScope["appList"]}'/>
                <c:forEach var="app" items="${item}">
                    <c:if test='${category=="apps" && app.getCategory() == AppCategory.APPS}'>
                        <div class="col-lg-4 col-md-6 mb-4">
                            <div class="card h-100">
                                <a href="individualPage.html?id=${app.getId()}"><img class="card-img-top"
                                                                                     src="${app.getLogo()}"
                                                                                     alt="${app.getName()}"></a>
                                <div class="card-body">
                                    <h4 class="card-title">
                                        <a href="individualPage.html?id=${app.getId()}"><c:out
                                                value="${app.getName()}"/></a>
                                    </h4>
                                    <h5>Version = <c:out value="${app.getVersion()}"/></h5>
                                    <p class="card-text"><c:out value="${app.getDescription()}"/></p>
                                </div>
                                <div class="card-footer">
                                    <small class="text-muted">Rating: <c:out value="${app.getRating()}"/></small>
                                </div>
                            </div>
                        </div>
                    </c:if>
                    <c:if test="${category=='games' && app.getCategory() == AppCategory.GAMES}">
                        <div class="col-lg-4 col-md-6 mb-4">
                            <div class="card h-100">
                                <a href="individualPage.html?id=${app.getId()}"><img class="card-img-top"
                                                                                     src="${app.getLogo()}"
                                                                                     alt="${app.getName()}"></a>
                                <div class="card-body">
                                    <h4 class="card-title">
                                        <a href="individualPage.html?id=${app.getId()}"><c:out
                                                value="${app.getName()}"/></a>
                                    </h4>
                                    <h5>Version = <c:out value="${app.getVersion()}"/></h5>
                                    <p class="card-text"><c:out value="${app.getDescription()}"/></p>
                                </div>
                                <div class="card-footer">
                                    <small class="text-muted">Rating: <c:out value="${app.getRating()}"/></small>
                                </div>
                            </div>
                        </div>
                    </c:if>
                    <c:if test="${category=='beta' && app.getCategory() == AppCategory.BETA}">
                        <div class="col-lg-4 col-md-6 mb-4">
                            <div class="card h-100">
                                <a href="individualPage.html?id=${app.getId()}"><img class="card-img-top"
                                                                                     src="${app.getLogo()}"
                                                                                     alt="${app.getName()}"></a>
                                <div class="card-body">
                                    <h4 class="card-title">
                                        <a href="individualPage.html?id=${app.getId()}"><c:out
                                                value="${app.getName()}"/></a>
                                    </h4>
                                    <h5>Version = <c:out value="${app.getVersion()}"/></h5>
                                    <p class="card-text"><c:out value="${app.getDescription()}"/></p>
                                </div>
                                <div class="card-footer">
                                    <small class="text-muted">Rating: <c:out value="${app.getRating()}"/></small>
                                </div>
                            </div>
                        </div>
                    </c:if>
                </c:forEach>
            </div>
        </div>
    </div>
</div>

<jsp:include page="/footer.jsp"/>
</body>
</html>
