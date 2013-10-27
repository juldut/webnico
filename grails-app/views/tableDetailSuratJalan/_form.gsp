<%@ page import="webnico.TableDetailSuratJalan" %>



<div class="fieldcontain ${hasErrors(bean: tableDetailSuratJalanInstance, field: 'nomorHeaderSuratJalan', 'error')} ">
	<label for="nomorHeaderSuratJalan">
		<g:message code="tableDetailSuratJalan.nomorHeaderSuratJalan.label" default="Nomor Header Surat Jalan" />
		
	</label>
	<g:textField name="nomorHeaderSuratJalan" maxlength="15" value="${tableDetailSuratJalanInstance?.nomorHeaderSuratJalan}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: tableDetailSuratJalanInstance, field: 'idBarang', 'error')} ">
	<label for="idBarang">
		<g:message code="tableDetailSuratJalan.idBarang.label" default="Id Barang" />
		
	</label>
	<g:field name="idBarang" type="number" value="${tableDetailSuratJalanInstance.idBarang}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: tableDetailSuratJalanInstance, field: 'namaBarang', 'error')} ">
	<label for="namaBarang">
		<g:message code="tableDetailSuratJalan.namaBarang.label" default="Nama Barang" />
		
	</label>
	<g:textField name="namaBarang" maxlength="100" value="${tableDetailSuratJalanInstance?.namaBarang}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: tableDetailSuratJalanInstance, field: 'hargaBarang', 'error')} ">
	<label for="hargaBarang">
		<g:message code="tableDetailSuratJalan.hargaBarang.label" default="Harga Barang" />
		
	</label>
	<g:field name="hargaBarang" value="${fieldValue(bean: tableDetailSuratJalanInstance, field: 'hargaBarang')}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: tableDetailSuratJalanInstance, field: 'jumlahBarang', 'error')} ">
	<label for="jumlahBarang">
		<g:message code="tableDetailSuratJalan.jumlahBarang.label" default="Jumlah Barang" />
		
	</label>
	<g:field name="jumlahBarang" value="${fieldValue(bean: tableDetailSuratJalanInstance, field: 'jumlahBarang')}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: tableDetailSuratJalanInstance, field: 'satuan', 'error')} ">
	<label for="satuan">
		<g:message code="tableDetailSuratJalan.satuan.label" default="Satuan" />
		
	</label>
	<g:textField name="satuan" maxlength="30" value="${tableDetailSuratJalanInstance?.satuan}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: tableDetailSuratJalanInstance, field: 'nomorDetailSuratJalan', 'error')} ">
	<label for="nomorDetailSuratJalan">
		<g:message code="tableDetailSuratJalan.nomorDetailSuratJalan.label" default="Nomor Detail Surat Jalan" />
		
	</label>
	<g:textField name="nomorDetailSuratJalan" maxlength="20" value="${tableDetailSuratJalanInstance?.nomorDetailSuratJalan}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: tableDetailSuratJalanInstance, field: 'tableHeaderSuratJalan', 'error')} required">
	<label for="tableHeaderSuratJalan">
		<g:message code="tableDetailSuratJalan.tableHeaderSuratJalan.label" default="Table Header Surat Jalan" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="tableHeaderSuratJalan" name="tableHeaderSuratJalan.id" from="${webnico.TableHeaderSuratJalan.list()}" optionKey="id" required="" value="${tableDetailSuratJalanInstance?.tableHeaderSuratJalan?.id}" class="many-to-one"/>
</div>

