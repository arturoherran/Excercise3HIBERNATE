<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="ISO-8859-1">
	<script src="https://code.jquery.com/jquery-3.4.1.js"></script>
	<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
	<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js" integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script>
	<script src="https://kit.fontawesome.com/e5e4924ae6.js" crossorigin="anonymous"></script>

		
		
	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
	<link href="css/style.css" rel="stylesheet">
	<title>Actualizar</title>
</head>
<body>

	<div class="container-sm">
		<form action="ActualizarLibroServlet" method="POST">
		
		
			<div class="form-group row">
               <label for="idLibro" class="col-sm-2 col-form-label">ID:</label>
               <div class="col-sm-10">
                   <div class="input-group mb-3">
                       <div class="input-group-prepend">
                           <span class="input-group-text" id="basic-addon1"><i class="fas fa-book"></i></span>
                       </div>
                   <input type="text" name="idLibro" id="idLibro" class="form-control" placeholder="Cual es el id del libro a actualizar?" aria-label="book-title" aria-describedby="basic-addon1">
                   </div>
               </div>
           </div>
	

			<div class="form-group row">
	               <label for="nombreLibro" class="col-sm-2 col-form-label">TITULO:</label>
	               <div class="col-sm-10">
	                   <div class="input-group mb-3">
	                       <div class="input-group-prepend">
	                           <span class="input-group-text" id="basic-addon1"><i class="fas fa-book"></i></span>
	                       </div>
	                   <input type="text" name="nombreLibro" id="nombreLibro" class="form-control" placeholder="Cual es el nuevo titulo?" aria-label="book-title" aria-describedby="basic-addon1">
	                   </div>
	               </div>
	           </div>
	
	        <div class="form-group row">
	               <label for="nombreAutor" class="col-sm-2 col-form-label">AUTOR:</label>
	               <div class="col-sm-10">
	                   <div class="input-group mb-3">
	                       <div class="input-group-prepend">
	                           <span class="input-group-text" id="basic-addon1"><i class="fas fa-pen-fancy"></i></span>
	                       </div>
	                   <input type="text" name="nombreAutor" id="nombreAutor" class="form-control" placeholder="Quien es el nuevo autor?" aria-label="book_author" aria-describedby="basic-addon1">
	                   </div>
	               </div>
	        </div>
	
	        <div class="form-group row">
	               <label for="generoLibro" class="col-sm-2 col-form-label">GENERO:</label>
	               <div class="col-sm-10">
	                   <div class="input-group mb-3">
	                       <div class="input-group-prepend">
	                           <span class="input-group-text" id="basic-addon1"><i class="fas fa-pen-fancy"></i></span>
	                       </div>
	                   <input type="text" name="generoLibro" id="generoLibro" class="form-control" placeholder="Que genero es?" aria-label="book_genre" aria-describedby="basic-addon1">
	                   </div>
	               </div>
	        </div>
	           
			<div class="form-group row">
	            	<label for="ISBN" class="col-sm-2 col-form-label">ISBN:</label>
					<div class="col-sm-10">
					    <div class="input-group mb-3">
					        <div class="input-group-prepend">
					            <span class="input-group-text" id="basic-addon1"><i class="fas fa-pen-fancy"></i></span>
					        </div>
					    <input type="text" name="ISBN" id="ISBN" class="form-control" placeholder="Cual es el nuevo ISBN?" aria-label="book_ISNB" aria-describedby="basic-addon1">
					    </div>
					</div>
	        </div>
	           
	        <div class="form-group float-right">
	               <input class="btn btn-primary btn-lg new-color" type="submit" value="ACTUALIZAR"> 
	        </div>
			
		</form>
		
	</div>

</body>
</html>