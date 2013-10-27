
<%@ page import="webnico.TableDetailSuratJalan" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'tableDetailSuratJalan.label', default: 'TableDetailSuratJalan')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-tableDetailSuratJalan" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-tableDetailSuratJalan" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
				<thead>
					<tr>
					
						<g:sortableColumn property="nomorHeaderSuratJalan" title="${message(code: 'tableDetailSuratJalan.nomorHeaderSuratJalan.label', default: 'Nomor Header Surat Jalan')}" />
					
						<g:sortableColumn property="idBarang" title="${message(code: 'tableDetailSuratJalan.idBarang.label', default: 'Id Barang')}" />
					
						<g:sortableColumn property="namaBarang" title="${message(code: 'tableDetailSuratJalan.namaBarang.label', default: 'Nama Barang')}" />
					
						<g:sortableColumn property="hargaBarang" title="${message(code: 'tableDetailSuratJalan.hargaBarang.label', default: 'Harga Barang')}" />
					
						<g:sortableColumn property="jumlahBarang" title="${message(code: 'tableDetailSuratJalan.jumlahBarang.label', default: 'Jumlah Barang')}" />
					
						<g:sortableColumn property="satuan" title="${message(code: 'tableDetailSuratJalan.satuan.label', default: 'Satuan')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${tableDetailSuratJalanInstanceList}" status="i" var="tableDetailSuratJalanInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${tableDetailSuratJalanInstance.id}">${fieldValue(bean: tableDetailSuratJalanInstance, field: "nomorHeaderSuratJalan")}</g:link></td>
					
						<td>${fieldValue(bean: tableDetailSuratJalanInstance, field: "idBarang")}</td>
					
						<td>${fieldValue(bean: tableDetailSuratJalanInstance, field: "namaBarang")}</td>
					
						<td>${fieldValue(bean: tableDetailSuratJalanInstance, field: "hargaBarang")}</td>
					
						<td>${fieldValue(bean: tableDetailSuratJalanInstance, field: "jumlahBarang")}</td>
					
						<td>${fieldValue(bean: tableDetailSuratJalanInstance, field: "satuan")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${tableDetailSuratJalanInstanceTotal}" />
			</div>
		</div>
	</body>
</html>
