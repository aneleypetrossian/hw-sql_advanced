INSERT INTO Genres (name) VALUES 
    ('Рок'),
    ('Поп'),
    ('Хип-хоп'),
    ('Электронная музыка');

INSERT INTO Artists (name) VALUES 
    ('Imagine Dragons'),
    ('Dua Lipa'),
    ('Баста'),
    ('The Chainsmokers'),
    ('Zivert');

INSERT INTO Albums (title, release_year) VALUES 
    ('Origins', 2018),
    ('Future Nostalgia', 2020),
    ('Баста 40', 2020),
    ('Memories', 2022),
    ('Vinyl #1', 2019),
    ('Test Album', 2023);

INSERT INTO Collections (title, release_year) VALUES 
    ('Best of 2020', 2020),
    ('Рок хиты', 2021),
    ('Поп музыка', 2022),
    ('Хиты всех времен', 2023),
    ('Танцевальный', 2019);

INSERT INTO Tracks (title, duration, album_id) VALUES 
    ('Natural', 189, 1),
    ('Bad Guy', 194, 1),
    ('Don''t Start Now', 183, 2),
    ('Physical', 193, 2),
    ('Сансара', 215, 3),
    ('Выпускной', 210, 3),
    ('Closer', 244, 4),
    ('Something Just Like This', 247, 4),
    ('Life', 184, 5),
    ('Мой бой', 210, 3),
    ('my own', 180, 6),
    ('own my', 185, 6),
    ('my', 175, 6),
    ('oh my god', 190, 6),
    ('myself', 200, 6),
    ('by myself', 205, 6),
    ('be my self', 195, 6),
    ('myself by', 210, 6),
    ('by myself by', 215, 6),
    ('be my', 170, 6),
    ('premyne', 165, 6),
    ('тут я', 188, 6),
    ('я тут', 192, 6),
    ('ту', 178, 6),
    ('ту самую', 182, 6),
    ('потут', 200, 6);

INSERT INTO ArtistGenre (artist_id, genre_id) VALUES 
    (1, 1),
    (1, 4),
    (2, 2),
    (3, 3),
    (4, 4),
    (5, 2);

INSERT INTO ArtistAlbum (artist_id, album_id) VALUES 
    (1, 1),
    (2, 2),
    (3, 3),
    (4, 4),
    (5, 5);

INSERT INTO CollectionTrack (collection_id, track_id) VALUES 
    (1, 3),
    (1, 4),
    (1, 5),
    (2, 1),
    (2, 2),
    (3, 3),
    (3, 4),
    (3, 9),
    (4, 1),
    (4, 3),
    (4, 5),
    (4, 7),
    (5, 7),
    (5, 8),
    (5, 9);