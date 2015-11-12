<%@ taglib uri="/WEB-INF/tlds/mytld.tld"  prefix="p"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<jsp:useBean id="box" scope="page" class="com.afroz.Box"/>
<jsp:setProperty property="width" name="box" value="10"/>
<jsp:setProperty property="height" name="box" value="10"/>
<c:set var="width"  value="${box.getWidth()}"/>
<c:set var="height" value="${box.getHeight()}"/>
<jsp:text>${2*box.getWidth()+2*box.getHeight()}</jsp:text>
</body>
</html>