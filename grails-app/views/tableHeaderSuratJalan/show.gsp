
<%@ page import="webnico.TableHeaderSuratJalan" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'tableHeaderSuratJalan.label', default: 'TableHeaderSuratJalan')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-tableHeaderSuratJalan" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-tableHeaderSuratJalan" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list tableHeaderSuratJalan">
			
				<g:if test="${tableHeaderSuratJalanInstance?.nomorHeaderSuratJalan}">
				<li class="fieldcontain">
					<span id="nomorHeaderSuratJalan-label" class="property-label"><g:message code="tableHeaderSuratJalan.nomorHeaderSuratJalan.label" default="Nomor Header Surat Jalan" /></span>
					
						<span class="property-value" aria-labelledby="nomorHeaderSuratJalan-label"><g:fieldValue bean="${tableHeaderSuratJalanInstance}" field="nomorHeaderSuratJalan"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${tableHeaderSuratJalanInstance?.tanggalTertera}">
				<li class="fieldcontain">
					<span id="tanggalTertera-label" class="property-label"><g:message code="tableHeaderSuratJalan.tanggalTertera.label" default="Tanggal Tertera" /></span>
					
						<span class="property-value" aria-labelledby="tanggalTertera-label"><g:formatDate date="${tableHeaderSuratJalanInstance?.tanggalTertera}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${tableHeaderSuratJalanInstance?.idCustomer}">
				<li class="fieldcontain">
					<span id="idCustomer-label" class="property-label"><g:message code="tableHeaderSuratJalan.idCustomer.label" default="Id Customer" /></span>
					
						<span class="property-value" aria-labelledby="idCustomer-label"><g:fieldValue bean="${tableHeaderSuratJalanInstance}" field="idCustomer"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${tableHeaderSuratJalanInstance?.namaCustomer}">
				<li class="fieldcontain">
					<span id="namaCustomer-label" class="property-label"><g:message code="tableHeaderSuratJalan.namaCustomer.label" default="Nama Customer" /></span>
					
						<span class="property-value" aria-labelledby="namaCustomer-label"><g:fieldValue bean="${tableHeaderSuratJalanInstance}" field="namaCustomer"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${tableHeaderSuratJalanInstance?.nomorHeaderSalesOrder}">
				<li class="fieldcontain">
					<span id="nomorHeaderSalesOrder-label" class="property-label"><g:message code="tableHeaderSuratJalan.nomorHeaderSalesOrder.label" default="Nomor Header Sales Order" /></span>
					
						<span class="property-value" aria-labelledby="nomorHeaderSalesOrder-label"><g:fieldValue bean="${tableHeaderSuratJalanInstance}" field="nomorHeaderSalesOrder"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${tableHeaderSuratJalanInstance?.username}">
				<li class="fieldcontain">
					<span id="username-label" class="property-label"><g:message code="tableHeaderSuratJalan.username.label" default="Username" /></span>
					
						<span class="property-value" aria-labelledby="username-label"><g:fieldValue bean="${tableHeaderSuratJalanInstance}" field="username"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${tableHeaderSuratJalanInstance?.tanggalSystem}">
				<li class="fieldcontain">
					<span id="tanggalSystem-label" class="property-label"><g:message code="tableHeaderSuratJalan.tanggalSystem.label" default="Tanggal System" /></span>
					
						<span class="property-value" aria-labelledby="tanggalSystem-label"><g:formatDate date="${tableHeaderSuratJalanInstance?.tanggalSystem}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${tableHeaderSuratJalanInstance?.alamatPengiriman}">
				<li class="fieldcontain">
					<span id="alamatPengiriman-label" class="property-label"><g:message code="tableHeaderSuratJalan.alamatPengiriman.label" default="Alamat Pengiriman" /></span>
					
						<span class="property-value" aria-labelledby="alamatPengiriman-label"><g:fieldValue bean="${tableHeaderSuratJalanInstance}" field="alamatPengiriman"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${tableHeaderSuratJalanInstance?.nopol}">
				<li class="fieldcontain">
					<span id="nopol-label" class="property-label"><g:message code="tableHeaderSuratJalan.nopol.label" default="Nopol" /></span>
					
						<span class="property-value" aria-labelledby="nopol-label"><g:fieldValue bean="${tableHeaderSuratJalanInstance}" field="nopol"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${tableHeaderSuratJalanInstance?.printed}">
				<li class="fieldcontain">
					<span id="printed-label" class="property-label"><g:message code="tableHeaderSuratJalan.printed.label" default="Printed" /></span>
					
						<span class="property-value" aria-labelledby="printed-label"><g:formatBoolean boolean="${tableHeaderSuratJalanInstance?.printed}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${tableHeaderSuratJalanInstance?.tujuanPengiriman}">
				<li class="fieldcontain">
					<span id="tujuanPengiriman-label" class="property-label"><g:message code="tableHeaderSuratJalan.tujuanPengiriman.label" default="Tujuan Pengiriman" /></span>
					
						<span class="property-value" aria-labelledby="tujuanPengiriman-label"><g:fieldValue bean="${tableHeaderSuratJalanInstance}" field="tujuanPengiriman"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${tableHeaderSuratJalanInstance?.kotaPengiriman}">
				<li class="fieldcontain">
					<span id="kotaPengiriman-label" class="property-label"><g:message code="tableHeaderSuratJalan.kotaPengiriman.label" default="Kota Pengiriman" /></span>
					
						<span class="property-value" aria-labelledby="kotaPengiriman-label"><g:fieldValue bean="${tableHeaderSuratJalanInstance}" field="kotaPengiriman"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${tableHeaderSuratJalanInstance?.catatan}">
				<li class="fieldcontain">
					<span id="catatan-label" class="property-label"><g:message code="tableHeaderSuratJalan.catatan.label" default="Catatan" /></span>
					
						<span class="property-value" aria-labelledby="catatan-label"><g:fieldValue bean="${tableHeaderSuratJalanInstance}" field="catatan"/></span>
					
				</li>
				</g:if>
			
%{-- 				<g:if test="${tableHeaderSuratJalanInstance?.tableDetailSuratJalans}">
				<li class="fieldcontain">
					<span id="tableDetailSuratJalans-label" class="property-label"><g:message code="tableHeaderSuratJalan.tableDetailSuratJalans.label" default="Table Detail Surat Jalans" /></span>
					
						<g:each in="${tableHeaderSuratJalanInstance.tableDetailSuratJalans}" var="t">
						<span class="property-value" aria-labelledby="tableDetailSuratJalans-label"><g:link controller="tableDetailSuratJalan" action="show" id="${t.id}">${t?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
 --}%			
			</ol>


			<g:if test="${tableHeaderSuratJalanInstance?.tableDetailSuratJalans}">

				<table>
					<thead>
						<tr>
							<th>Nama Barang</th>
							<th>Harga Barang</th>
							<th>Jumlah</th>
							<th>Satuan</th>
						</tr>
					</thead>
					<tbody>
					<g:each in="${tableHeaderSuratJalanInstance.tableDetailSuratJalans}" status="i" var="t">
						<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
						
							<td><g:link controller="tableDetailSuratJalan" action="show" id="${t.id}">${fieldValue(bean: t, field: "namaBarang")}</g:link></td>
						
							<td>${fieldValue(bean: t, field: "hargaBarang")}</td>
						
							<td>${fieldValue(bean: t, field: "jumlahBarang")}</td>
						
							<td>${fieldValue(bean: t, field: "satuan")}</td>
						
						</tr>
					</g:each>
					</tbody>
				</table>

			</g:if>

			<g:form>
				<fieldset class="buttons">
					<g:hiddenField name="id" value="${tableHeaderSuratJalanInstance?.id}" />
					<g:link class="edit" action="edit" id="${tableHeaderSuratJalanInstance?.id}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
