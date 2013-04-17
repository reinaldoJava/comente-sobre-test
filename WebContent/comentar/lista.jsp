<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Listando Tarefas</title>
</head>
<body>
<c:import url="../cabecario.jsp" />
	<a href="http://localhost:8080/comente-sobre/">Criar Comentario</a>
	<br />
	<br />
	<table border="1" >
		<tr>
			<th>email</th>
			<th>Assunto</th>
			<th>Comentário</th>
		</tr>
		<c:forEach items="${comentarios}" var="comentario">
			<tr>
				<td>${comentario.email}</td>
				<td>${comentario.assunto}</td>
				<td>${comentario.conteudo}</td>
			</tr>
		</c:forEach>
	</table>
	<c:import url="../rodape.jsp" />
</body>
</html>