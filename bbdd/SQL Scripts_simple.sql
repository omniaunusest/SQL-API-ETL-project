
-- 1. Eliminación y Creación del Esquema
DROP SCHEMA IF EXISTS MusicStreamStupendo;
CREATE SCHEMA MusicStreamStupendo;
USE MusicStreamStupendo;

-- ----------------------------------------------------
-- TABLA L: lastfm (Información del Artista)
-- NOTA: El campo 'similar_artists' se mantiene como TEXT 
--       para almacenar una lista, lo cual viola la 1FN.

CREATE TABLE artists_last_fm (
	artist_name VARCHAR(100) PRIMARY KEY, 	
    biography TEXT,							
    listeners INT,							
    playcount INT,
    similar_artists TEXT 
);

-- TABLA NUEVA: albums_spotify (Información del Álbum/Lanzamiento)

CREATE TABLE albums_spotify (
    album_id INT PRIMARY KEY AUTO_INCREMENT,  -- vienen ya en los CSV? Mirar autoincrement
    album_name VARCHAR(255),
    album_type VARCHAR(50),
    release_date DATE,
    
    -- FK: Referencia al artista que lanzó el álbum
    artist_name VARCHAR(100) NOT NULL,
    FOREIGN KEY (artist_name) 
		REFERENCES artists_last_fm(artist_name)
        ON UPDATE CASCADE
);


CREATE TABLE top_tracks (	
	track_id VARCHAR(50) PRIMARY KEY, -- ID de la pista (Track ID)
    track_name VARCHAR(200) NOT NULL,
    genre ENUM("country", "metal", "pop", "r&b", "rock"),
    `year` YEAR,   
    popularity INT,
    
    -- FK1: Referencia al artista de la pista
    artist_name VARCHAR(100) NOT NULL,	
    FOREIGN KEY (artist_name) 
		REFERENCES lastfm(artist_name)
        ON UPDATE CASCADE,
        
    -- FK2: Referencia al álbum al que pertenece la pista
    album_id INT NOT NULL,
    FOREIGN KEY (album_id) 
		REFERENCES albums_spotify (album_id)
);
