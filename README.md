
          =IY;         Hola! 
         XRVRRi          
        =Ri :RR        Este repositorio ha sido creado para albergar nuestro estudio sobre las
        VR   ;RR          tendencias musicales entre los años 2018 y 2022. 
        RY   tRY          
        RX  ;RR;      
        tR=RRR         A través de este análisis de los datos extraídos a través de las APIs de Spotify    
         ;RRRR;           y last.fm, hemos querido aprovechar para hacer un recorrido por las canciones,
         ;RRRi            álbumes y artistas más escuchados en 5 géneros (pop, rock, metal, RnB, country) 
         ;RRRV            elegidos por las compañeras del proyecto para aplicar esa ventana de tiempo.
        ;RRRRR:        
      :RRRV.RX         Nuestra intención con la elección de ese rango de años es investigar cómo eran las  
     VRRR: ;R=            tendencias musicales tanto en pre-pandemia como post-pandemia por el COVID-19.
    =RRR+   YRitti;.      
    VRRR  :YRRRRRRRRt.     Y con estos datos, invitar a una pequeña reflexión acerca de cómo impactan
    .RRRY ;RRYYR;;iRRRR.       los eventos de carácter mundial en las necesidades e intereses musicales
    :RRRi RR; .Rt  .XRRY       de las personas, tomando de muestra los usuarios de tales plataformas.
    :RRR= RV   +R.  .RRR      
    :RRRt tR    Rt   IRR.                  
    RRRR  ;;   +R.  XRY                Los objetivos de este proyecto académico son:  
    ;RRRt     .R+ +RR:                 
      ;RRRX;     YRIRX:                -Consolidar los conocimientos de _Python_ y _SQL_.
        .+RRRRIiitRRY;                 -Implementar control de versiones en equipo, usando _Git_ y _GitHub_.
         :;+ii+;tR:                    -Usar _SCRUM_ como marco de referencia, aplicando principios ágiles.
             ;R:                       -Mejorar la comunicación y presentación de resultados en equipo.
             iR                       
    ;VRRi    Vi                       
    RRRRR.  tR.     
    YRRR+ ;YV:                
    .tRRRRR+    Este proyecto está desarollado por el Equipo 3, en el marco del módulo 2, como parte del bootcamp
      .;;:                                    Data Analytics & IA de Adalab
#
#
# Aquí va mi título y una descripción breve

Análisis de datos de tendencias musicales tiempos de pre-pandemia, pandemia y pospandemia: extracción, limpieza y creación de BB. DD. en MySQL para jerarquizar los resultados a partir de datos obtenidos a través de las APIS de Spotify y last.fm

## Índice
1. [¿Cómo usar esto?](#1-cómo-usar-esto)
2. [Estructura del repositorio](#2-estructura-del-repositorio)
3. [Fuente de los datos](#3-fuente-de-los-datos)
4. [Proceso de limpieza y transformación](#4-proceso-de-limpieza-y-transformación)
5. [Esquema de la base de datos](#5-esquema-de-la-base-de-datos)
7. [Autoras y licencias](#7-autoras-y-licencia)
8. [Posibles mejoras](#9-posibles-mejoras)


#
## 1. ¿Cómo usar esto?

Python 3.8 o superior.

MySQL-Worbench *aquí hay que poner la versión que sea*

**Librerías:**

pandas
`pip install pandas`

spotipy
`pip install spotipy`

python-dotenv
`pip install python-dotenv`

### Instrucciones para usar python-dotenv (una librería que permite cargar variables de entorno desde un archivo *.env* a tu código Python)

1. Instala *python-dotenv*
2. Crea un archivo *.env* en la misma **carpeta** que el *.ipynb* donde vas a usar tus credenciales.
3. Escribe en él:

    `CLIENT_ID = tu_client_id_de_spotify`
    `CLIENT_SECRET=tu_client_secret_de_spotify`

4. Crea un archivo *.gitignore* en la raíz (principal), si ya existe, comprueba que el siguiente paso está contenido en él.
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

Es recomendable tener cuenta de desarrollador en [Spotify](https://developer.spotify.com/) para obtener `CLIENT_ID` y `CLIENT_SECRET` (las credenciales de la API) para poder ejecutar una nueva extracción de datos.

## 2. Estructura del repositorio

Explicación de carpetas y archivos principales:

    -fase-1-extraccion-individual-x-genero 
     |__country
     |
     |__metal
     |
     |__pop
     |
     |__r&b
     |
     |__rock
     |
    -last.fm
     |
    -working_agreement.md
     |
    -README.md 


### 3. Fuente de los datos

*-----> Aquí va el origen de los datos (API) y fecha de obtención.*

Datos obtenidos de la API de Spotify para desarroladores en octubre 2025.

#
## 4. Proceso de limpieza y transformación

Pasos clave: manejo de nulos, normalización, formato de fechas, etc.

*Ejemplo:*
        
         "Se eliminaron registros con más del 30% de valores nulos y se estandarizaron los nombres de columnas."
#
## 5. Esquema de la base de datos

Diagrama o tabla con las tablas, columnas y relaciones.

## 6. Ejemplo de uso

Consulta SQL básica para validar la carga.

*Ejemplo:*

`SELECT COUNT() FROM ventas;`

#
## 7. Autoras y licencia

Nombres de las colaboradoras y tipo de licencia (MIT, GPL, etc.).


## 9. Posibles mejoras

Ideas para futuras actualizaciones (ej: automatizar la extracción).
