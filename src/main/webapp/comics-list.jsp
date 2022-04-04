<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>comics</title>
</head>
<body>
<form method = "post" action = navagationServlet>
<table>
<c:forEach items="${requestScope.allComics}" var="currentcomic">
<tr>
<td><input type="radio" name="id" value="${currentcomic.id}"></td>
<td>Publisher: ${currentcomic.publisher}</td>
<td><b>Series Title:</b> ${currentcomic.seriesTitle}</td>
<td><b>Issue Number: </b>${currentcomic.issueNum}</td>
<td><b>Author: </b>${currentcomic.author}</td>
<td><b>Illustrator: </b>${currentcomic.illustrator}</td>
</tr>
</c:forEach>
</table>
<input type = "submit" value = "edit" name="doThisToComic">
<input type = "submit" value = "delete" name="doThisToComic">
<input type="submit" value = "add" name = "doThisToComic">
</form>
</body>
</html>