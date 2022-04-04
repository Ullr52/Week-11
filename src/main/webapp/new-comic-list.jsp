<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Create a new list</title>
<script>
function checkForm(form)
  {
    // validation fails if the input is blank
    if(form.custListName.value == "") {
      alert("Error: List Name is empty!");
      form.custListName.focus();
      return false;
    }
    if(form.customerName.value == "") {
        alert("Error: Customer Name is empty!");
        form.customerName.focus();
        return false;
      }
    if(form.month.value == "") {
        alert("Error: Montuh is empty!");
        form.month.focus();
        return false;
    }
      if(form.day.value == "") {
            alert("Error: Day is empty!");
            form.day.focus();
            return false;
    }
      if(form.year.value == "") {
             alert("Error: Year is empty!");
             form.year.focus();
             return false;
      }
    
    return true;
      }
     
    
    
    </script>

</head>
<body>
<form action = "createNewComicListServlet" method="post" onsubmit = "return checkForm(this);">
List Name: <input type="text" name = "custListName"><br />
Trip Date: <input type="text" name = "month" placeholder="mm" size="4">
<input type="text" name = "day" placeholder="dd" size="4">
<input type="text" name = "year" placeholder="yyyy" size="4">
Customer Name: <input type="text" name = "customerName"><br />

Available Comics:<br />
<select name = "allComicsToAdd" multiple size = "12">
<c:forEach items = "${requestScope.allComics}" var="currentcomic">
<option value = "${currentcomic.id}"> ${currentcomic.publisher} | ${currentcomic.seriesTitle} |  ${currentcomic.issueNum} | ${currentcomic.author} | ${currentcomic.illustrator} </option>
</c:forEach>
</select>
<br />
<input type="submit" value="Create Want List and Add Comics">

</form>
<a href="index.html">Go add new comics instead</a>
</body>
</html>