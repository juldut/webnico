
<%@ page import="webnico.TableHeaderSuratJalan" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'tableHeaderSuratJalan.label', default: 'TableHeaderSuratJalan')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-tableHeaderSuratJalan" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-tableHeaderSuratJalan" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
				<thead>
					<tr>
					
						<g:sortableColumn property="nomorHeaderSuratJalan" title="${message(code: 'tableHeaderSuratJalan.nomorHeaderSuratJalan.label', default: 'Nomor Header Surat Jalan')}" />
					
						<g:sortableColumn property="tanggalTertera" title="${message(code: 'tableHeaderSuratJalan.tanggalTertera.label', default: 'Tanggal Tertera')}" />
					
						<g:sortableColumn property="idCustomer" title="${message(code: 'tableHeaderSuratJalan.idCustomer.label', default: 'Id Customer')}" />
					
						<g:sortableColumn property="namaCustomer" title="${message(code: 'tableHeaderSuratJalan.namaCustomer.label', default: 'Nama Customer')}" />
					
						<g:sortableColumn property="nomorHeaderSalesOrder" title="${message(code: 'tableHeaderSuratJalan.nomorHeaderSalesOrder.label', default: 'Nomor Header Sales Order')}" />
					
						<g:sortableColumn property="username" title="${message(code: 'tableHeaderSuratJalan.username.label', default: 'Username')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${tableHeaderSuratJalanInstanceList}" status="i" var="tableHeaderSuratJalanInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${tableHeaderSuratJalanInstance.id}">${fieldValue(bean: tableHeaderSuratJalanInstance, field: "nomorHeaderSuratJalan")}</g:link></td>
					
						<td><g:formatDate date="${tableHeaderSuratJalanInstance.tanggalTertera}" /></td>
					
						<td>${fieldValue(bean: tableHeaderSuratJalanInstance, field: "idCustomer")}</td>
					
						<td>${fieldValue(bean: tableHeaderSuratJalanInstance, field: "namaCustomer")}</td>
					
						<td>${fieldValue(bean: tableHeaderSuratJalanInstance, field: "nomorHeaderSalesOrder")}</td>
					
						<td>${fieldValue(bean: tableHeaderSuratJalanInstance, field: "username")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${tableHeaderSuratJalanInstanceTotal}" />
			</div>
		</div>
	</body>
</html>
