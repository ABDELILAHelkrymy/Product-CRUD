<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
<title>Produits</title>
</head>
<body>
	
	<%@include file="header.jsp" %>
	
	<div class="container col-md-10 col-md-offset-1 mt-5">
		<div class="card">
		  <div class="card-header">
		    Recherche des prosuits
		  </div>
		  <div class="card-body">
		    <blockquote class="blockquote mb-0">
		      
		      <form action="chercher.php" method="get" class="row g-3">
				  <div class="col-auto">
    				<input type="text" class="form-control" placeholder="Mot Clé" name="motCle" value="${model.motCle}">
				  </div>
				  
				  <div class="col-auto">
				    <button type="submit" class="btn btn-primary mb-3">Chercher</button>
			  	  </div>
			</form>
			<table class="table">
				<tr>
					<th>ID</th>
					<th>Désigniation</th>
					<th>Prix</th>
					<th>Quantité</th>
				</tr>
				<c:forEach items="${model.produits}" var="p">
					<tr>
					<td>${p.id}</td>
					<td>${p.designiation}</td>
					<td>${p.prix}</td>
					<td>${p.quantite}</td>
					<td><a onclick="return confirm('Etes vous sure!!')" href="supprimer.php?id=${p.id}">Supprimer</a></td>
					<td><a href="modifier.php?id=${p.id}">Modifier</a></td>
					</tr>
				</c:forEach>
			</table>
		    </blockquote>
		  </div>
		</div>
	</div>


	
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
</body>
</html>