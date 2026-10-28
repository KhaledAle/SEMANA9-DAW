<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%
String nombre = request.getParameter("nombre");
String correo = request.getParameter("correo");

if (nombre != null && !nombre.trim().isEmpty()) {
    session.setAttribute("nombre", nombre);
}

if (correo != null && !correo.trim().isEmpty()) {
    session.setAttribute("correo", correo);
}

String nombreGuardado = session.getAttribute("nombre") != null ? session.getAttribute("nombre").toString() : "No registrado";
String correoGuardado = session.getAttribute("correo") != null ? session.getAttribute("correo").toString() : "No registrado";
%>
<!DOCTYPE html>
<html lang="es">
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Resultado JSP</title>
  </head>
  <body>
    <h1>Datos guardados en sesión</h1>
    <p><strong>Nombre:</strong> <%= nombreGuardado %></p>
    <p><strong>Correo:</strong> <%= correoGuardado %></p>
    <p>La información se almacenó en la sesión con <code>session.setAttribute()</code>.</p>
    <a href="index.jsp">Volver al formulario</a>
  </body>
</html>
