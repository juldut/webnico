
<%@ page import="webnico.TableHeaderSalesOrder" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'tableHeaderSalesOrder.label', default: 'TableHeaderSalesOrder')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-tableHeaderSalesOrder" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-tableHeaderSalesOrder" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list tableHeaderSalesOrder">
			
				<g:if test="${tableHeaderSalesOrderInstance?.nomorHeaderSalesOrder}">
				<li class="fieldcontain">
					<span id="nomorHeaderSalesOrder-label" class="property-label"><g:message code="tableHeaderSalesOrder.nomorHeaderSalesOrder.label" default="Nomor Header Sales Order" /></span>
					
						<span class="property-value" aria-labelledby="nomorHeaderSalesOrder-label"><g:fieldValue bean="${tableHeaderSalesOrderInstance}" field="nomorHeaderSalesOrder"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${tableHeaderSalesOrderInstance?.tanggalTertera}">
				<li class="fieldcontain">
					<span id="tanggalTertera-label" class="property-label"><g:message code="tableHeaderSalesOrder.tanggalTertera.label" default="Tanggal Tertera" /></span>
					
						<span class="property-value" aria-labelledby="tanggalTertera-label"><g:formatDate date="${tableHeaderSalesOrderInstance?.tanggalTertera}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${tableHeaderSalesOrderInstance?.idCustomer}">
				<li class="fieldcontain">
					<span id="idCustomer-label" class="property-label"><g:message code="tableHeaderSalesOrder.idCustomer.label" default="Id Customer" /></span>
					
						<span class="property-value" aria-labelledby="idCustomer-label"><g:fieldValue bean="${tableHeaderSalesOrderInstance}" field="idCustomer"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${tableHeaderSalesOrderInstance?.approvedBy}">
				<li class="fieldcontain">
					<span id="approvedBy-label" class="property-label"><g:message code="tableHeaderSalesOrder.approvedBy.label" default="Approved By" /></span>
					
						<span class="property-value" aria-labelledby="approvedBy-label"><g:fieldValue bean="${tableHeaderSalesOrderInstance}" field="approvedBy"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${tableHeaderSalesOrderInstance?.namaCustomer}">
				<li class="fieldcontain">
					<span id="namaCustomer-label" class="property-label"><g:message code="tableHeaderSalesOrder.namaCustomer.label" default="Nama Customer" /></span>
					
						<span class="property-value" aria-labelledby="namaCustomer-label"><g:fieldValue bean="${tableHeaderSalesOrderInstance}" field="namaCustomer"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${tableHeaderSalesOrderInstance?.alamatPengiriman}">
				<li class="fieldcontain">
					<span id="alamatPengiriman-label" class="property-label"><g:message code="tableHeaderSalesOrder.alamatPengiriman.label" default="Alamat Pengiriman" /></span>
					
						<span class="property-value" aria-labelledby="alamatPengiriman-label"><g:fieldValue bean="${tableHeaderSalesOrderInstance}" field="alamatPengiriman"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${tableHeaderSalesOrderInstance?.nomorPoCustomer}">
				<li class="fieldcontain">
					<span id="nomorPoCustomer-label" class="property-label"><g:message code="tableHeaderSalesOrder.nomorPoCustomer.label" default="Nomor Po Customer" /></span>
					
						<span class="property-value" aria-labelledby="nomorPoCustomer-label"><g:fieldValue bean="${tableHeaderSalesOrderInstance}" field="nomorPoCustomer"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${tableHeaderSalesOrderInstance?.tanggalSystem}">
				<li class="fieldcontain">
					<span id="tanggalSystem-label" class="property-label"><g:message code="tableHeaderSalesOrder.tanggalSystem.label" default="Tanggal System" /></span>
					
						<span class="property-value" aria-labelledby="tanggalSystem-label"><g:formatDate date="${tableHeaderSalesOrderInstance?.tanggalSystem}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${tableHeaderSalesOrderInstance?.username}">
				<li class="fieldcontain">
					<span id="username-label" class="property-label"><g:message code="tableHeaderSalesOrder.username.label" default="Username" /></span>
					
						<span class="property-value" aria-labelledby="username-label"><g:fieldValue bean="${tableHeaderSalesOrderInstance}" field="username"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${tableHeaderSalesOrderInstance?.pakaiPpn}">
				<li class="fieldcontain">
					<span id="pakaiPpn-label" class="property-label"><g:message code="tableHeaderSalesOrder.pakaiPpn.label" default="Pakai Ppn" /></span>
					
						<span class="property-value" aria-labelledby="pakaiPpn-label"><g:formatBoolean boolean="${tableHeaderSalesOrderInstance?.pakaiPpn}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${tableHeaderSalesOrderInstance?.status}">
				<li class="fieldcontain">
					<span id="status-label" class="property-label"><g:message code="tableHeaderSalesOrder.status.label" default="Status" /></span>
					
						<span class="property-value" aria-labelledby="status-label"><g:fieldValue bean="${tableHeaderSalesOrderInstance}" field="status"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${tableHeaderSalesOrderInstance?.terminPembayaran}">
				<li class="fieldcontain">
					<span id="terminPembayaran-label" class="property-label"><g:message code="tableHeaderSalesOrder.terminPembayaran.label" default="Termin Pembayaran" /></span>
					
						<span class="property-value" aria-labelledby="terminPembayaran-label"><g:fieldValue bean="${tableHeaderSalesOrderInstance}" field="terminPembayaran"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${tableHeaderSalesOrderInstance?.namaSalesman}">
				<li class="fieldcontain">
					<span id="namaSalesman-label" class="property-label"><g:message code="tableHeaderSalesOrder.namaSalesman.label" default="Nama Salesman" /></span>
					
						<span class="property-value" aria-labelledby="namaSalesman-label"><g:fieldValue bean="${tableHeaderSalesOrderInstance}" field="namaSalesman"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${tableHeaderSalesOrderInstance?.idSalesman}">
				<li class="fieldcontain">
					<span id="idSalesman-label" class="property-label"><g:message code="tableHeaderSalesOrder.idSalesman.label" default="Id Salesman" /></span>
					
						<span class="property-value" aria-labelledby="idSalesman-label"><g:fieldValue bean="${tableHeaderSalesOrderInstance}" field="idSalesman"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${tableHeaderSalesOrderInstance?.jenisNota}">
				<li class="fieldcontain">
					<span id="jenisNota-label" class="property-label"><g:message code="tableHeaderSalesOrder.jenisNota.label" default="Jenis Nota" /></span>
					
						<span class="property-value" aria-labelledby="jenisNota-label"><g:fieldValue bean="${tableHeaderSalesOrderInstance}" field="jenisNota"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${tableHeaderSalesOrderInstance?.nomorNpwp}">
				<li class="fieldcontain">
					<span id="nomorNpwp-label" class="property-label"><g:message code="tableHeaderSalesOrder.nomorNpwp.label" default="Nomor Npwp" /></span>
					
						<span class="property-value" aria-labelledby="nomorNpwp-label"><g:fieldValue bean="${tableHeaderSalesOrderInstance}" field="nomorNpwp"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${tableHeaderSalesOrderInstance?.namaNpwp}">
				<li class="fieldcontain">
					<span id="namaNpwp-label" class="property-label"><g:message code="tableHeaderSalesOrder.namaNpwp.label" default="Nama Npwp" /></span>
					
						<span class="property-value" aria-labelledby="namaNpwp-label"><g:fieldValue bean="${tableHeaderSalesOrderInstance}" field="namaNpwp"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${tableHeaderSalesOrderInstance?.alamatNpwp}">
				<li class="fieldcontain">
					<span id="alamatNpwp-label" class="property-label"><g:message code="tableHeaderSalesOrder.alamatNpwp.label" default="Alamat Npwp" /></span>
					
						<span class="property-value" aria-labelledby="alamatNpwp-label"><g:fieldValue bean="${tableHeaderSalesOrderInstance}" field="alamatNpwp"/></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form>
				<fieldset class="buttons">
					<g:hiddenField name="id" value="${tableHeaderSalesOrderInstance?.id}" />
					<g:link class="edit" action="edit" id="${tableHeaderSalesOrderInstance?.id}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
