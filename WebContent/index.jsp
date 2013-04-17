<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
	<c:import url="cabecario.jsp" />
	<form action="consulta" name="index" method="post">
		Informe o assunto do qual deseja comentar: <br />
		<br /> <input type="text" id="texto" /><br />
		<br /> <input type="submit" value="Comentar" name="valor"
			onclick="submitform()" />
	</form>

	<script type="text/javascript">
		function submitform() {
			document.index.setAttribute("action", document
					.getElementById("texto").value);
			document.index.submit();
		}
	</script>

	<c:import url="rodape.jsp" />
</body>
</html>