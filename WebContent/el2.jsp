<%@page import="cc.bean.deom.Customers"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Insert title here</title>
</head>
<body>

	age:${sessionScope.customers.age }
	<br>
	<!-- el表达式[]和. -->
	<%
	Customers c = new Customers();
	c.setName("haha");
	session.setAttribute("cc.bean.deom.Customers", c);
	%>
	name:${sessionScope["cc.bean.deom.Customers"].name }
	
	<br>
	scope:${param.scope }
	<br>
	names:${paramValues.name[0] }
	<br>
	<%= request.getParameterValues("name")[0].getClass().getName()%>
	
	<!-- pagaContext el表达式-->
	<br>
	contextPath:${pageContext.request.contextPath }
	<br>
	requestURL:${pageContext.request.requestURL }
	<br>
	sessionId:${pageContext.session.id }
	<br>
	sessionAttributeNames:${pageContext.session.attributeNames }
	
</body>
</html>