# Análisis de tendencias musicales (2018-2022): pre-pandemia, pandemia y post-pandemia

Extracción, limpieza y creación de BB. DD. en MySQL para jerarquizar los resultados a partir de datos obtenidos a través de las APIS de Spotify y last.fm.

La elección de este rango de años tiene el propósito de obtener una muestra sobre cómo fueron las tendencias musicales en torno a la pandemia de COVID-19 y, con estos datos, invitar a una pequeña reflexión acerca de cómo impactan los eventos de carácter mundial en las necesidades e intereses musicales de las personas.

## Índice

1. [Objetivos](#1-objetivos)
2. [¿Cómo usar esto?](#2-cómo-usar-esto)
3. [Estructura del repositorio](#2-estructura-del-repositorio)
4. [Fuente de los datos](#3-fuente-de-los-datos)
5. [Esquema de la base de datos](#5-esquema-de-la-base-de-datos)
7. [Autoras y licencias](#7-autoras-y-licencia)

# 1. Objetivos

- Consolidar conocimientos de Python y SQL.
- Practicar Git/GitHub y SCRUM en equipo.
- Analizar y albergar un estudio sobre tendencias musicales entre los años 2018 y 2022, cuya estructura de código puede usarse para explorar otros rangos y años.

## 2. Cómo usar esto

Python 3.8 o superior.

MySQL-Worbench *aquí hay que poner la versión que sea*

- Librerías:

    *pandas*
`pip install pandas`

    *spotipy*
`pip install spotipy`

    *python-dotenv*
`pip install python-dotenv`

### Instrucciones para usar python-dotenv (una librería que permite cargar variables de entorno desde un archivo *.env* a tu código Python)

1. Instala *python-dotenv*
2. Crea un archivo *.env* en la misma **carpeta** que el *.ipynb* donde vas a usar tus credenciales.
3. Escribe en él:

    `CLIENT_ID = tu_client_id_de_spotify`
    `CLIENT_SECRET=tu_client_secret_de_spotify`

4. Crea un archivo *.gitignore* en la raíz (*main*), si ya existe, comprueba que el siguiente paso está contenido en él.
5. Escribe dentro *`.env`* (así evitamos que GitHub suba el archivo con nuestras credenciales personales al repositorio, permanecerá localmente en nuestra carpeta en el ordenador).
6. Guarda **estos dos archivos** y ejecuta las instrucciones siguientes en el *.ipynb* donde quieras usar tu credencial de API.

7. Tendrás que importar la nueva librería:

        from dotenv import load_dotenv
        import os

8. Ejecutar *dotenv*:

        load_dotenv()  # carga nuestras claves
        safeclient_id = os.getenv("CLIENT_ID")
        safeclient_secret = os.getenv("CLIENT_SECRET")

    Ya puedes sustituir tus credenciales por estas nuevas variables (en el caso de este ejemplo *safeclient_id* y *safeclient_secret*) y ejecutar tu código.

### Instrucciones para replicar el proyecto:
**Clona este repositorio:**

    git clone https://github.com/micaelalafratta/da-promo-60-modulo2-equipo3.git

Es recomendable tener cuenta de desarrollador en [Spotify](https://developer.spotify.com/) para obtener `CLIENT_ID` y `CLIENT_SECRET` (las credenciales para el uso de la API) para poder ejecutar una nueva extracción de datos.

## 3. Estructura del repositorio

        este_repositorio/
        |
        ├── extracción-spotify-spotipy
        │   ├── country/
        │   ├── metal/
        │   ├── pop/
        │   ├── r&b/
        │   └── rock/
        |
        ├── extracción-last.fm/
        ├── working_agreement.md
        └── README.md



### 4. Fuente de los datos

*-----> Aquí va el origen de los datos (API) y fecha de obtención.*

Datos obtenidos de la API de Spotify para desarroladores en octubre 2025 **hay que insertar enlace**.


## 5. Esquema de la base de datos

Diagrama o tabla con las tablas, columnas y relaciones.

## 6. Ejemplo de uso

Consulta SQL básica para validar la carga.

*Ejemplo:*

`SELECT COUNT() FROM ventas;`

#
## 7. Autoras y licencia

Nombres de las colaboradoras y tipo de licencia (MIT, GPL, etc.).
