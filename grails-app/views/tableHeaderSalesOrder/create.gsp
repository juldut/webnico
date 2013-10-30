<%@ page import="webnico.TableHeaderSalesOrder" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="tboot">
		<g:set var="entityName" value="${message(code: 'tableHeaderSalesOrder.label', default: 'TableHeaderSalesOrder')}" />
		<title><g:message code="default.create.label" args="[entityName]" /></title>

		<link rel="stylesheet" href="${resource(dir: 'css', file: 'typeahead.js-bootstrap.css')}" type="text/css">
		<r:require modules="typeahead-js"/>
		<g:javascript library='hogan' />

	</head>
	<body>
		<script type="text/javascript">
			$(document).ready(function(){
				$("#namaCustomer").typeahead({
					name: "conto",
					remote: {
						url: "/webnico/AutoComplete/masterCustomer/?term=%QUERY",
						filter: function(parsedResponse, param2) {

							for (var i=0; i<parsedResponse.length; i++) {
								currElement = parsedResponse[i];
								// parsedResponse[i].value = "<p>" + parsedResponse[i].value + "</p>";
							}

							return(parsedResponse);
						},
					},
					template: "{{value}} - {{alamatCust}}",
					engine: Hogan,
					// highlighter: function (item) {
					//     var regex = new RegExp( '(' + this.query + ')', 'gi' );
					//     return item.replace( regex, "<strong>$1</strong>" );
					// }
				});

				$('#namaCustomer').bind('typeahead:selected', function(obj, datum) { 
					$("#idCustomer").val(datum.id);
				});


			});

		</script>

		

      <div class="row row-offcanvas row-offcanvas-right">
        <div class="col-xs-12 col-sm-9">
          <p class="pull-right visible-xs">
            <button type="button" class="btn btn-primary btn-xs" data-toggle="offcanvas">Toggle nav</button>
          </p>
          
          <div class="row">
            <div class="col-6 col-sm-6 col-lg-12">
			
              
				<div id="create-tableHeaderSalesOrder" class="content scaffold-create" role="main">
					<h1><g:message code="default.create.label" args="[entityName]" /></h1>
					<hr/>
					<g:if test="${flash.message}">
					<div class="message" role="status">${flash.message}</div>
					</g:if>
					<g:hasErrors bean="${tableHeaderSalesOrderInstance}">
					<div class="alert alert-danger">
						<ul class="" role="alert">
							<g:eachError bean="${tableHeaderSalesOrderInstance}" var="error">
							<li <g:if test="${error in org.springframework.validation.FieldError}">data-field-id="${error.field}"</g:if>><g:message error="${error}"/></li>
							</g:eachError>
						</ul>
					</div>
					</g:hasErrors>
					<g:form action="save" role="form">
						<g:render template="form"/>
						<fieldset class="buttons">
							<g:submitButton name="create" class="btn btn-primary" value="${message(code: 'default.button.create.label', default: 'Create')}" />
						</fieldset>
					</g:form>
				</div>

            </div><!--/span-->
            
            
            
          </div><!--/row-->
        </div><!--/span-->

        <div class="col-xs-6 col-sm-3 sidebar-offcanvas" id="sidebar" role="navigation">
          <div class="well sidebar-nav">
            <ul class="nav">
              <li>Sidebar</li>
				<li><a class="" href="${createLink(uri: '/')}"><span class="glyphicon glyphicon-home">&nbsp;</span><g:message code="default.home.label"/></a></li>
				<li><g:link class="" action="list"><span class="glyphicon glyphicon-th-list">&nbsp;</span><g:message code="hdso.list"  /></g:link></li>
              <li class="active"><a href="#">Link</a></li>
              <li>Sidebar</li>
              <li><a href="#">Link</a></li>
              <li><a href="#">Link</a></li>
            </ul>
          </div><!--/.well -->
        </div><!--/span-->
      </div><!--/row-->

      <hr>

      

    	

        
      
      

	</body>
</html>
