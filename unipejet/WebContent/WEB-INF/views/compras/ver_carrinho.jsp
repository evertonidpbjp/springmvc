<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>


<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<h2> Resumo Geral da Compra </h2>
<tbody>

<table>
<c:forEach items="${shoppingCart.list }" var="item" varStatus="contador">
<h3> 
<tr> <td colspan="3"> <strong> Compra ${contador.index + 1} </strong></td> </tr>
<tr>
<th> Numero do Voo </th>
<th> Numero de passagens </th>
<th> Total da compra</th>
</tr>
<tr>
<td>  ${item.identificador} </td>
<td>  ${item.passagens}</td>
<td>  ${item.total } </td> 
</tr>
<tr> <td>  Passageiros </td> </tr>

<c:forEach items="${item.passageiros}" var="passageiro">

<tr>
<td> ${passageiro.nome } </td>

</tr>
<tr><td>&nbsp; </td></tr>
</c:forEach>
</c:forEach>
</table>
</body>
</html>