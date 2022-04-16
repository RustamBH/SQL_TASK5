1 количество исполнителей в каждом жанре;
==========================================
SELECT g.name, count(*)
FROM singers s 
full JOIN genresinger gs
	on s.id = gs.singer_id
full JOIN genre g 
	on gs.genre_id = g.id
GROUP BY g.name;

2 количество треков, вошедших в альбомы 2019-2020 годов;
======================================================
SELECT count(*) as tracks_count, release_date
FROM tracks t 
left JOIN album a
	on t.album_id = a.id
WHERE a.release_date BETWEEN 2019 AND 2020
GROUP BY a.release_date;


3 средняя продолжительность треков по каждому альбому;
======================================================
SELECT a.name, round(avg(t.duration), 2)
FROM tracks t 
left JOIN album a
	on t.album_id = a.id
GROUP BY a.name;


4 все исполнители, которые не выпустили альбомы в 2020 году;
==========================================================
SELECT s.name
FROM singers s
left JOIN singeralbum sa 
	on s.id = sa.singer_id 
left JOIN album a
	on sa.album_id = a.id
WHERE s.name not in (
	SELECT s.name
	FROM singers s
	left JOIN singeralbum sa 
		on s.id = sa.singer_id 
	left JOIN album a
		on sa.album_id = a.id
	WHERE a.release_date = 2020)
GROUP BY s.name;


5 названия сборников, в которых присутствует конкретный исполнитель (выберите сами);
===================================================================================
SELECT c.name as collection_name, s.name as singer
FROM collection c
left JOIN collectiontrack ct 
	on c.id = ct.collection_id 
left JOIN tracks t
	on ct.track_id  = t.id
left JOIN album a
	on t.album_id = a.id
left JOIN singeralbum sa
	on a.id = sa.album_id
left JOIN singers s
	on sa.singer_id = s.id
WHERE s.name = 'Rachmaninov'
GROUP BY c.name, s.name;

6 название альбомов, в которых присутствуют исполнители более 1 жанра;
====================================================================
SELECT a.name
FROM album a
left JOIN singeralbum sa 
	on a.id = sa.album_id 
left JOIN singers s
	on s.id = sa.singer_id
left JOIN genresinger gs 
	on s.id = gs.singer_id 
left JOIN genre g
	on gs.genre_id = g.id
WHERE s.name in (
	SELECT s.name
	FROM singers s
	left JOIN genresinger gs 
		on s.id = gs.singer_id 
	left JOIN genre g
		on gs.genre_id = g.id
	GROUP BY s.name
	having count(g.name) > 1)
GROUP BY a.name;

7 наименование треков, которые не входят в сборники;
==================================================
SELECT t.name 
FROM tracks t
WHERE t.name not in (
	SELECT t.name
	FROM collection c
	left JOIN collectiontrack ct 
		on c.id = ct.collection_id 
	left JOIN tracks t
		on ct.track_id = t.id
);

8 исполнителя(-ей), написавшего самый короткий по продолжительности трек (теоретически таких треков может быть несколько);
========================================================================================================================
SELECT s.name, t.duration, count(t.name) as tracks_count
FROM singers s
left JOIN singeralbum sa
	on s.id = sa.singer_id 
left JOIN album a
	on sa.album_id = a.id
left JOIN tracks t
	on a.id = t.album_id
WHERE t.duration = (
	SELECT min(t2.duration)
	FROM tracks t2)
GROUP BY s.name, t.duration;

9 название альбомов, содержащих наименьшее количество треков.
===========================================================
SELECT a.name, count(*)  
FROM tracks t
left JOIN album a 
	on t.album_id = a.id
WHERE a.id in (
	SELECT a.id 
	FROM tracks t
	left JOIN album a 
		on t.album_id = a.id
	GROUP BY a.id
	order by count(a.id)
	limit 1
)
GROUP BY a.name;
