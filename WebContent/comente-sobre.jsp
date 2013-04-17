<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Inserir Comentário</title>
</head>
<body>
	<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
	<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
	<c:import url="cabecario.jsp" />
	<form:form action="comentar/adiciona" method="post"
		commandName="comentario">
		Email : <input type="text" name="email" />
		<br /> 
		Comentário: <br />
		<textarea name="conteudo" rows="3" cols="100"></textarea>
		<br />
		<form:hidden path="assunto" />
		<br />
		<input type="submit" value="Adicionar" />
	</form:form>
	<c:import url="rodape.jsp" />
</body>
</html>