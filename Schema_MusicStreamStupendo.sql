-- DROP SCHEMA IF EXISTS MusicStreamStupendo;
CREATE SCHEMA MusicStreamStupendo;


USE MusicStreamStupendo;

-- TABLE S
CREATE TABLE spotify (	
	id VARCHAR(40) PRIMARY KEY,
    track_name VARCHAR(150),
    artist_name VARCHAR(255),								-- FK para lastfm
    `year` YEAR,   											
    genre ENUM("country", "metal", "pop", "r&b", "rock"),
    album_type VARCHAR(45),
    release_date DATE,										--  YYYY-MM-DD
    popularity INT
	);

    -- TABLE L
CREATE TABLE lastfm (
	artist_name VARCHAR(255) PRIMARY KEY, 	
    biography TEXT,							
    listeners INT,							
    playcount INT,
    similar_artists VARCHAR(500)
	);
    
    
    
    -- pruebitas varias 
    
   SELECT spotify.track_name, spotify.artist_name,spotify.genre, spotify.popularity, lastfm.listeners, lastfm.playcount, lastfm.biography
    FROM spotify
    LEFT JOIN lastfm
    ON spotify.artist_name = lastfm.artist_name; 
    