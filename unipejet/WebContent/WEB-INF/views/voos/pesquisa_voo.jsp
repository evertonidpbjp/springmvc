<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>



<!DOCTYPE html>
<html>

<head>
<meta charset="UTF-8">
<title> Pesquisar Voo </title>
<!--   <link href="<c:url value="/resources/js/arquivo.css"/>" rel="stylesheet"> -->
<script src="<c:url value="/resources/js/jquery.js"/>" type="text/javascript"> </script>
<!-- 
<script>

$(function($){
	
      var data = $('#releaseDate').val();
 
        
    
    
        $.get("converteData", {'data' : data}, function(resposta) {
        	$("#out").html("Finalizado");
        	alert(resposta);
        	});
        
   
    });
});
</script>
-->

</head>

<body>
<a href="${spring:mvcUrl('CC#carrinho').build()}"> Seu carrinho (${shoppingCart.quantity})</a>

<form:form servletRelativeAction="/voos/pesquisa_voo" method="post"  commandName="">
		<span style="color: blue"> ${sucesso } </span>
		
	<div>
Origem
<select name="origem" id="origem">
		<option value="Fortaleza" selected>      Fortaleza      </option>
	    <option value="Recife">         Recife         </option>
	    <option value="Rio de Janeiro"> Rio de Janeiro </option>
</select>

Destino

<select name="destino" id="destino">
		<option value="Fortaleza">      Fortaleza      </option>
	    <option value="Recife" selected>         Recife         </option>
	    <option value="Rio de Janeiro"> Rio de Janeiro </option>
</select>


<input  type="date" name="data" id="data"  required>
<input type="submit" id="pesquisa" name="pesquisa" value="pesquisar">	

	</div>

<br> <br>
<table>



<tr>
<th> Identificador do Voo </th>
<th>Origem</th>
<th> Destino </th>
<th> Assentos Disponiveis</th>
<th> Horário</th>
<th> Duração</th>
<th> Preço </th>
<th> Data<th>


</tr>

<c:forEach items="${voos}" var="voo">
<tr>

<td> ${voo.identificador } </td>
<td> ${voo.origem} </td>

<td> ${voo.destino}  </td>

<td> ${voo.assentos} </td>

<td align="center"> ${voo.hora_partida} </td>

<td> ${voo.duracao} </td>
<td> ${voo.preco}   </td>
<td> ${voo.data}</td>

<c:set var="mensagem"  value="${voo.assentos }" />
<c:forEach items="${shoppingCart.list }" var="item" varStatus="contador">
<c:if test='${voo.identificador == item.identificador}'>
<c:set var="mensagem"  value="-2" />

</c:if>
</c:forEach>
<td align="center">
<c:if test='${mensagem == 0}'>  
<span style="color: red"> Passagens Esgotadas </span>
</c:if>

<c:if test='${mensagem > 0}'>  
<a href="${spring:mvcUrl('CC#detalhes_compra').arg(0,voo.identificador).build()}"> Comprar Agora  </a> 
</c:if>

<c:if test='${mensagem < 0}'>  
<span style="color: green"> Reservado </span>
</c:if>



</td>
</tr>
</c:forEach>

</table>
				




</form:form>
</body>
 

</html>
