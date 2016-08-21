<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib prefix="security" uri="http://www.springframework.org/security/tags" %>
<%@taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>


Bem vindo a página inicial    <a href="${spring:mvcUrl('CC#carrinho').build()}"> Seu carrinho (${shoppingCart.quantity})</a>
<sec:authorize access="isAuthenticated()">
		<sec:authentication property="principal" var="user"/>
		<div>
Olá ${user.name} <br>
Seus créditos em Milhas:<fmt:formatNumber type="number" maxFractionDigits="3" value="${user.cartao_credito}" />
<c:set var="usuario" scope="session" value="${user.login}"/>

</div>
	</sec:authorize>

<br>
<a href="${spring:mvcUrl('UC#list').build()}">Listar Usuários </a> ${contador} <br>
<a href="${spring:mvcUrl('UC#cadastroPage').build()}">Cadastrar Usuário </a><br>
<a href="${spring:mvcUrl('VC#cadastroVoos').build()}">Cadastrar Voos </a><br>
<a href="${spring:mvcUrl('VC#pesquisa_voo').arg(0, '').build()}"> Pesquisar Voos </a><br>
<a href="${spring:mvcUrl('VC#list_voo').build()}">Listar Voos </a><br>
<a href="${spring:mvcUrl('UC#logoutPage').build()}"> Logout </a><br>

</body>
</html>