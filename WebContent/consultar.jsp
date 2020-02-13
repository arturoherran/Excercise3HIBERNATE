<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Consultar</title>
</head>
<body>
	<h1>CONSULTAR</h1>

		<form action="ConsultarLibrosServlet" method="POST">
		
		
			<div class="form-group row">
               <label for="idLibro" class="col-sm-2 col-form-label">ID:</label>
               <div class="col-sm-10">
                   <div class="input-group mb-3">
                       <div class="input-group-prepend">
                           <span class="input-group-text" id="basic-addon1"><i class="fas fa-book"></i></span>
                       </div>
                   <input type="text" name="idLibro" id="idLibro" class="form-control" placeholder="Cual es el id del libro a consultar?" aria-label="book-title" aria-describedby="basic-addon1">
                   </div>
               </div>
           </div>
	           
	       <div class="form-group float-right">
	       		<input class="btn btn-primary btn-lg new-color" type="submit" value="CONSULTARR"> 
	       </div>
			
		</form>
		
		<form action="ConsultarTodosServlet" method="POST">
		
		
			<h2>O SI QUIERES VER TODOS LOS LIBROS PRESIONA AQUI ABAJO</h2>
	           
			<div class="form-group float-right">
		    	<input class="btn btn-primary btn-lg new-color" type="submit" value="QUIERO TODOS"> 
		    </div>
			
		</form>

</body>
</html>