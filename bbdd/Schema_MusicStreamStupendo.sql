-- DROP SCHEMA IF EXISTS MusicStreamStupendo;
CREATE SCHEMA MusicStreamStupendo;


USE MusicStreamStupendo;

-- TABLE S
CREATE TABLE spotify (	
	id VARCHAR(50) PRIMARY KEY,
    track_name VARCHAR(200),
    artist_name VARCHAR(100),								-- FK para lastfm
    `year` YEAR,   											
    genre ENUM("country", "metal", "pop", "r&b", "rock"),
    album_type VARCHAR(50),
    release_date DATE,										--  YYYY-MM-DD
    popularity INT
	);

    -- TABLE L
CREATE TABLE lastfm (
	artist_name VARCHAR(100) PRIMARY KEY, 	
    biography TEXT,							
    listeners INT,							
    playcount INT,
    similar_artists VARCHAR(400)
	);
    
    
    -- pruebitas varias 
    
   SELECT spotify.track_name, spotify.artist_name,spotify.genre, spotify.popularity, lastfm.listeners, lastfm.playcount, lastfm.biography
    FROM spotify
    LEFT JOIN lastfm
    ON spotify.artist_name = lastfm.artist_name; 
    
    
    
    