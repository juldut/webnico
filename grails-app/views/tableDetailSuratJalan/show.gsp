
<%@ page import="webnico.TableDetailSuratJalan" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'tableDetailSuratJalan.label', default: 'TableDetailSuratJalan')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-tableDetailSuratJalan" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-tableDetailSuratJalan" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list tableDetailSuratJalan">
			
				<g:if test="${tableDetailSuratJalanInstance?.nomorHeaderSuratJalan}">
				<li class="fieldcontain">
					<span id="nomorHeaderSuratJalan-label" class="property-label"><g:message code="tableDetailSuratJalan.nomorHeaderSuratJalan.label" default="Nomor Header Surat Jalan" /></span>
					
						<span class="property-value" aria-labelledby="nomorHeaderSuratJalan-label"><g:fieldValue bean="${tableDetailSuratJalanInstance}" field="nomorHeaderSuratJalan"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${tableDetailSuratJalanInstance?.idBarang}">
				<li class="fieldcontain">
					<span id="idBarang-label" class="property-label"><g:message code="tableDetailSuratJalan.idBarang.label" default="Id Barang" /></span>
					
						<span class="property-value" aria-labelledby="idBarang-label"><g:fieldValue bean="${tableDetailSuratJalanInstance}" field="idBarang"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${tableDetailSuratJalanInstance?.namaBarang}">
				<li class="fieldcontain">
					<span id="namaBarang-label" class="property-label"><g:message code="tableDetailSuratJalan.namaBarang.label" default="Nama Barang" /></span>
					
						<span class="property-value" aria-labelledby="namaBarang-label"><g:fieldValue bean="${tableDetailSuratJalanInstance}" field="namaBarang"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${tableDetailSuratJalanInstance?.hargaBarang}">
				<li class="fieldcontain">
					<span id="hargaBarang-label" class="property-label"><g:message code="tableDetailSuratJalan.hargaBarang.label" default="Harga Barang" /></span>
					
						<span class="property-value" aria-labelledby="hargaBarang-label"><g:fieldValue bean="${tableDetailSuratJalanInstance}" field="hargaBarang"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${tableDetailSuratJalanInstance?.jumlahBarang}">
				<li class="fieldcontain">
					<span id="jumlahBarang-label" class="property-label"><g:message code="tableDetailSuratJalan.jumlahBarang.label" default="Jumlah Barang" /></span>
					
						<span class="property-value" aria-labelledby="jumlahBarang-label"><g:fieldValue bean="${tableDetailSuratJalanInstance}" field="jumlahBarang"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${tableDetailSuratJalanInstance?.satuan}">
				<li class="fieldcontain">
					<span id="satuan-label" class="property-label"><g:message code="tableDetailSuratJalan.satuan.label" default="Satuan" /></span>
					
						<span class="property-value" aria-labelledby="satuan-label"><g:fieldValue bean="${tableDetailSuratJalanInstance}" field="satuan"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${tableDetailSuratJalanInstance?.nomorDetailSuratJalan}">
				<li class="fieldcontain">
					<span id="nomorDetailSuratJalan-label" class="property-label"><g:message code="tableDetailSuratJalan.nomorDetailSuratJalan.label" default="Nomor Detail Surat Jalan" /></span>
					
						<span class="property-value" aria-labelledby="nomorDetailSuratJalan-label"><g:fieldValue bean="${tableDetailSuratJalanInstance}" field="nomorDetailSuratJalan"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${tableDetailSuratJalanInstance?.tableHeaderSuratJalan}">
				<li class="fieldcontain">
					<span id="tableHeaderSuratJalan-label" class="property-label"><g:message code="tableDetailSuratJalan.tableHeaderSuratJalan.label" default="Table Header Surat Jalan" /></span>
					
						<span class="property-value" aria-labelledby="tableHeaderSuratJalan-label"><g:link controller="tableHeaderSuratJalan" action="show" id="${tableDetailSuratJalanInstance?.tableHeaderSuratJalan?.id}">${tableDetailSuratJalanInstance?.tableHeaderSuratJalan?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form>
				<fieldset class="buttons">
					<g:hiddenField name="id" value="${tableDetailSuratJalanInstance?.id}" />
					<g:link class="edit" action="edit" id="${tableDetailSuratJalanInstance?.id}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
