<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="core" uri="http://java.sun.com/jsp/jstl/core" %>
<jsp:useBean id="user" class="by.epam.bakery.domain.User" scope="application"/>
<!doctype html>
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <style>
        <%@include file="../../css/style.css" %>
        <%@include file="../../css/bootstrap.min.css" %>
    </style>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>
    <script>
        <%@include file="../../js/bootstrap.js" %>
    </script>
    <title>Personal account</title>
</head>
<body>
<jsp:include page="header.jsp"/>
<jsp:include page="login.jsp"/>
<jsp:include page="menu.jsp"/>
<div class="container-fluid mt-3">
    <div class="wrong_login">
        <c:out value="${ noLogin }"/>
    </div>
    <form action="controller" method="POST">
        <div>
            <p>Your feedback:</p>
            <div class="input-group mb-3">
                <textarea class="form-control" name="review" rows="3"></textarea>
            </div>
            <input type="hidden" name="command" value="add_feedback">
            <input type="submit" value="Send feedback" class="btn btn-outline-secondary">
        </div>
    </form>
    <c:forEach var="element" items="${feedback}" varStatus="status">
        <br>
        <div class="feedback media border p-3">
            <div class="media-body">
                <h4><c:out value="${ element.user.surname }"/> <c:out value="${ element.user.name }"/><small><i> posted
                    <c:out value="${ element.localDateTime.toString().replace(\"T\", \" \") }"/></i></small></h4>
                <p><c:out value="${ element.review }"/></p>
            </div>
        </div>
    </c:forEach>
</div>
<div class="container-fluid pt-3">
    <div class="footer">
        <jsp:include page="footer.jsp"/>
    </div>
</div>
</body>
</html>