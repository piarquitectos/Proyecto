<%-- 
    Document   : asignacionPrueba
    Created on : 1/06/2019, 12:49:51 PM
    Author     : 52558
--%>

    
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Spring MVC List of objects display</title>
</head>
<body>
<table>
<tr>
<th>First Name</th>
</tr>
<c:forEach items="${lista.herramientas}" var="herramientas" varStatus="tagStatus">
    <tr>
        <td>${herramientas.codigo_barra}</td>
    </tr>
</c:forEach>
</table>
</body>
</html>