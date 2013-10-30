<%@ page import="webnico.TableDetailSuratJalan" %>

<script type="text/javascript">
	$(document).ready(function(){
		$("#namaBarang").typeahead({
			name: "twoparams",
			remote: {
				url: "/webnico/AutoComplete/contohTwoParams/?term=%QUERY",
				filter: function(parsedResponse, param2) {

					for (var i=0; i<parsedResponse.length; i++) {
						currElement = parsedResponse[i];
						// parsedResponse[i].value = "<p>" + parsedResponse[i].value + "</p>";
					}

					return(parsedResponse);
				},

				replace: function(url, uriEncodedQuery) {
					// untuk nambah parameter hdsj
					hdsj = $('#nomorHeaderSuratJalan').val();
					if (!hdsj) return url;
					return url + '&hdsj=' + encodeURIComponent(hdsj)
				},	

			},


		});

		$('#namaBarang').bind('typeahead:selected', function(obj, datum) { 
			$("#idBarang").val(datum.id);
		});


	});

</script>



<div class="form-group ${hasErrors(bean: tableDetailSuratJalanInstance, field: 'nomorHeaderSuratJalan', 'error')} ">
	<label for="nomorHeaderSuratJalan">
		<g:message code="tableDetailSuratJalan.nomorHeaderSuratJalan.label" default="Nomor Header Surat Jalan" />
		
	</label>
	<g:textField name="nomorHeaderSuratJalan" maxlength="15" value="${tableDetailSuratJalanInstance?.nomorHeaderSuratJalan}"/>
</div>

<div class="form-group ${hasErrors(bean: tableDetailSuratJalanInstance, field: 'idBarang', 'error')} ">
	<label for="idBarang">
		<g:message code="tableDetailSuratJalan.idBarang.label" default="Id Barang" />
		
	</label>
	<g:field name="idBarang" type="number" value="${tableDetailSuratJalanInstance.idBarang}"/>
</div>

<div class="form-group ${hasErrors(bean: tableDetailSuratJalanInstance, field: 'namaBarang', 'error')} ">
	<label for="namaBarang">
		<g:message code="tableDetailSuratJalan.namaBarang.label" default="Nama Barang" />
		
	</label>
	<g:textField name="namaBarang" maxlength="100" value="${tableDetailSuratJalanInstance?.namaBarang}" class="form-control"/>
</div>

<div class="form-group ${hasErrors(bean: tableDetailSuratJalanInstance, field: 'hargaBarang', 'error')} ">
	<label for="hargaBarang">
		<g:message code="tableDetailSuratJalan.hargaBarang.label" default="Harga Barang" />
		
	</label>
	<g:field name="hargaBarang" value="${fieldValue(bean: tableDetailSuratJalanInstance, field: 'hargaBarang')}"/>
</div>

<div class="form-group ${hasErrors(bean: tableDetailSuratJalanInstance, field: 'jumlahBarang', 'error')} ">
	<label for="jumlahBarang">
		<g:message code="tableDetailSuratJalan.jumlahBarang.label" default="Jumlah Barang" />
		
	</label>
	<g:field name="jumlahBarang" value="${fieldValue(bean: tableDetailSuratJalanInstance, field: 'jumlahBarang')}"/>
</div>

<div class="form-group ${hasErrors(bean: tableDetailSuratJalanInstance, field: 'satuan', 'error')} ">
	<label for="satuan">
		<g:message code="tableDetailSuratJalan.satuan.label" default="Satuan" />
		
	</label>
	<g:textField name="satuan" maxlength="30" value="${tableDetailSuratJalanInstance?.satuan}"/>
</div>

<div class="form-group ${hasErrors(bean: tableDetailSuratJalanInstance, field: 'nomorDetailSuratJalan', 'error')} ">
	<label for="nomorDetailSuratJalan">
		<g:message code="tableDetailSuratJalan.nomorDetailSuratJalan.label" default="Nomor Detail Surat Jalan" />
		
	</label>
	<g:textField name="nomorDetailSuratJalan" maxlength="20" value="${tableDetailSuratJalanInstance?.nomorDetailSuratJalan}"/>
</div>

<div class="form-group ${hasErrors(bean: tableDetailSuratJalanInstance, field: 'tableHeaderSuratJalan', 'error')} required">
	<label for="tableHeaderSuratJalan">
		<g:message code="tableDetailSuratJalan.tableHeaderSuratJalan.label" default="Table Header Surat Jalan" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="tableHeaderSuratJalan" name="tableHeaderSuratJalan.id" from="${webnico.TableHeaderSuratJalan.findAll { id == tableDetailSuratJalanInstance?.tableHeaderSuratJalan?.id } }" optionKey="id" required="" value="${tableDetailSuratJalanInstance?.tableHeaderSuratJalan?.id}" class="many-to-one"/>
</div>

