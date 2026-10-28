# Práctica Semana 09 - Desarrollo Web Fullstack

Proyecto académico que presenta dos ejemplos sencillos de procesamiento de formularios en el servidor: uno en PHP y otro en JSP. Ambos reciben un nombre y un correo enviados mediante el método `POST`.

## Contenido del proyecto

```text
SEMANA9-DAW/
├── index.html             # Formulario de la versión PHP
├── procesar.php           # Recepción y presentación segura de datos en PHP
├── config.php             # Configuración de ejemplo para PHP
├── index.jsp              # Formulario de la versión JSP
├── procesar.jsp            # Recepción de datos y almacenamiento en sesión
└── WEB-INF/
    └── web.xml             # Descriptor de despliegue de la aplicación JSP
```

## Versión PHP

El formulario de `index.html` envía los campos `nombre` y `correo` a `procesar.php`. El script obtiene los datos con `filter_input()`, comprueba el correo y aplica `htmlspecialchars()` antes de mostrar los valores en la página.

`config.php` contiene valores de ejemplo para representar una configuración local. No se conecta a una base de datos ni es necesario modificarlo para probar el formulario.

### Ejecutar localmente

Se requiere PHP instalado y disponible en la terminal. Desde la carpeta del proyecto, inicia el servidor de desarrollo:

```bash
php -S localhost:8000
```

Abre [http://localhost:8000](http://localhost:8000) en el navegador y envía el formulario.

## Versión JSP

`index.jsp` presenta el formulario que envía los datos a `procesar.jsp`. La página de procesamiento obtiene los parámetros con `request.getParameter()`, guarda los valores en la sesión mediante `session.setAttribute()` y muestra los datos guardados.

### Ejecutar en Apache Tomcat

1. Instala un JDK y Apache Tomcat compatible con Servlet 3.1 o superior.
2. Copia la carpeta del proyecto al directorio `webapps` de Tomcat y renómbrala, por ejemplo, como `semana09`.
3. Inicia Tomcat y abre `http://localhost:8080/semana09/`.

La aplicación declara `index.jsp` como página de bienvenida en `WEB-INF/web.xml`. Tomcat compila las páginas JSP al ejecutarlas.

## Comparación técnica

| Aspecto | PHP | JSP |
|---|---|---|
| Ciclo de vida | El servidor web entrega las solicitudes al intérprete o manejador PHP, que procesa el script para cada solicitud. | El contenedor convierte la página JSP en un servlet y administra su ciclo de vida; las solicitudes posteriores son atendidas por ese servlet. |
| Gestión de memoria | La administra el proceso que ejecuta PHP; el modelo concreto depende de la configuración del servidor y del manejador utilizado. | La administra la JVM y el contenedor Java, incluyendo la recolección automática de memoria. |
| Despliegue | Requiere un servidor web con PHP habilitado. En esta práctica puede ejecutarse con el servidor integrado de PHP. | Requiere un contenedor Java, como Tomcat. Las aplicaciones también pueden empaquetarse como archivos WAR. |
| Escalabilidad | Puede escalarse horizontalmente con varios servidores y un balanceador; depende de la arquitectura y configuración de la aplicación. | Puede escalarse en contenedores Java y complementarse con balanceadores y despliegues en varios nodos; depende de la arquitectura y configuración. |

## Alcance

Este proyecto es una práctica introductoria. No implementa persistencia de datos ni autenticación. La versión JSP muestra el uso básico de la sesión con fines didácticos; antes de utilizar entradas de usuarios en una aplicación real, deben agregarse validación y codificación de salida apropiadas.
