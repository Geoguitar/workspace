<%@page import="br.com.contato.jdbc.modelo.Contato"%>
<%@page import="java.util.List"%>
<%@page import="br.com.contato.jdbc.dao.ContatoDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Lista Contatos</title>
</head>
<body>
<form action="">
	<font color="red" size="5">
	<%String Nome = (String)application.getAttribute("nomeContato"); %>
	Contato <%=Nome%> adicionado com sucesso!
	
	</font>
	<hr size="3" color="yellow"/>
</form>
	
	<table>
			
		<%
		ContatoDao dao = new ContatoDao();
		List<Contato> contatos = dao.getLista();
		for(Contato contato : contatos){
		%>
		<tr>
			<td><%=contato.getNome() %></td>
			<td><%=contato.getEmail() %></td>
			<td><%=contato.getEndereco() %></td>
			<td><%=contato.getDataNascimento().getTime() %></td>
		</tr>
		<%
		}
		%>

	</table>
</body>
</html>