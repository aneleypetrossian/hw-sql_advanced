SELECT title, duration
FROM Tracks
ORDER BY duration DESC
LIMIT 1;

SELECT title
FROM Tracks
WHERE duration >= 210;

SELECT title
FROM Collections
WHERE release_year BETWEEN 2018 AND 2020;

SELECT name
FROM Artists
WHERE name NOT LIKE '% %' AND name NOT LIKE '%-%';

SELECT title
FROM Tracks
WHERE LOWER(title) LIKE '%мой%' OR LOWER(title) LIKE '%ту%';

SELECT g.name, COUNT(ag.artist_id)
FROM Genres g
LEFT JOIN ArtistGenre ag ON g.genre_id = ag.genre_id
GROUP BY g.name
ORDER BY COUNT(ag.artist_id) DESC;

SELECT COUNT(t.track_id)
FROM Tracks t
JOIN Albums a ON t.album_id = a.album_id
WHERE a.release_year BETWEEN 2019 AND 2020;

SELECT a.title, ROUND(AVG(t.duration), 2)
FROM Albums a
JOIN Tracks t ON a.album_id = t.album_id
GROUP BY a.title
ORDER BY AVG(t.duration) DESC;

SELECT ar.name
FROM Artists ar
WHERE ar.artist_id NOT IN (
    SELECT DISTINCT aa.artist_id
    FROM ArtistAlbum aa
    JOIN Albums al ON aa.album_id = al.album_id
    WHERE al.release_year = 2020
)
ORDER BY ar.name;

SELECT DISTINCT c.title
FROM Collections c
JOIN CollectionTrack ct ON c.collection_id = ct.collection_id
JOIN Tracks t ON ct.track_id = t.track_id
JOIN ArtistAlbum aa ON t.album_id = aa.album_id
JOIN Artists ar ON aa.artist_id = ar.artist_id
WHERE ar.name = 'Imagine Dragons'
ORDER BY c.title;