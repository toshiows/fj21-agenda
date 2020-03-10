<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Agenda de contatos</title>
</head>
<body>
<c:import url="cabecalho.jsp" />

<!-- CRIA O DAO -->
<jsp:useBean id="dao" class="br.com.caelum.agenda.dao.ContatoDao" />
<table border="1">
<!-- PERCORRE CONTATOS MONTANDO LINHAS DA TABELA -->
 <tr bgcolor="0C4F05">
    <th><font color="white">Nome</font></th>
    <th><font color="white">Email</font></th>
    <th><font color="white">Endereço</font></th>
    <th><font color="white">Data Nascimento</font></th>
  </tr>
  
<c:forEach var="contato" items="${dao.lista}" varStatus="id">

	<tr bgcolor="#${id.count % 2 == 0 ? 'aaee88' : 'ffffff' }">
		<td>${contato.nome}</td>
		<td>
		<c:choose>
		<c:when test="${not empty contato.email}">
			<a href="mailto:${contato.email}">${contato.email}</a>
		</c:when>
		
		<c:otherwise>
			Email não informado
		</c:otherwise>
		</c:choose>
		</td>	
		<td>${contato.endereco}</td>
		<td><fmt:formatDate value="${contato.dataNascimento.time}" pattern="dd/MM/yyyy" /> </td>
	</tr>
	</c:forEach>
</table>

<c:import url="rodape.jsp" />
</body>
</html>