<!DOCTYPE html>
<html lang="en">
   <head>
      <title><g:layoutTitle default="Grails"/></title>
%{-- 		<link rel="stylesheet" href="${resource(dir: 'css', file: 'bootstrap.min.css')}" type="text/css">		
 --}%		
		<link rel="stylesheet" href="${resource(dir: 'css', file: 'navbar-fixed-top.css')}" type="text/css">
		<g:javascript library='jquery' plugin="jquery"/>
		<r:require modules="bootstrap"/>

      <g:layoutHead/>
      <r:layoutResources/>
      
   </head>
   <body>
		<div class="navbar navbar-default navbar-fixed-top">
		  <div class="container">
		    <div class="navbar-header">
		      <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
		        <span class="icon-bar"></span>
		        <span class="icon-bar"></span>
		        <span class="icon-bar"></span>
		      </button>
		      <a class="navbar-brand" href="#">Project name</a>
		    </div>
		    <div class="navbar-collapse collapse">
		      <ul class="nav navbar-nav">
		        <li ${controllerName == null ? 'class="active"' : ''}><a class="" href="${createLink(uri: '/')}">Home</a></li>
		        <li><a href="#about">About</a></li>
		        <li><a href="#contact">Contact</a></li>
		        <li class="dropdown">
		          <a href="#" class="dropdown-toggle" data-toggle="dropdown">Dropdown <b class="caret"></b></a>
		          <ul class="dropdown-menu">
		            <li><a href="#">Action</a></li>
		            <li><a href="#">Another action</a></li>
		            <li><a href="#">Something else here</a></li>
		            <li class="divider"></li>
		            <li class="dropdown-header">Nav header</li>
		            <li><a href="#">Separated link</a></li>
		            <li><a href="#">One more separated link</a></li>
		          </ul>
		        </li>
		      </ul>
		    </div><!--/.nav-collapse -->
		  </div>
		</div>

		<h3>Controller : ${params.controller}</h3><br/>
		<h3>Action : ${params.action}</h3>

		<div class="container">

			<g:layoutBody/>
  		</div>
		<r:layoutResources/>
   </body>
</html>