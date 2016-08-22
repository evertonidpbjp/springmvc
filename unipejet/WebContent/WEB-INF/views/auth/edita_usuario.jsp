<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib prefix="security" uri="http://www.springframework.org/security/tags" %>
<%@taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>

<!DOCTYPE html>
<html lang="en">

<head>
<sec:authorize access="isAuthenticated()">
<sec:authentication property="principal" var="usuario"/>
</sec:authorize>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>Unipê Airlines</title>

     <!-- Bootstrap Core CSS -->
    <link href="css/bootstrap.min.css" rel="stylesheet">
       <link rel="stylesheet" href="<c:url value='/resources/css/bootstrap.min.css'/>">
    <!-- Custom CSS -->
    <link href="css/sb-admin.css" rel="stylesheet">
      <link rel="stylesheet" href="<c:url value='/resources/css/sb-admin.css'/>">
    <!-- Custom Fonts -->
    <link href="font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">
    <link rel="stylesheet" href="<c:url value='/resources/font-awesome/css/font-awesome.min.css'/>">

    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
        <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->

<script>

$(function($){
	 
    // No id #enviar assim que clicar executa a fun��o
    $('#releaseDate').blur(function(){
 
    /* veja que eu criei vari�veis para guardar os item
     * e s� precisei usar a fun��o val() para
     * retornar o valor dos campo para a v�rivel
     */
 
      var data = $('#releaseDate').val();
 
        dataAtual = new Date(data);
        var ano = dataAtual.getYear();
        var idade = 116 - ano;
    	$("#out").html(idade);
       
    	$('#idade').attr({
       	   'value': idade
       	  
       	});
    	
    });
});
</script>

<script>
$(document).ready(function(){
	$('#formulario').validate({
	 rules: {

	   name: {
	         required: true
	         

	},
	   login: {

	      required: true
	     

	},

	    releaseDate: {

	   required: true
	},

	   idade: {
	    
	    required: true,
	    min: 18
	},

	   role: {
	    required: true
	    

	},
	  roles: {
       required: true

	},
	
	 password: {
	       required: true

		},

	  senha_testa: {
	   required: true,
	   equalTo: "#password"
	 
	 }
	},
	
	messages:
	{
		 login: {
	         required: "Campo obrigat�rio"
	         

	},
	    name: {

	      required: "Campo obrigat�rio"
	     

	},

	    releaseDate: {

	   required: "Verifique a Data"
	},

	     idade: {
	    
	    required: "A idade m�nima = 18 anos",
	    min: "Idade minina 18 anos"
	},

	   role: {
	    required: "Campo obrigat�rio"
	    

	},
	 roles: {
       required: "Campo obrigat�rio"

	},

	 password: {
	       required: "Verifique a Data"

		},
	
	 senha_testa: {
	   required: "Campo obrigatorio",
	   equalTo: " As senhas devem ser iguais"
	 
	 }

	}

	});

	});
 
</script>

<style>  label.error{color: red; padding: 2px}</style>



</head>

<body>

    <div id="wrapper">

        <!-- Navigation -->
        <nav class="navbar navbar-inverse navbar-fixed-top" role="navigation">
            <!-- Brand and toggle get grouped for better mobile display -->
            <div class="navbar-header">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-ex1-collapse">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <a class="navbar-brand" href="${spring:mvcUrl('UC#homePage').build()}">UnipeJet</a>
            </div>
            <!-- Top Menu Items -->
            <ul class="nav navbar-right top-nav">
                <li class="dropdown">
                    <a href="#" class="dropdown-toggle" data-toggle="dropdown"><i class="fa fa-envelope"></i> <b class="caret"></b></a>
                    <ul class="dropdown-menu message-dropdown">
                        <li class="message-preview">
                            <a href="#">
                                <div class="media">
                                    <span class="pull-left">
                                        <img class="media-object" src="http://placehold.it/50x50" alt="">
                                    </span>
                                    <div class="media-body">
                                        <h5 class="media-heading">
                                            <strong>John Smith</strong>
                                        </h5>
                                        <p class="small text-muted"><i class="fa fa-clock-o"></i> Yesterday at 4:32 PM</p>
                                        <p>Lorem ipsum dolor sit amet, consectetur...</p>
                                    </div>
                                </div>
                            </a>
                        </li>
                        <li class="message-preview">
                            <a href="#">
                                <div class="media">
                                    <span class="pull-left">
                                        <img class="media-object" src="http://placehold.it/50x50" alt="">
                                    </span>
                                    <div class="media-body">
                                        <h5 class="media-heading">
                                            <strong>John Smith</strong>
                                        </h5>
                                        <p class="small text-muted"><i class="fa fa-clock-o"></i> Yesterday at 4:32 PM</p>
                                        <p>Lorem ipsum dolor sit amet, consectetur...</p>
                                    </div>
                                </div>
                            </a>
                        </li>
                        <li class="message-preview">
                            <a href="#">
                                <div class="media">
                                    <span class="pull-left">
                                        <img class="media-object" src="http://placehold.it/50x50" alt="">
                                    </span>
                                    <div class="media-body">
                                        <h5 class="media-heading">
                                            <strong>John Smith</strong>
                                        </h5>
                                        <p class="small text-muted"><i class="fa fa-clock-o"></i> Yesterday at 4:32 PM</p>
                                        <p>Lorem ipsum dolor sit amet, consectetur...</p>
                                    </div>
                                </div>
                            </a>
                        </li>
                        <li class="message-footer">
                            <a href="#">Read All New Messages</a>
                        </li>
                    </ul>
                </li>
                <li class="dropdown">
                    <a href="#" class="dropdown-toggle" data-toggle="dropdown"><i class="fa fa-bell"></i> <b class="caret"></b></a>
                    <ul class="dropdown-menu alert-dropdown">
                        <li>
                            <a href="#">Alert Name <span class="label label-default">Alert Badge</span></a>
                        </li>
                        <li>
                            <a href="#">Alert Name <span class="label label-primary">Alert Badge</span></a>
                        </li>
                        <li>
                            <a href="#">Alert Name <span class="label label-success">Alert Badge</span></a>
                        </li>
                        <li>
                            <a href="#">Alert Name <span class="label label-info">Alert Badge</span></a>
                        </li>
                        <li>
                            <a href="#">Alert Name <span class="label label-warning">Alert Badge</span></a>
                        </li>
                        <li>
                            <a href="#">Alert Name <span class="label label-danger">Alert Badge</span></a>
                        </li>
                        <li class="divider"></li>
                        <li>
                            <a href="#">View All</a>
                        </li>
                    </ul>
                </li>
                <li class="dropdown">
                    <a href="#" class="dropdown-toggle" data-toggle="dropdown"><i class="fa fa-user"></i> ${usuario.name} <b class="caret"></b></a>
                    <ul class="dropdown-menu">
                        <li>
                            <a href="#"><i class="fa fa-fw fa-user"></i> Profile</a>
                        </li>
                    
                </li>
            </ul>
            <!-- Sidebar Menu Items - These collapse to the responsive navigation menu on small screens -->
            <div class="collapse navbar-collapse navbar-ex1-collapse">
                <ul class="nav navbar-nav side-nav">
                    <li>
                        <a href="${spring:mvcUrl('UC#homePage').build()}"><i class="fa fa-fw fa-dashboard"></i>Voltar para a Home</a>
                    </li>
               
                      <li>      
               <a href="${spring:mvcUrl('UC#logoutPage').build()}"><i class="fa fa-fw fa-user"></i> Logout</a>
                    </li>
               
                </ul>
            </div>
            <!-- /.navbar-collapse -->
        </nav>

        <div id="page-wrapper">

            <div class="container-fluid">

                <!-- Page Heading -->
                <div class="row">
                    <div class="col-lg-12">
                        <h1 class="page-header">
                      Editando perfil do Usuario
                        </h1>
                        <ol class="breadcrumb">
                            <li>
                                <i class="fa fa-dashboard"></i>  <a href="index.html">Geral</a>
                            </li>
                            <li class="active">
                                <i class="fa fa-file"></i> Editando Perfil do Usuario
                            </li>
                        </ol>
                    </div>
                </div>
                <!-- /.row -->
                <div class="row">
                
               <form:form servletRelativeAction="/efetuar_alteracao" method="post"  commandName="user" name="formulario" id="formulario">
                    	<span style="color: blue"> ${sucesso } </span>
		                 <span style="color: red"> ${erro} </span>
                    
                    <div class="col-lg-6">
                        
                         <div class="form-group">
                                <label>Login</label>
                                <input type="email" name="login" id="login" class="form-control" placeholder="insira o email aqui" value="${user.login}" readonly>
                        </div>
                        
                        <div class="form-group">
                                <label>Nome</label>
                                <input type="text" class="form-control" placeholder="insira o nome aqui" value="${user.name}" name="name" id="name" >
                        
           
                        </div>
                
                        
                       
                
                        <div class="form-group">
                                
                                <label>Documento</label>
                                <input type="text" class="form-control" placeholder="insira o email aqui" name="documento" id="documento"value="${user.documento}">
                        </div>
                    
                        <div class="form-group">
                                 <div class="form-group">
                                <label>Data de Nascimento</label>
                                <input type="date" class="form-control" placeholder="insira o data aqui" name="releaseDate" id="releaseDate" value="${user.releaseDate }">
                                 <input name="idade" type="number" id="idade" min="18"  value="${user.idade}" style="display: none" />
                        </div>   
                                   
                        </div>

                       
                    </div>                        
                    <div class="col-lg-6">
                      
                             <div class="form-group">
                                  <label>Digite a nova senha</label>
                                <input type="password" class="form-control" placeholder="" name="password" id="password">
                              
                             
                        </div>
                       
                       
                                 <div class="form-group">
                                <label>Repita a senha</label>
                                <input type="password" class="form-control" placeholder="" name="senha_testa" id="senha_testa">
                                
                              
                        </div>
                       
                       <sec:authorize access="hasRole('ROLE_ADMIN')">
                        <div class="form-group"> 
                                <label> Nivel de Acesso</label> <br>
                              <select name="roles[0].name"  style="width: 260px; height: 25px" id="roles">
                              <option value="ROLE_CLIENTE" selected> CLIENTE (conta limitada)</option>
                              <option value="ROLE_ADMIN"> ADMINISTRADOR</option>
                              </select>
                         <input type="hidden" name="role"  id="role" value="ROLE_CLIENTE"/>
                        
                        </div>
                        </sec:authorize>
                        
                        
                            <sec:authorize access="hasRole('ROLE_CLIENTE')">  

                                 <input  type="hidden" name="role" value="ROLE_CLIENTE"/>
                                 <input  type="hidden" name="roles[0].name" value="ROLE_CLIENTE"/>

                            </sec:authorize>
    
                        <input type="hidden" class="form-control" placeholder="" name="tipo_documento" id="tipo_documento" value="${user.tipo_documento}">
             
                        <input name="cartao_milha" type="hidden" id="cartao_milha" value="${user.cartao_milha}" readonly/>
                        <input name="cartao_credito" type="hidden" id="cartao_credito" value="${user.cartao_credito}" />
          
                      
                        <input type="submit" class="btn btn-lg btn-primary" value="Cadastrar"> 
                        <input type="reset" class="btn btn-lg btn-primary" value="Limpar Campos">
                    </div>
                </div>
                </form:form>
                </div>
            </div>
            <!-- /.container-fluid -->

        </div>
        <!-- /#page-wrapper -->

    </div>
    <!-- /#wrapper -->

    <!-- jQuery -->
    <script src="js/jquery.js"></script>
   
   <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.0/jquery.min.js"></script> 
 <script type="text/javascript" src="http://ajax.aspnetcdn.com/ajax/jQuery/jquery-3.1.0.min.js"></script>
 <script type="text/javascript" src="http://ajax.aspnetcdn.com/ajax/jquery.validate/1.15.0/jquery.validate.min.js"> </script>
    <!-- Bootstrap Core JavaScript -->
    <script src="js/bootstrap.min.js"></script>
     <script type="text/javascript" src="<c:url value='/resources/js/arquivo.js'/>"> </script>
</body>

</html>
