<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<fieldset>
<legend>Register Book</legend>
<form action="/CustomTagLib/BookItems.jsp">
<table>
<tr>
<th>Book Number:</th>
<td><input type="text" name="bno" size=10 required/> </td>
</tr>
<tr>
<th>Book Name:</th>
<td><input type="text" name="bname" size=10 required/> </td>
</tr>
<tr>
<th>Book Price:</th>
<td><input type="text" name="bprice" size=10 required/> </td>
</tr>
<tr><td><input type="submit" value="Submit"/></td></tr>
</table>

</form>
</fieldset>
</body>
</html>