
<%@ page import="webnico.Mahasiswa" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'mahasiswa.label', default: 'Mahasiswa')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-mahasiswa" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-mahasiswa" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
				<thead>
					<tr>
					
						<g:sortableColumn property="nama" title="${message(code: 'mahasiswa.nama.label', default: 'Nama')}" />
					
						<g:sortableColumn property="tanggalLahir" title="${message(code: 'mahasiswa.tanggalLahir.label', default: 'Tanggal Lahir')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${mahasiswaInstanceList}" status="i" var="mahasiswaInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${mahasiswaInstance.id}">${fieldValue(bean: mahasiswaInstance, field: "nama")}</g:link></td>
					
						<td><g:formatDate date="${mahasiswaInstance.tanggalLahir}" /></td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${mahasiswaInstanceTotal}" />
			</div>
		</div>
	</body>
</html>
