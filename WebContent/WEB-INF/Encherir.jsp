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
	<label for="description">Description : </label><br>
	<label for="meilleureOffre">Meilleure offre : </label><br>
	<label for="miseAPrix">Mise � prix : </label><br>
	<label for="finEnchere">Fin de l'ench�re : </label><br>
	<label for="retrait">Retrait : </label><br>
	<label for="vendeur">Vendeur : </label><br>
	<label for="maProposition">Ma proposition : </label><br>
	<input type="button" value="Ench�rir" name="encherir" id="encherir"><br>
	<input type="button" value="Retour" name="retour" id="retour"><br>
</body>
</html>