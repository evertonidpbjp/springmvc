<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>

<!DOCTYPE html>
<html lang="en">

<head>
   
   
   <sec:authorize access="isAuthenticated()">
<sec:authentication property="principal" var="user"/>
</sec:authorize>  
    <!-- Bootstrap Core CSS -->
    <link href="css/bootstrap.min.css" rel="stylesheet">
       <link rel="stylesheet" href="<c:url value='/resources/css/bootstrap.min.css'/>">
    <!-- Custom CSS -->
    <link href="css/sb-admin.css" rel="stylesheet">
      <link rel="stylesheet" href="<c:url value='/resources/css/sb-admin.css'/>">
    <!-- Custom Fonts -->
    <link href="font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">
    <link rel="stylesheet" href="<c:url value='/resources/font-awesome/css/font-awesome.min.css'/>">
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>SB Admin - Bootstrap Admin Template</title>

    <!-- Bootstrap Core CSS -->
    <link href="css/bootstrap.min.css" rel="stylesheet">

    <!-- Custom CSS -->
    <link href="css/sb-admin.css" rel="stylesheet">

    <!-- Custom Fonts -->
    <link href="font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">

    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
        <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->

<script type="text/javascript" src="http://ajax.aspnetcdn.com/ajax/jQuery/jquery-3.1.0.min.js"></script>
 <script type="text/javascript" src="http://ajax.aspnetcdn.com/ajax/jquery.validate/1.15.0/jquery.validate.min.js"> </script>
<script>
$(document).ready(function(){
	$('#formulario').validate({
	 rules: {

	   origem: {
	         required: true
	         

	},
	   destino: {

	      required: true
	     

	},

	    duracao: {

	   required: true
	},

	    distancia: {
	    
	    required: true,
	    
	},

	   preco: {
	    required: true
	    

	},
	capacidade: {
       required: true

	},
	
	 data: {
	       required: true

		},

	 hora_partida: {
	   required: true,
	  
	 
	 }
	},
	
	messages:
	{
		 origem: {
	         required: "Campo obrigat�rio"
	         

	},
	   destino: {

	      required: "Campo obrigat�rio"
	     

	},

	    duracao: {

	   required: "Campo obrigat�rio"
	},

	    distancia: {
	    
	    required: "Campo obrigat�rio"
	    
	},

	   preco: {
	    required: "Campo obrigat�rio"
	    

	},
	capacidade: {
       required: "Campo obrigat�rio"

	},

	data: {
	       required: "Verifique a Data"

		},
	
	 hora_partida: {
	   required: "Campo obrigat�rio"
	  
	 
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
                    <a href="#" class="dropdown-toggle" data-toggle="dropdown"><i class="fa fa-user"></i> ${user.name} <b class="caret"></b></a>
                    <ul class="dropdown-menu">
                        <li>
                            <a href="#"><i class="fa fa-fw fa-user"></i> Profile</a>
                        </li>
                 
                    </ul>
                </li>
            </ul>
            <!-- Sidebar Menu Items - These collapse to the responsive navigation menu on small screens -->
            <div class="collapse navbar-collapse navbar-ex1-collapse">
                <ul class="nav navbar-nav side-nav">
                    <li>
                        <a href="${spring:mvcUrl('UC#homePage').build()}"><i class="fa fa-fw fa-dashboard"></i> Voltar para a Home</a>
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
                            Cadastro de voos
                        </h1>
                        <h4> <span style="color: blue">${sucesso}</h4>
                        
                        <ol class="breadcrumb">
                            <li>
                                <i class="fa fa-dashboard"></i>  <a  href="${spring:mvcUrl('UC#homePage').build()}">Geral</a>
                            </li>
                            <li class="active">
                                <i class="fa fa-file"></i> Cadastro de voos
                            </li>
                        </ol>
                    </div>
                </div>
                <!-- /.row -->
                <div class="row">
             <form:form servletRelativeAction="/voos/salvar_voos" method="post"  commandName="voos" name="formulario" id="formulario">
                    <div class="col-lg-6">
                     
                        <div class="form-group" name="origem">
                            <label>Cidade de origem</label>
                            <select class="form-control" name="origem">
                                <option value="Recife"selected>Recife </option>
                                <option value="Rio de Janeiro">Rio de Janeiro</option>
                                <option value="Fortaleza">Fortaleza</option>
                              
                            </select>
                        </div>
                        <div class="form-group">
                            <label>Cidade de destino</label>
                            <select class="form-control" name="destino">
                               <option value="Recife"selected>Recife </option>
                                <option value="Rio de Janeiro">Rio de Janeiro</option>
                                <option value="Fortaleza">Fortaleza</option>
                              
                                
                            </select>
                        </div>
                        <div class="form-group">
                                <label>hora_partida</label>
                                <div class="radio">
                                    <label>
                                        <input type="radio" name="hora_partida" id="hora_partida1" value="07:00" checked>07:00
                                    </label>
                                </div>
                                <div class="radio">
                                    <label>
                                        <input type="radio" name="hora_partida" id="hora_partida2" value="08:00">08:00
                                    </label>
                                </div>
                                <div class="radio">
                                    <label>
                                        <input type="radio" name="hora_partida" id="hora_partida3" value="09:00">09:00
                                    </label>
                                </div>
                                <div class="radio">
                                    <label>
                                        <input type="radio" name="hora_partida" id="hora_partida3" value="10:00">10:00
                                    </label>
                                </div>
                                <div class="radio">
                                    <label>
                                        <input type="radio" name="hora_partida" id="hora_partida3" value="11:00">11:00
                                    </label>
                                </div>
                                 <div class="radio">
                                    <label>
                                        <input type="radio" name="" id="hora_partida3" value="12:00">12:00
                                    </label>
                           
                           
                        
                           
                                </div>
                         <input type="date" class="form-control" placeholder="insira o data aqui" name="data" id="data" value="2016-08-26">
                                   <div class="radio">
                                  
                           
                        
                           
                                </div>
                        
                            </div>                        
                    </div>
                    <div class="col-lg-6">
                        <div class="form-group">
                                    <label>Capacidade de passageiros</label>
                                    <input type="number" class="form-control" placeholder="insira o valor aqui" name="capacidade" min="1">
                        </div>
                        <label for="">Preco unitario</label>
                        <div class="form-group input-group">
                                <span class="input-group-addon">R$</span>
                                <input type="number" class="form-control" name="preco" min="1">
                                <span class="input-group-addon">.00</span>
                        </div>
                        <label for="">Distancia</label>
                        <div class="form-group input-group">
                                <input type="number" class="form-control" name="distancia">
                                <span class="input-group-addon">Km</span>
                            </div>
                        <div class="form-group input-group">
                       <label for="">Duracao</label>
                       <input class="form-control" type="number" name="duracao">  
                                <span class="input-group-addon">horas</span>
                            </div>
                            <div class="form-group">
                           
                      
                                <input type="hidden" name="assentos" value="100"  />
                           
                        </div>
                        
                       
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

    <!-- Bootstrap Core JavaScript -->
 <script src="js/bootstrap.min.js"></script>

</body>

</html>
