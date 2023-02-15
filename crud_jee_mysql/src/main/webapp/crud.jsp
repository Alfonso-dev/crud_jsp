<%@page import="java.sql.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Manejo Datos</title>
	</head>
	<body>
		<%
		
			String rut = request.getParameter("RUT");
			String nombre = request.getParameter("NOMBRE");
			String apellido = request.getParameter("APELLIDO");
			String usuario = request.getParameter("USUARIO");
			String contrasenia = request.getParameter("CONTRASENIA");
			
			try{
				Class.forName("com.mysql.jdbc.Driver");
				
				Connection miConexion = DriverManager.getConnection("jdbc:mysql://localhost:3306/crudJSP","alfonso","123");
				Statement miStatment = miConexion.createStatement();
				String instruccionSQL = "INSERT INTO usuarios(rut, nombre, apellido, usuario, contrasenia) VALUES('" + rut + "','" + nombre + "','" + apellido + "','" + usuario + "','" + contrasenia + "')";
				miStatment.executeUpdate(instruccionSQL);
				out.println("Registrado con exito");
			}catch(Exception e){
				out.println("Ha ocurrido un error: " + e);
			}
		
		%>
	</body>
</html>