<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<%@ include file="fragments/ImportBootstrap.jspf"%>
<title>Accueil</title>
</head>
<%@ include file="fragments/EnTete.jspf"%>

<div class="btn-group" role="group" aria-label="Basic example">
  <a href="/troc-encheres.com/servletVendreUnArticle"><button type="button" class="btn btn-primary">Vendre un article</button></a>
  <a  href="/troc-encheres.com/servletMonProfil"><button type="button" class="btn btn-primary">Mon profil</button></a>
  <a href=""><button type="button" class="btn btn-primary">D�connexion</button></a>
</div>

<h2>Filtres : </h2>
<p>leTrioDeLEtrange est connect� !</p>
<form>
	<input type="search" id="recherche" name="recherche" placeholder="Recherche">
	<br>
	<br>
	<label for="categories">Cat�gories : </label>
	<select>
		<option>Jeux vid�os
		<option>Jeux de soci�t�
		<option>Jeux de construction
	</select>
	<br>
	<br>
	<input type="checkbox" value ="mesVentes">
		<label for="mesVentes">Mes ventes</label>
	<br>
	<br>
	<input type="checkbox" value ="mesEncheresEnCours">
		<label for="mesEncheresEnCours">Mes ench�res en cours</label>
	<br>
	<br>
	<input type="checkbox" value ="mesAcquisitions">
		<label for="mesAcquisitions">Mes acquisitions</label>
	<br>
	<br>
	<input type="checkbox" value ="autresEncheres">
		<label for="autresEncheres">Mes autres ench�res</label>
	<br>
	<br>
</form>

<div><p>Annulation ench�re</p></div>
<div><p>Ench�re en cours</p></div>
<body>

</body>
</html>