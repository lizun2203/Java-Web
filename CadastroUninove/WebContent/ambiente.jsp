<%@page import="java.util.ArrayList"%>
<%@page import="br.com.uninove.servlet.CrudCadastro"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="br.com.uninove.factory.ConexaoFactory"%>
<%@page import="java.sql.Connection"%>
<%@page import="br.com.uninove.domain.Cadastro"%>
<%@page import="java.util.List"%>
<%@page import="br.com.uninove.dao.CadastroDAO"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<!--Import Google Icon Font-->
<link href="http://fonts.googleapis.com/icon?family=Material+Icons"
	rel="stylesheet">
<!--Import materialize.css-->
<link type="text/css" rel="stylesheet" href="css/materialize.min.css"
	media="screen,projection" />

<!-- Meu JS -->
<script type="text/javascript" src="resources/javascript/efeitor.js"></script>
<!-- Meu css -->
<link rel="stylesheet" href="resources/css/ambiente.css">
<!-- JQuery -->

<!-- Compiled and minified CSS -->
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/materialize/0.98.2/css/materialize.min.css">

<!-- Compiled and minified JavaScript -->
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/materialize/0.98.2/js/materialize.min.js"></script>

<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<!--Let browser know website is optimized for mobile-->
<meta name="viewport" content="width=device-width, initial-scale=1.0" />

<title>AMBIENTE</title>
</head>
<%
String ra = (String) request.getSession().getAttribute("rah");
		
CadastroDAO dao = new CadastroDAO();
Cadastro c = new Cadastro();
c=dao.buscarCodigo(ra);
		
%>

<body>
<div id="nava">
<ul>
<li><i class="material-icons md-light">face</i><%= c.getNome() %></li>
<li><i class="md-36 material-icons">person_pin</i>Nome: <%= c.getNome() %> </li>
<li><i class="material-icons">info_outline</i> <%= c.getRa() %> </li>
</ul>

</div>
<div id="botao">
<center>
	<a class="waves-effect waves-light btn" href="index.jsp">
	<i class="material-icons left">not_interested</i>sair</a>
</center>
</div>

</body>
</html>