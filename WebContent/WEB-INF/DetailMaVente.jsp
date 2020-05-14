<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<%@ include file="fragments/ImportBootstrap.jspf"%>
<title>D�tails vente</title>
</head>
<%@ include file="fragments/EnTete.jspf"%>
<h2>D�tail vente</h2>
<body>
	<%@ include file="fragments/DetailsVente.jspf"%>
	<div class="row" id="container3">
		<div class="col-sm-4" id="container2"></div>
		<div class="col-sm-1">
			<button type="button" class="btn btn-danger btn-lg">Annuler
				la vente</button>
		</div>
		<div class="col-sm-1"></div>
		<div class="col-sm-2">
			<button type="button" class="btn btn-primary btn-lg">Retour</button>
		</div>
		<div class="col-sm-4"></div>
	</div>
</body>
</html>