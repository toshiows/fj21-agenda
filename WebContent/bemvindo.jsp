<%@ page import="java.util.Calendar" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<%
		//primeira página com JSP
	%>
	<%
		String mensagem = "Bem vindo ao sistema de agenda do FJ-21!";
	%>
	<%
		out.println(mensagem);
	%>
	<br />
	<%
		String desenvolvido = "Desenvolvido por: Toshio Watanabe";
	%>

	<%=desenvolvido%>

	<br />

	<%
		System.out.println("Executado com sucesso");
	%>
	
	<% out.println("A hora atual é: " + Calendar.getInstance().getTime()); %>
</body>
</html>