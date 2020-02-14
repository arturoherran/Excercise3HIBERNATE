//haciendo dinámico el inicio del sitio con JQuery

$(document).ready(function(){
	
	
    $("#hacer_consulta").click(function() {
        $("#content-here").load("/Excercise3HIBERNATE/consultar.jsp");
    });
    
    $("#crear_entrada").click(function() {
        $("#content-here").load("/Excercise3HIBERNATE/altasjsp.jsp");
    });
    
    $("#actualizar_entrada").click(function() {
        $("#content-here").load("/Excercise3HIBERNATE/actualizarjsp.jsp");
    });
    
    $("#eliminar_entrada").click(function() {
        $("#content-here").load("/Excercise3HIBERNATE/eliminar.jsp");
    });
    
    

});
