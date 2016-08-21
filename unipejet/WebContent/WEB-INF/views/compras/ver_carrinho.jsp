<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>

</head>
<body>
<h2> Resumo Geral da Compra </h2>
<tbody>
<c:set var="total" value="0"/>
<c:set var="numero_passagens" value="0"/>
<c:set var="total_milhas" value="0"/>
<table>

<c:forEach items="${shoppingCart.list }" var="item" varStatus="contador">
<h3> 
<tr> <td colspan="3"> <strong> Compra ${contador.index + 1} </strong></td> </tr>
<tr>
<th> Voo </th>
<th> Passagens </th>
<th> Valor em Reais <c:set var="id" value="${item.numero_compra}"/></th>
<th> Valor em Milhas </th>
</tr>
<c:set var="total" value="${total + item.total}"/>
<c:set var="numero_passagens" value="${numero_passagens + item.passagens}"/>
<c:set var="total_milhas" value="${total_milhas + item.total_milhas}"/>
<tr>
<td>  ${item.identificador}  </td>
<td>  ${item.passagens}     </td>
<td>  ${item.total }        </td> 
<td>  ${item.total_milhas} </td>
<td> <a href="${spring:mvcUrl('CC#remove_item').arg(0,id).build()}"> remover  </a> </td>
</tr>

<tr> <td>  Passageiros </td> </tr>

<c:forEach items="${item.passageiros}" var="passageiro">

<tr>
<td> ${passageiro.nome } </td>

</tr>
<tr><td>&nbsp; </td></tr>
</c:forEach>
</c:forEach>
<tr><td>   </td> </tr>
<tr> <td>


<td> </tr>

</table>

<form:form servletRelativeAction="/compras/finalizar_compra" method="post"  commandName="registro">
<sec:authorize access="isAuthenticated()">
		<sec:authentication property="principal" var="user"/>
		<div>
<c:set var="usuario" scope="session" value="${user.login}"/>

Responsavel
<form:input path="responsavel" name="responsavel" id="responsavel" value="${user.login}" type="text" readonly="true" />
<form:errors path="responsavel" style="color: red"/>

</div>
	</sec:authorize>

Numero de Passagens 
<form:input path="numero_passagens" name="numero_passagens" id="numero_passagens" value="${numero_passagens}" type="text" readonly="true" />
<form:errors path="numero_passagens" style="color: red"/> <br>

Total da Compra
<form:input path="total" name="total" value="${total}" id="total" type="text" readonly="true"/><br>
<form:errors path="total" style="color: red"/>


Total da Compra em Milhas
<form:input path="total_milhas" name="total_milhas" value="${total_milhas}" id="total_milhas" type="text" readonly="true"/><br>
<form:errors path="total_milhas" style="color: red"/> <br>

<input type="submit" value="Efetuar Pagamento"/>


</form:form>

</body>
</html>