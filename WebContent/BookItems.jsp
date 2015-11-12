<jsp:useBean id="book" class="com.afroz.BookBean" scope="session"/>
<jsp:setProperty property="*" name="book"/>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="/WEB-INF/tlds/mytld.tld"  prefix="d"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<d:book/>
Book Name:<d:bookname/><br>
Book Numb:<d:booknumber/><br>
Book Pric:<d:bookprice/><br>

Click <a href="/CustomTagLib/SessionCustomTag.jsp">here</a>
</body>
</html>