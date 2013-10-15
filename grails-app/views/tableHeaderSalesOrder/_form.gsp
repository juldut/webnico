<%@ page import="webnico.TableHeaderSalesOrder" %>


<div class="row">
	<div class="form-group col-md-6 ${hasErrors(bean: tableHeaderSalesOrderInstance, field: 'nomorHeaderSalesOrder', 'has-error')} ">
		<label for="nomorHeaderSalesOrder" class="control-label">
			<g:message code="tableHeaderSalesOrder.nomorHeaderSalesOrder.label" default="Nomor Header Sales Order" />
			
		</label>
		<g:textField name="nomorHeaderSalesOrder" maxlength="15" value="${tableHeaderSalesOrderInstance?.nomorHeaderSalesOrder}" class="form-control"/>
	</div>
</div>


<div class="form-group ${hasErrors(bean: tableHeaderSalesOrderInstance, field: 'tanggalTertera', 'error')} ">
	<label for="tanggalTertera">
		<g:message code="tableHeaderSalesOrder.tanggalTertera.label" default="Tanggal Tertera" />
		
	</label>
	<g:datePicker name="tanggalTertera" precision="day"  value="${tableHeaderSalesOrderInstance?.tanggalTertera}" default="none" noSelection="['': '']" />
</div>

<div class="form-group ${hasErrors(bean: tableHeaderSalesOrderInstance, field: 'idCustomer', 'error')} ">
	<label for="idCustomer">
		<g:message code="tableHeaderSalesOrder.idCustomer.label" default="Id Customer" />
		
	</label>
	<g:field name="idCustomer" type="number" value="${tableHeaderSalesOrderInstance.idCustomer}"/>
</div>

<div class="form-group ${hasErrors(bean: tableHeaderSalesOrderInstance, field: 'approvedBy', 'error')} ">
	<label for="approvedBy">
		<g:message code="tableHeaderSalesOrder.approvedBy.label" default="Approved By" />
		
	</label>
	<g:textField name="approvedBy" maxlength="30" value="${tableHeaderSalesOrderInstance?.approvedBy}"/>
</div>

<div class="form-group ${hasErrors(bean: tableHeaderSalesOrderInstance, field: 'namaCustomer', 'error')} ">
	<label for="namaCustomer">
		<g:message code="tableHeaderSalesOrder.namaCustomer.label" default="Nama Customer" />
		
	</label>
	<g:textField name="namaCustomer" maxlength="100" value="${tableHeaderSalesOrderInstance?.namaCustomer}"/>
</div>

<div class="form-group ${hasErrors(bean: tableHeaderSalesOrderInstance, field: 'alamatPengiriman', 'error')} ">
	<label for="alamatPengiriman">
		<g:message code="tableHeaderSalesOrder.alamatPengiriman.label" default="Alamat Pengiriman" />
		
	</label>
	<g:textField name="alamatPengiriman" value="${tableHeaderSalesOrderInstance?.alamatPengiriman}"/>
</div>

<div class="form-group ${hasErrors(bean: tableHeaderSalesOrderInstance, field: 'nomorPoCustomer', 'error')} ">
	<label for="nomorPoCustomer">
		<g:message code="tableHeaderSalesOrder.nomorPoCustomer.label" default="Nomor Po Customer" />
		
	</label>
	<g:textField name="nomorPoCustomer" maxlength="75" value="${tableHeaderSalesOrderInstance?.nomorPoCustomer}"/>
</div>

<div class="form-group ${hasErrors(bean: tableHeaderSalesOrderInstance, field: 'tanggalSystem', 'error')} ">
	<label for="tanggalSystem">
		<g:message code="tableHeaderSalesOrder.tanggalSystem.label" default="Tanggal System" />
		
	</label>
	<g:datePicker name="tanggalSystem" precision="day"  value="${tableHeaderSalesOrderInstance?.tanggalSystem}" default="none" noSelection="['': '']" />
</div>

<div class="form-group ${hasErrors(bean: tableHeaderSalesOrderInstance, field: 'username', 'error')} ">
	<label for="username">
		<g:message code="tableHeaderSalesOrder.username.label" default="Username" />
		
	</label>
	<g:textField name="username" maxlength="30" value="${tableHeaderSalesOrderInstance?.username}"/>
</div>

<div class="form-group ${hasErrors(bean: tableHeaderSalesOrderInstance, field: 'pakaiPpn', 'error')} ">
	<label for="pakaiPpn">
		<g:message code="tableHeaderSalesOrder.pakaiPpn.label" default="Pakai Ppn" />
		
	</label>
	<g:checkBox name="pakaiPpn" value="${tableHeaderSalesOrderInstance?.pakaiPpn}" />
</div>

<div class="form-group ${hasErrors(bean: tableHeaderSalesOrderInstance, field: 'status', 'error')} ">
	<label for="status">
		<g:message code="tableHeaderSalesOrder.status.label" default="Status" />
		
	</label>
	<g:field name="status" type="number" value="${tableHeaderSalesOrderInstance.status}"/>
</div>

<div class="form-group ${hasErrors(bean: tableHeaderSalesOrderInstance, field: 'terminPembayaran', 'error')} ">
	<label for="terminPembayaran">
		<g:message code="tableHeaderSalesOrder.terminPembayaran.label" default="Termin Pembayaran" />
		
	</label>
	<g:field name="terminPembayaran" type="number" value="${tableHeaderSalesOrderInstance.terminPembayaran}"/>
</div>

<div class="form-group ${hasErrors(bean: tableHeaderSalesOrderInstance, field: 'namaSalesman', 'error')} ">
	<label for="namaSalesman">
		<g:message code="tableHeaderSalesOrder.namaSalesman.label" default="Nama Salesman" />
	</label>
	<g:textField name="namaSalesman" maxlength="50" value="${tableHeaderSalesOrderInstance?.namaSalesman}"/>
</div>

<div class="form-group ${hasErrors(bean: tableHeaderSalesOrderInstance, field: 'idSalesman', 'error')} ">
	<label for="idSalesman">
		<g:message code="tableHeaderSalesOrder.idSalesman.label" default="Id Salesman" />
		
	</label>
	<g:select id="idSalesmanSelection" name="idSalesman" from="${masterSalesman}" optionKey="id" optionValue="namaSalesman" value="" noSelection="['':'Please Select...']" />
</div>

<div class="form-group ${hasErrors(bean: tableHeaderSalesOrderInstance, field: 'jenisNota', 'error')} ">
	<label for="jenisNota">
		<g:message code="tableHeaderSalesOrder.jenisNota.label" default="Jenis Nota" />
		
	</label>
	<g:textField name="jenisNota" maxlength="2" value="${tableHeaderSalesOrderInstance?.jenisNota}"/>
</div>

<div class="form-group ${hasErrors(bean: tableHeaderSalesOrderInstance, field: 'nomorNpwp', 'error')} ">
	<label for="nomorNpwp">
		<g:message code="tableHeaderSalesOrder.nomorNpwp.label" default="Nomor Npwp" />
		
	</label>
	<g:textField name="nomorNpwp" maxlength="25" value="${tableHeaderSalesOrderInstance?.nomorNpwp}"/>
</div>

<div class="form-group ${hasErrors(bean: tableHeaderSalesOrderInstance, field: 'namaNpwp', 'error')} ">
	<label for="namaNpwp">
		<g:message code="tableHeaderSalesOrder.namaNpwp.label" default="Nama Npwp" />
		
	</label>
	<g:textField name="namaNpwp" maxlength="100" value="${tableHeaderSalesOrderInstance?.namaNpwp}"/>
</div>

<div class="form-group ${hasErrors(bean: tableHeaderSalesOrderInstance, field: 'alamatNpwp', 'error')} ">
	<label for="alamatNpwp">
		<g:message code="tableHeaderSalesOrder.alamatNpwp.label" default="Alamat Npwp" />		
	</label>
	<g:textField name="alamatNpwp" value="${tableHeaderSalesOrderInstance?.alamatNpwp}"/>
</div>

