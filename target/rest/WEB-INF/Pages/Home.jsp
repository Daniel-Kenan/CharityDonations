<%-- 
    Document   : Home
    Created on : 25 Sep 2024, 16:08:18
    Author     : sdani
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
          <link rel="stylesheet" type="text/css" href="<%= request.getContextPath() %>/WebContent/style.css">
        <jsp:include page="../Partials/Header.jsp" /> 
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
    <jsp:include page="../Components/Navigation.jsp" /> 
        <h1>Hello Worled!</h1>
    <jsp:include page="../Components/Footer.jsp" />
     <jsp:include page="../Partials/Body.jsp" /> 
    </body>
</html>
