<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<%@ include file="fragments/ImportBootstrap.jspf"%>
<title>Encherir</title>
</head>
<%@ include file="fragments/EnTete.jspf"%>
<h2>D�tail vente</h2>
<body>
	<img>
	<p>PC Gamer pour travailler</p>
	<p>Description :</p>
	<p>Meilleure offre :</p>
	<p>Mise � prix :</p>
	<p>Fin de l'ench�re :</p>
	<p>Retrait :</p>
	<p>Vendeur :</p>
	<label for="maProposition">Ma proposition : </label>
	<br>
	<input type="button" value="Ench�rir" name="encherir" id="encherir">
	<br>
	<input type="button" value="Annuler ma derni�re ench�re"
		name="annulerEnchere" id="annulerEnchere">
	<br>
	<input type="button" value="Retour" name="retour" id="retour">
	<br>

</body>
</html>