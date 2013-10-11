<%@ page import="webnico.TableHeaderSalesOrder" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="tboot">
		<g:set var="entityName" value="${message(code: 'tableHeaderSalesOrder.label', default: 'TableHeaderSalesOrder')}" />
		<title><g:message code="default.create.label" args="[entityName]" /></title>
		<r:require modules="typeahead-js"/>
		<r:require modules="typeahead-bootstrap-css"/>
		<g:javascript library='hogan' />
	</head>
	<body>
		<script type="text/javascript">
			$(document).ready(function(){
				$("#tbConto").typeahead({
					name: "conto",
					remote: "/webnico/AutoComplete/masterCustomer/?term=%QUERY",
					template: '{{value}} - {{alamatCust}}',
					engine: Hogan
				});
			});

		</script>

		
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>

		<input type="text" id="tbConto" />

		<div id="create-tableHeaderSalesOrder" class="content scaffold-create" role="main">
			<h1><g:message code="default.create.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<g:hasErrors bean="${tableHeaderSalesOrderInstance}">
			<ul class="errors" role="alert">
				<g:eachError bean="${tableHeaderSalesOrderInstance}" var="error">
				<li <g:if test="${error in org.springframework.validation.FieldError}">data-field-id="${error.field}"</g:if>><g:message error="${error}"/></li>
				</g:eachError>
			</ul>
			</g:hasErrors>
			<g:form action="save" >
				<fieldset class="form">
					<g:render template="form"/>
				</fieldset>
				<fieldset class="buttons">
					<g:submitButton name="create" class="btn btn-primary" value="${message(code: 'default.button.create.label', default: 'Create')}" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
