<%@ page import="webnico.Mahasiswa" %>



<div class="fieldcontain ${hasErrors(bean: mahasiswaInstance, field: 'nama', 'error')} required">
	<label for="nama">
		<g:message code="mahasiswa.nama.label" default="Nama" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="nama" required="" value="${mahasiswaInstance?.nama}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: mahasiswaInstance, field: 'tanggalLahir', 'error')} required">
	<label for="tanggalLahir">
		<g:message code="mahasiswa.tanggalLahir.label" default="Tanggal Lahir" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="tanggalLahir" precision="day"  value="${mahasiswaInstance?.tanggalLahir}"  />
</div>

