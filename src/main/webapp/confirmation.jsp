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
		    Confirmation
		  </div>
		  <div class="card-body">
		    <blockquote class="blockquote mb-0">
		      <div class="form-group">
		      	<label>ID:</label>
		      	<label>${produit.id}</label>
		      </div>
		      
		      <div class="form-group">
		      	<label>Désigniation:</label>
		      	<label>${produit.designiation}</label>
		      </div>
		      
		      <div class="form-group">
		      	<label>Quantité:</label>
		      	<label>${produit.quantite}</label>
		      </div>
		      
		      <div class="form-group">
		      	<label>Prix:</label>
		      	<label>${produit.prix}</label>
		      </div>
		    </blockquote>
		  </div>
		</div>
	</div>


	
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
</body>
</html>