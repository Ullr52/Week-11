<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>edit comic</title>
<script>

  function checkForm(form)
  {
    // validation fails if the input is blank
    if(form.publisher.value == "") {
      alert("Error: Publisher is empty!");
      form.publisher.focus();
      return false;
    }
    if(form.seriesTitle.value == "") {
        alert("Error: Series Title is empty!");
        form.seriesTitle.focus();
        return false;
      }
    if(form.issueNum.value == "") {
        alert("Error: Issue Number is empty!");
        form.issueNum.focus();
        return false;
      }
    if(form.author.value == "") {
        alert("Error: Author is empty!");
        form.author.focus();
        return false;
      }
    if(form.illustrator.value == "") {
        alert("Error: Illustrator is empty!");
        form.illustrator.focus();
        return false;
      }
  
    
    // regular expression to match only alphanumeric characters and spaces
    var re = /^[\w ]+$/;

    // validation fails if the input doesn't match our regular expression
    if(!re.test(form.publisher.value)) {
      alert("Error: Publisher contains invalid characters!");
      form.publisher.focus();
	return false;
    }

    if(!re.test(form.author.value)) {
        alert("Error: Author contains invalid characters!");
        form.author.focus();
  	return false;
      }

    if(!re.test(form.illustrator.value)) {
        alert("Error: Illustrator contains invalid characters!");
        form.illustrator.focus();
  	return false;
      }
    // validation was successful
    return true;
  }
  </script>
</head>
<body>
<h2>Here you can edit your comics</h2>
<form action = "editComicServlet" method="post" onsubmit = "return checkForm(this);">
Edit Publisher: <input type ="text" name = "publisher" value= "${comicToEdit.publisher}">
Edit Series: <input type = "text" name = "seriesTitle" value= "${comicToEdit.seriesTitle}">
Edit Issue Number: <input type ="text" name = "issueNum" value= "${comicToEdit.issueNum}">
Edit Author: <input type = "text" name = "author" value= "${comicToEdit.author}">
Edit Illustrator: <input type = "text" name = "illustrator" value= "${comicToEdit.illustrator}">
<input type = "hidden" name = "id" value="${comicToEdit.id}">
<input type = "submit" value="Save Edited Item">
</form>

</body>
</html>