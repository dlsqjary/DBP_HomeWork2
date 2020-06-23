<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>복습16-1</title>
</head>
<body>
<c:forEach var="i" begin="${param.begin }" end="${param.end }" step="${param.step }">
    <p><c:out value="${i}" /></p>
</c:forEach>
</body>
</html>