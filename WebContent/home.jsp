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
		<title>Library</title>
	</head>
	<body>
	<script type="text/javascript" src="js/script.js"></script>
		<div class="container-md">
			<h1>BIENVENIDO A LA LIBRERIA DE GENERATION</h1>
			<div class="container">
			
				<div class="form-group row justify-content-around option-bar">
					
					<div class="col-sm-3">
						<button type="button" class="btn btn-primary btn-lg" name="crear_entrada" id="crear_entrada">Crear Registro</button>
					</div>
					
					<div class="col-sm-3">
						<button type="button" class="btn btn-primary btn-lg" name="hacer_consulta" id="hacer_consulta">Consultar Registros</button>
					</div>
					
					<div class="col-sm-3">
						<button type="button" class="btn btn-primary btn-lg" name="crear_entrada" id="actualizar_entrada">Actualizar Registro</button>
					</div>
					
					<div class="col-sm-3">
						<button type="button" class="btn btn-primary btn-lg" name="hacer_consulta" id="eliminar_entrada">Eliminar Registro</button>
					</div>
					
					
					
				</div>
				
				<div id="content-here">
				
				
				</div>
				
				
			</div>
		</div>
		
		
		<script type="text/javascript">
		
			var ruta = <%=pageContext.getServletContext().getContextPath()%>;
			
		</script>

		
	</body>
</html>
	