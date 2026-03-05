CREATE TABLE IF NOT EXISTS Genres (
    genre_id SERIAL PRIMARY KEY,
    name VARCHAR(100) UNIQUE NOT NULL
);

CREATE TABLE IF NOT EXISTS Artists (
    artist_id SERIAL PRIMARY KEY,
    name VARCHAR(200) NOT NULL
);

CREATE TABLE IF NOT EXISTS Albums (
    album_id SERIAL PRIMARY KEY,
    title VARCHAR(200) NOT NULL,
    release_year INTEGER CHECK (release_year > 1900 AND release_year <= EXTRACT(YEAR FROM CURRENT_DATE))
);

CREATE TABLE IF NOT EXISTS Tracks (
    track_id SERIAL PRIMARY KEY,
    title VARCHAR(300) NOT NULL,
    duration INTEGER CHECK (duration > 0),
    album_id INTEGER REFERENCES Albums(album_id) ON DELETE CASCADE
);

CREATE TABLE IF NOT EXISTS Collections (
    collection_id SERIAL PRIMARY KEY,
    title VARCHAR(200) NOT NULL,
    release_year INTEGER CHECK (release_year > 1900 AND release_year <= EXTRACT(YEAR FROM CURRENT_DATE))
);

CREATE TABLE IF NOT EXISTS ArtistGenre (
    artist_id INTEGER REFERENCES Artists(artist_id) ON DELETE CASCADE,
    genre_id INTEGER REFERENCES Genres(genre_id) ON DELETE CASCADE,
    PRIMARY KEY (artist_id, genre_id)
);

CREATE TABLE IF NOT EXISTS ArtistAlbum (
    artist_id INTEGER REFERENCES Artists(artist_id) ON DELETE CASCADE,
    album_id INTEGER REFERENCES Albums(album_id) ON DELETE CASCADE,
    PRIMARY KEY (artist_id, album_id)
);

CREATE TABLE IF NOT EXISTS CollectionTrack (
    collection_id INTEGER REFERENCES Collections(collection_id) ON DELETE CASCADE,
    track_id INTEGER REFERENCES Tracks(track_id) ON DELETE CASCADE,
    PRIMARY KEY (collection_id, track_id)
);