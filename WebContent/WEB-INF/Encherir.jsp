<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<%@ include file="fragments/ImportBootstrap.jspf"%>
<title>Ench�rir</title>
</head>
<%@ include file="fragments/EnTete.jspf"%>
<h2>D�tail vente</h2>
<body>
	<img>
	<p>PC Gamer pour travailler</p>
	<br>

	<div class="row">
		<div class="col-sm-4"></div>
		<div class="col-sm-2">
			<label for="description">Description : </label>
		</div>
		<div class="col-sm-2">info</div>
		<div class="col-sm-4"></div>
	</div>
	<div class="row">
		<div class="col-sm-4"></div>
		<div class="col-sm-2">
			<label for="description">Meilleure offre : </label>
		</div>
		<div class="col-sm-2">info</div>
		<div class="col-sm-4"></div>
	</div>
	<div class="row">
		<div class="col-sm-4"></div>
		<div class="col-sm-2">
			<label for="description">Fin de l'ench�re : </label>
		</div>
		<div class="col-sm-2">info</div>
		<div class="col-sm-4"></div>
	</div>
	<div class="row">
		<div class="col-sm-4"></div>
		<div class="col-sm-2">
			<label for="description">Retrait : </label>
		</div>
		<div class="col-sm-2">info</div>
		<div class="col-sm-4"></div>
	</div>
	<div class="row">
		<div class="col-sm-4"></div>
		<div class="col-sm-2">
			<label for="description">Vendeur : </label>
		</div>
		<div class="col-sm-2">info</div>
		<div class="col-sm-4"></div>
	</div>
	<div class="row">
		<div class="col-sm-4"></div>
		<div class="col-sm-2">
			<label for="description">Ma proposition : </label>
		</div>
		<div class="col-sm-2">
			<input type="number" class=".form-control" min="100" placeholder="100" id="maProposition">
		</div>
				<div class="col-sm-2">
			<button type="button" class="btn btn-primary" name="Ench�rir" id="encherir">Ench�rir</button>
		</div>
		<div class="col-sm-2"></div>
	</div>
	<div class="row">
		<div class="col-sm-4"></div>
		<div class="col-sm-2">
			<label for="description">Description : </label>
		</div>
		<div class="col-sm-2">info</div>
		<div class="col-sm-4"></div>
	</div>
	<div class="row">
		<div class="col-sm-8"></div>
		<div class="col-sm-2">
			<button type="button" class="btn btn-success" name="retour" id="retour">Retour</button>
		</div>
		<div class="col-sm-2"></div>
	</div>
</body>
</html>