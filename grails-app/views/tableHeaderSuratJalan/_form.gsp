<%@ page import="webnico.TableHeaderSuratJalan" %>



<div class="fieldcontain ${hasErrors(bean: tableHeaderSuratJalanInstance, field: 'nomorHeaderSuratJalan', 'error')} ">
	<label for="nomorHeaderSuratJalan">
		<g:message code="tableHeaderSuratJalan.nomorHeaderSuratJalan.label" default="Nomor Header Surat Jalan" />
		
	</label>
	<g:textField name="nomorHeaderSuratJalan" maxlength="15" value="${tableHeaderSuratJalanInstance?.nomorHeaderSuratJalan}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: tableHeaderSuratJalanInstance, field: 'tanggalTertera', 'error')} ">
	<label for="tanggalTertera">
		<g:message code="tableHeaderSuratJalan.tanggalTertera.label" default="Tanggal Tertera" />
		
	</label>
	<g:datePicker name="tanggalTertera" precision="day"  value="${tableHeaderSuratJalanInstance?.tanggalTertera}" default="none" noSelection="['': '']" />
</div>

<div class="fieldcontain ${hasErrors(bean: tableHeaderSuratJalanInstance, field: 'idCustomer', 'error')} ">
	<label for="idCustomer">
		<g:message code="tableHeaderSuratJalan.idCustomer.label" default="Id Customer" />
		
	</label>
	<g:field name="idCustomer" type="number" value="${tableHeaderSuratJalanInstance.idCustomer}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: tableHeaderSuratJalanInstance, field: 'namaCustomer', 'error')} ">
	<label for="namaCustomer">
		<g:message code="tableHeaderSuratJalan.namaCustomer.label" default="Nama Customer" />
		
	</label>
	<g:textField name="namaCustomer" maxlength="100" value="${tableHeaderSuratJalanInstance?.namaCustomer}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: tableHeaderSuratJalanInstance, field: 'nomorHeaderSalesOrder', 'error')} ">
	<label for="nomorHeaderSalesOrder">
		<g:message code="tableHeaderSuratJalan.nomorHeaderSalesOrder.label" default="Nomor Header Sales Order" />
		
	</label>
	<g:textField name="nomorHeaderSalesOrder" maxlength="15" value="${tableHeaderSuratJalanInstance?.nomorHeaderSalesOrder}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: tableHeaderSuratJalanInstance, field: 'username', 'error')} ">
	<label for="username">
		<g:message code="tableHeaderSuratJalan.username.label" default="Username" />
		
	</label>
	<g:textField name="username" maxlength="30" value="${tableHeaderSuratJalanInstance?.username}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: tableHeaderSuratJalanInstance, field: 'tanggalSystem', 'error')} ">
	<label for="tanggalSystem">
		<g:message code="tableHeaderSuratJalan.tanggalSystem.label" default="Tanggal System" />
		
	</label>
	<g:datePicker name="tanggalSystem" precision="day"  value="${tableHeaderSuratJalanInstance?.tanggalSystem}" default="none" noSelection="['': '']" />
</div>

<div class="fieldcontain ${hasErrors(bean: tableHeaderSuratJalanInstance, field: 'alamatPengiriman', 'error')} ">
	<label for="alamatPengiriman">
		<g:message code="tableHeaderSuratJalan.alamatPengiriman.label" default="Alamat Pengiriman" />
		
	</label>
	<g:textField name="alamatPengiriman" value="${tableHeaderSuratJalanInstance?.alamatPengiriman}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: tableHeaderSuratJalanInstance, field: 'nopol', 'error')} ">
	<label for="nopol">
		<g:message code="tableHeaderSuratJalan.nopol.label" default="Nopol" />
		
	</label>
	<g:textField name="nopol" maxlength="10" value="${tableHeaderSuratJalanInstance?.nopol}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: tableHeaderSuratJalanInstance, field: 'printed', 'error')} ">
	<label for="printed">
		<g:message code="tableHeaderSuratJalan.printed.label" default="Printed" />
		
	</label>
	<g:checkBox name="printed" value="${tableHeaderSuratJalanInstance?.printed}" />
</div>

<div class="fieldcontain ${hasErrors(bean: tableHeaderSuratJalanInstance, field: 'tujuanPengiriman', 'error')} ">
	<label for="tujuanPengiriman">
		<g:message code="tableHeaderSuratJalan.tujuanPengiriman.label" default="Tujuan Pengiriman" />
		
	</label>
	<g:textField name="tujuanPengiriman" maxlength="100" value="${tableHeaderSuratJalanInstance?.tujuanPengiriman}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: tableHeaderSuratJalanInstance, field: 'kotaPengiriman', 'error')} ">
	<label for="kotaPengiriman">
		<g:message code="tableHeaderSuratJalan.kotaPengiriman.label" default="Kota Pengiriman" />
		
	</label>
	<g:textField name="kotaPengiriman" maxlength="50" value="${tableHeaderSuratJalanInstance?.kotaPengiriman}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: tableHeaderSuratJalanInstance, field: 'catatan', 'error')} ">
	<label for="catatan">
		<g:message code="tableHeaderSuratJalan.catatan.label" default="Catatan" />
		
	</label>
	<g:textField name="catatan" value="${tableHeaderSuratJalanInstance?.catatan}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: tableHeaderSuratJalanInstance, field: 'tableDetailSuratJalans', 'error')} ">
	<label for="tableDetailSuratJalans">
		<g:message code="tableHeaderSuratJalan.tableDetailSuratJalans.label" default="Table Detail Surat Jalans" />
		
	</label>
	
<ul class="one-to-many">
<g:each in="${tableHeaderSuratJalanInstance?.tableDetailSuratJalans?}" var="t">
    <li><g:link controller="tableDetailSuratJalan" action="show" id="${t.id}">${t?.encodeAsHTML()}</g:link></li>
</g:each>
<li class="add">
<g:link controller="tableDetailSuratJalan" action="create" params="['tableHeaderSuratJalan.id': tableHeaderSuratJalanInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'tableDetailSuratJalan.label', default: 'TableDetailSuratJalan')])}</g:link>
</li>
</ul>

</div>

