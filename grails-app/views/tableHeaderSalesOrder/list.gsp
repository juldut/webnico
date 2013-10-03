
<%@ page import="webnico.TableHeaderSalesOrder" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'tableHeaderSalesOrder.label', default: 'TableHeaderSalesOrder')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-tableHeaderSalesOrder" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-tableHeaderSalesOrder" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
				<thead>
					<tr>
					
						<g:sortableColumn property="nomorHeaderSalesOrder" title="${message(code: 'tableHeaderSalesOrder.nomorHeaderSalesOrder.label', default: 'Nomor Header Sales Order')}" />
					
						<g:sortableColumn property="tanggalTertera" title="${message(code: 'tableHeaderSalesOrder.tanggalTertera.label', default: 'Tanggal Tertera')}" />
					
						<g:sortableColumn property="idCustomer" title="${message(code: 'tableHeaderSalesOrder.idCustomer.label', default: 'Id Customer')}" />
					
						<g:sortableColumn property="approvedBy" title="${message(code: 'tableHeaderSalesOrder.approvedBy.label', default: 'Approved By')}" />
					
						<g:sortableColumn property="namaCustomer" title="${message(code: 'tableHeaderSalesOrder.namaCustomer.label', default: 'Nama Customer')}" />
					
						<g:sortableColumn property="alamatPengiriman" title="${message(code: 'tableHeaderSalesOrder.alamatPengiriman.label', default: 'Alamat Pengiriman')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${tableHeaderSalesOrderInstanceList}" status="i" var="tableHeaderSalesOrderInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${tableHeaderSalesOrderInstance.id}">${fieldValue(bean: tableHeaderSalesOrderInstance, field: "nomorHeaderSalesOrder")}</g:link></td>
					
						<td><g:formatDate date="${tableHeaderSalesOrderInstance.tanggalTertera}" /></td>
					
						<td>${fieldValue(bean: tableHeaderSalesOrderInstance, field: "idCustomer")}</td>
					
						<td>${fieldValue(bean: tableHeaderSalesOrderInstance, field: "approvedBy")}</td>
					
						<td>${fieldValue(bean: tableHeaderSalesOrderInstance, field: "namaCustomer")}</td>
					
						<td>${fieldValue(bean: tableHeaderSalesOrderInstance, field: "alamatPengiriman")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${tableHeaderSalesOrderInstanceTotal}" />
			</div>
		</div>
	</body>
</html>
