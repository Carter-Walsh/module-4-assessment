-- Artist Table
-- Select 10 artists in reverse alphabetical order.
SELECT * 
FROM artist
ORDER BY name DESC;

-- Select all artists that start with the word ‘Black’.
SELECT *
FROM artist
WHERE name LIKE 'Black%';

-- Select all artists that contain the word ‘Black’.
SELECT *
FROM artist
WHERE name LIKE '%Black%';



-- Employee Table
-- Find the birthdate for the youngest employee.
SELECT birth_date
FROM employee
ORDER BY birth_date DESC
LIMIT 1;

-- Find the birthdate for the oldest employee.
SELECT birth_date
FROM employee
ORDER BY birth_date
LIMIT 1;



-- Invoice Table
-- Count how many orders were in CA, TX, or AZ (use IN).
SELECT COUNT(*) 
FROM invoice
WHERE billing_state = 'TX' OR billing_state = 'CA' OR billing_state = 'AZ';

-- Get the average total of the orders.
SELECT AVG(total)
FROM invoice;



-- More Join Queries
-- Get all playlist_track track_ids where the playlist name is Music.
SELECT track.track_id, playlist.name, track.name
FROM track
JOIN playlist_track
ON track.track_id = playlist_track.track_id
JOIN playlist
ON playlist_track.playlist_id = playlist.playlist_id
WHERE playlist.name = 'Music';

-- Get all track names for playlist_id 5.
SELECT name, playlist_id
FROM track
JOIN playlist_track
ON track.track_id = playlist_track.track_id
WHERE playlist_id = 5;

-- Get all track names and the playlist name that they’re on ( 2 joins ).
SELECT track.name, playlist.name
FROM track
JOIN playlist_track
ON track.track_id = playlist_track.track_id
JOIN playlist
ON playlist_track.playlist_id = playlist.playlist_id;

-- Get all track names and album titles that are the genre Alternative & Punk ( 2 joins ).
SELECT track.name AS track_name, album.title AS album_name
FROM track
JOIN album
ON track.album_id = album.album_id
WHERE genre_id IN (
  SELECT genre_id FROM genre WHERE name = 'Alternative & Punk'
);