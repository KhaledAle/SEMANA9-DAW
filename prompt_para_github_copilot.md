# Contexto
Actúa como un desarrollador web Fullstack experto. Necesito que me ayudes a generar la estructura base de código para mi "Práctica Semana 09" sobre Tecnología Web Backend (PHP y JSP). 

# Reglas Estrictas
1. **Seguridad PHP:** NO uses `register_globals`. Utiliza `filter_input()` y `htmlspecialchars()` para procesar los datos recibidos por POST.
2. **JSP:** No generes scriptlets complejos. Usa `<%@ page %>`, `request.getParameter()` y `session.setAttribute()` de forma básica con fines pedagógicos.

# Tareas de Código
Por favor, genera los siguientes archivos con su contenido correspondiente:

### Parte PHP
1. `index.html`: Un formulario HTML simple con método POST que envíe datos (ej. nombre y correo) a `procesar.php`.
2. `procesar.php`: Script que reciba los datos del formulario, los valide (usando `filter_input`) y muestre una respuesta segura.
3. `config.php`: Un archivo básico de configuración (puede estar vacío o solo tener variables de entorno dummy) para simular la estructura.

### Parte JSP
4. `index.jsp`: Un formulario JSP simple que envíe datos por POST a `procesar.jsp`.
5. `procesar.jsp`: Script que reciba los parámetros del request, los guarde en la sesión (`session.setAttribute`) y los muestre en pantalla.
6. `WEB-INF/web.xml`: Un descriptor de despliegue básico (vacío o con la estructura inicial estándar).

### Documentación (README.md)
Genera un archivo `README.md` que contenga:
- Título del laboratorio ("Práctica Semana 09 - Desarrollo Web Fullstack").
- Un espacio marcado como `[INSERTAR ENLACE DE GITHUB AQUÍ]`.
- Una sección de "Evidencias" con marcadores tipo `[INSERTAR CAPTURA PASO 1]`.
- **Una tabla comparativa técnica** (Paso 5 de la guía) que documente las diferencias entre PHP y JSP respecto a: Ciclo de vida, gestión de memoria, despliegue y escalabilidad.