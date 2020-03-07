<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<!-- CRIA O DAO -->
<jsp:useBean id="dao" class="br.com.caelum.agenda.dao.ContatoDao" />
<table border="1">
<!-- PERCORRE CONTATOS MONTANDO LINHAS DA TABELA -->
 <tr>
    <th>Nome</th>
    <th>Email</th>
    <th>Endereço</th>
    <th>Telefone</th>
  </tr>
  
<c:forEach var="contato" items="${dao.lista}" varStatus="id">

	<tr bgcolor="#${id.count % 2 == 0 ? 'aaee88' : 'ffffff' }">
		<td>${contato.nome}</td>	
		<td>${contato.email}</td>
		<td>${contato.endereco}</td>
		<td>${contato.dataNascimento.time}</td>
	</tr>
	</c:forEach>
</table>
</body>
</html>