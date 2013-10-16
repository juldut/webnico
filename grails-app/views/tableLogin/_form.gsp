<%@ page import="webnico.TableLogin" %>



<div class="fieldcontain ${hasErrors(bean: tableLoginInstance, field: 'username', 'error')} ">
	<label for="username">
		<g:message code="tableLogin.username.label" default="Username" />
		
	</label>
	<g:textField name="username" maxlength="30" value="${tableLoginInstance?.username}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: tableLoginInstance, field: 'password', 'error')} ">
	<label for="password">
		<g:message code="tableLogin.password.label" default="Password" />
		
	</label>
	<g:textField name="password" maxlength="36" value="${tableLoginInstance?.password}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: tableLoginInstance, field: 'userLevel', 'error')} ">
	<label for="userLevel">
		<g:message code="tableLogin.userLevel.label" default="User Level" />
		
	</label>
	<g:field name="userLevel" type="number" value="${tableLoginInstance.userLevel}"/>
</div>

