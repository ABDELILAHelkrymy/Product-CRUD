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
		    Modifier d'un produit
		  </div>
		  <div class="card-body">
		    <blockquote class="blockquote mb-0">
		      <form action="UpdateProduit.php" method="post">
		      	<div class="mb-3">
				  <label class="form-label">ID</label>
				  <input type="text" name="id" value="${produit.id}" class="form-control" id="exampleFormControlInput1" required="required"/>
				  <span></span>
				</div>
		      	<div class="mb-3">
				  <label class="form-label">Désigniation</label>
				  <input type="text" name="designiation" value="${produit.designiation}" class="form-control" id="exampleFormControlInput1" required="required"/>
				  <span></span>
				</div>
				<div class="mb-3">
				  <label class="form-label">Prix</label>
				  <input type="text" name="prix" value="${produit.prix}" class="form-control" id="exampleFormControlInput1" required="required"/>
				  <span></span>
				</div>
				<div class="mb-3">
				  <label class="form-label">Quantité</label>
				  <input type="text" name="quantite" value="${produit.quantite}" class="form-control" id="exampleFormControlInput1" required="required"/>
				  <span></span>
				</div>
				<div class="col-auto">
				  <button type="submit" class="btn btn-primary mb-3">Save</button>
				</div>
		      </form>
		    </blockquote>
		  </div>
		</div>
	</div>


	
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
</body>
</html>