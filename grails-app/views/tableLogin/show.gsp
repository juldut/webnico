
<%@ page import="webnico.TableLogin" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'tableLogin.label', default: 'TableLogin')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-tableLogin" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-tableLogin" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list tableLogin">
			
				<g:if test="${tableLoginInstance?.username}">
				<li class="fieldcontain">
					<span id="username-label" class="property-label"><g:message code="tableLogin.username.label" default="Username" /></span>
					
						<span class="property-value" aria-labelledby="username-label"><g:fieldValue bean="${tableLoginInstance}" field="username"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${tableLoginInstance?.password}">
				<li class="fieldcontain">
					<span id="password-label" class="property-label"><g:message code="tableLogin.password.label" default="Password" /></span>
					
						<span class="property-value" aria-labelledby="password-label"><g:fieldValue bean="${tableLoginInstance}" field="password"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${tableLoginInstance?.userLevel}">
				<li class="fieldcontain">
					<span id="userLevel-label" class="property-label"><g:message code="tableLogin.userLevel.label" default="User Level" /></span>
					
						<span class="property-value" aria-labelledby="userLevel-label"><g:fieldValue bean="${tableLoginInstance}" field="userLevel"/></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form>
				<fieldset class="buttons">
					<g:hiddenField name="id" value="${tableLoginInstance?.id}" />
					<g:link class="edit" action="edit" id="${tableLoginInstance?.id}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
