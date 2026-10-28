<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="es">
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Formulario JSP</title>
  </head>
  <body>
    <h1>Práctica Semana 09 - JSP</h1>
    <form action="procesar.jsp" method="POST">
      <label for="nombre">Nombre:</label>
      <input type="text" id="nombre" name="nombre" required />
      <br /><br />

      <label for="correo">Correo:</label>
      <input type="email" id="correo" name="correo" required />
      <br /><br />

      <button type="submit">Enviar</button>
    </form>
  </body>
</html>
