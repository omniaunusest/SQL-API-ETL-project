
-- 1. CREACIÓN DEL ESQUEMA
DROP SCHEMA IF EXISTS `musicstreamstupendo`;
CREATE SCHEMA `musicstreamstupendo`;
USE `musicstreamstupendo`;

-- 2. CREACIÓN DE TABLAS BASE


-- Información del artista (lastfm)
CREATE TABLE artists (
  artist_id VARCHAR(45) NOT NULL PRIMARY KEY,
  artist_name VARCHAR(100) NOT NULL,
  biography TEXT,
  listeners INT,
  playcount INT,
  similar_artists TEXT-- Denormalizado (no cumple 1FN) 
);

-- Información de álbumes (spotify)
CREATE TABLE albums (
  album_id VARCHAR(50) NOT NULL PRIMARY KEY,
  album_type VARCHAR(50) NULL,
  release_date DATE NULL,
  popularity INT NULL
);


-- Contiene la lista de géneros (Normalizado - 3FN)
CREATE TABLE genres (
  genre_id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
  genre_name VARCHAR(50) NOT NULL UNIQUE
);

-- Relacionada 1:N con Album, Artista Principal y Género Principal
CREATE TABLE top_tracks (
  track_id VARCHAR(50) NOT NULL PRIMARY KEY,
  title VARCHAR(200) NOT NULL,
  
  -- Claves Foráneas 1:N
  album_id VARCHAR(50) NOT NULL,
  artist_id_main VARCHAR(45) NOT NULL,
  genre_id INT NOT NULL,

  -- Definición de Restricciones FK
  CONSTRAINT fk_tracks_albums
    FOREIGN KEY (album_id)
    REFERENCES albums (album_id)
    ON DELETE RESTRICT
    ON UPDATE CASCADE,
    
  CONSTRAINT fk_tracks_artist_main
    FOREIGN KEY (artist_id_main)
    REFERENCES artists (artist_id)
    ON DELETE RESTRICT
    ON UPDATE CASCADE,

  CONSTRAINT fk_tracks_genres
    FOREIGN KEY (genre_id)
    REFERENCES genres (genre_id)
    ON DELETE RESTRICT
    ON UPDATE CASCADE
);


-- 4. TABLAS DE RELACIÓN (M:N)

-- Un artista puede tener varios géneros (M:N)
CREATE TABLE artist_has_genre (
  artist_id VARCHAR(45) NOT NULL,
  genre_id INT NOT NULL,
  PRIMARY KEY (artist_id, genre_id),
  
  CONSTRAINT fk_ahg_artist
    FOREIGN KEY (artist_id)
    REFERENCES artists (artist_id)
    ON DELETE CASCADE
    ON UPDATE CASCADE,
    
  CONSTRAINT fk_ahg_genre
    FOREIGN KEY (genre_id)
    REFERENCES genres (genre_id)
    ON DELETE CASCADE
    ON UPDATE CASCADE
);

-- Tabla: artist_has_track
-- Artistas Colaboradores (M:N)
CREATE TABLE artist_has_track (
  artist_id VARCHAR(45) NOT NULL,
  track_id VARCHAR(50) NOT NULL,
  role VARCHAR(50) NULL,
  PRIMARY KEY (artist_id, track_id),
  
  CONSTRAINT fk_aht_artist
    FOREIGN KEY (artist_id)
    REFERENCES artists (artist_id)
    ON DELETE CASCADE
    ON UPDATE CASCADE,
    
  CONSTRAINT fk_aht_track
    FOREIGN KEY (track_id)
    REFERENCES tracks (track_id)
    ON DELETE CASCADE
    ON UPDATE CASCADE
);