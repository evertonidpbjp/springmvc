<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib prefix="security" uri="http://www.springframework.org/security/tags" %>
<%@taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html;
charset=UTF-8">

<script type="text/javascript" src="http://ajax.aspnetcdn.com/ajax/jQuery/jquery-3.1.0.min.js"></script>
 <script type="text/javascript" src="http://ajax.aspnetcdn.com/ajax/jquery.validate/1.15.0/jquery.validate.min.js"> </script>
<script type="text/javascript">

// Calculando o preço da quantidade de produtos de acordo com a variação do number

$(function($){
	 
    $('#passagens').click(function(){
   
    //Pega valores dos campos e faz as devidas conversões
    var passagens = $('#passagens').val();
    var preco = $('#preco').val();
    assentos = parseFloat(document.getElementById("assentos").value);
  
    var restantes = assentos - passagens;
 
    
  //Verifia se o número de assentos ainda está disponível
    if(restantes <= 0)
    	{
    	 
    	   restantes = 0; 
    	    $('#passagens').attr({
    	    	   'max': passagens
    	    	  
    	    	});
    	}
  

   
    
    $('#restantes').attr({
 	   'value': restantes
 	  
 	});
    
    //Calcula total em milhas
    
    var distancia = $('#distancia').val(); 
    var total_milhas = distancia * passagens;
    $('#total_milhas').attr({
   	   'value': total_milhas
   	  
   	});

    
    
    // Calcula o total e mostra no campo
    var total = preco * passagens;
    $('#total').attr({
  	   'value': total
  	  
  	});
     
    

      
    
      });
      
      
    });


</script>

</head>
<body>

<a href="${spring:mvcUrl('CC#carrinho').build()}"> Seu carrinho (${shoppingCart.quantity})</a>
<sec:authorize access="isAuthenticated()">
		<sec:authentication property="principal" var="user"/>
		<div>
 Olá ${user.name}

</div>
	</sec:authorize>

  
<h2> Voo de número ${voo.identificador} de ${voo.origem } para ${voo.destino} </h2>
<!--
<table>
<tr>
<th>Identificador</th>
<th>Origem</th>
<th> Destino </th>
<th> Hora de Partida </th>
<th> Data</th>

<th> Preço em milhas </th>
<th> Preço em reais </th>
</tr>
<tr>
<td> ${voo.identificador}  </td>

<td> ${voo.distancia * 0.62137} </td>
<td> ${voo.origem} </td>

<td> ${voo.destino}  </td>

<td align="center"> ${voo.hora_partida} </td>

<td> ${voo.data} </td>



</table>
-->
<h2> Defina o número de assentos</h2>

<form:form name="formulario" method="post" servletRelativeAction="/compras/define_passageiros" id="formulario" >

		<input type="hidden" name="identificador" id="identificador" value="${voo.identificador}" />
		<div>
			<label for="passagens"> Número de Passagens</label>
			
			<c:set var="tamanho"  value="0"/>
			<c:if test='${voo.assentos >= 9}'/> 
			<c:if test='${voo.assentos <  9}'/> 
			<c:choose>
  			<c:when test="${voo.assentos >= 9}">
 				<c:set var="tamanho"  value="9" />
  			</c:when>
 		    <c:when test="${voo.assentos < 9}">
  			    <c:set var="tamanho"  value="${voo.assentos}"/>
  			</c:when>
 		 <c:otherwise>
  				<c:set var="tamanho"  value="9" />
  		</c:otherwise>
		</c:choose>
			
			
			<select name="passagens" id="passagens"  >  
			<c:forEach begin="1" end="${tamanho}" varStatus="loop">
			<option value="${loop.index}"> ${loop.index} </option>
			</c:forEach>
			</select>
			
			
			 <!--   <input id="passagens"  type="number" name="passagens" style="width: 50px" value="1" max='${voo.assentos}' min="1"  /> --> 
		 
		</div>
	   <label for="preco"> Distancia em milhas </label>
		<input name="distancia" id="distancia" type="text" value="${voo.distancia * 0.62137}" readonly/>  <br>
		<label for="preco"> Preço Unitário</label>
		<input type="number" name="preco" id="preco" value="${voo.preco}" disabled><br>
		<label for="preco"> Assentos Disponíveis</label>
		<input type="number" name="assentos" id="assentos" value="${voo.assentos}" disabled><br>
        <input name="restantes" id="restantes" type="text"  value="${voo.assentos}"   readonly/> <br>
		<label for="total"> Total : R$ </label>
		<input name="total" id="total" type="text" value="${voo.preco}" readonly/>  <br>
        <label for="total_milhas"> Total em milhas :  </label>
       <input name="total_milhas" id="total_milhas" type="text" value="${voo.distancia * 0.62137}" readonly/>  <br>
        
        
        <br>
         
         <input type="submit" value="Continuar ->" id="sub">



</form:form>


<script type="text/javascript">

// Calculando o preço da quantidade de produtos de acordo com a variação do number

$(function($){
	 

    $('#passagens').change(function(){
   
    //Pega valores dos campos e faz as devidas conversões
    var passagens = $('#passagens').val();
    var preco = $('#preco').val();
    assentos = parseFloat(document.getElementById("assentos").value);
  
    var restantes = assentos - passagens;
 
  
    //Verifia se o número de assentos ainda está disponível
    if(restantes <= 0)
    	{
    	 
    	   restantes = 0; 
    	    $('#passagens').attr({
    	    	   'max': assentos
    	    	});
    	      
    	    
    	    
    	
    	
    	}

    

   
   
    
    $('#restantes').attr({
 	   'value': restantes
 	  
 	});
    
    // Calcula o total e mostra no campo
    var total = preco * passagens;
    $('#total').attr({
  	   'value': total
  	  
  	});
     
    

    
    
    
      });

   
    
    });



</script>



</body>
</html>