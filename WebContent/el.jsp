<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Insert title here</title>
</head>
<body>

	<form action="el.jsp" method="post">
		username:<input type="text" name="username" value="<%= request.getParameter("username") == null ? "" : request.getParameter("username")%>"/>
		<input type="submit" value="submit"/>
		<br>
		El表达式：												<!-- el表达式 -->
		username1:<input type="text" name="username1" value="${param.username1 }">
		<input type="submit" value="submit"/>
	</form>
	
	<!-- 使用bean -->
	<jsp:useBean id="customers" class="cc.bean.deom.Customers" scope="session"></jsp:useBean>
	<!-- 设置bean -->
	<jsp:setProperty property="age" value="25" name="customers"/>
	<!-- 获取bean -->
	age:<jsp:getProperty property="age" name="customers"/>
	<br>
	el表达式 
	age:${sessionScope.customers.age }
	<br>
	<a href="el2.jsp?scope=88&name=a&name=b&name=c">To el2 Page</a>	

</body>
</html>