INSERT INTO album(name, release_date) VALUES('That''s Life', 1966);
INSERT INTO album(name, release_date) VALUES('It''s Time', 2005);
INSERT INTO album(name, release_date) VALUES('The Freddie Mercury Album', 1992);
INSERT INTO album(name, release_date) VALUES('Rachmaninov (The Best of)', 1997);
INSERT INTO album(name, release_date) VALUES('Greatest Hits', 1974);
INSERT INTO album(name, release_date) VALUES('Essential Love Songs', 2015);
INSERT INTO album(name, release_date) VALUES('Ты была права', 2021);
INSERT INTO album(name, release_date) VALUES('Летний дождь', 1998);

INSERT INTO singers(name) VALUES('Sinatra');
INSERT INTO singers(name) VALUES('Bubble');
INSERT INTO singers(name) VALUES('Freddie');
INSERT INTO singers(name) VALUES('Rachmaninov');
INSERT INTO singers(name) VALUES('Elton');
INSERT INTO singers(name) VALUES('Richard');
INSERT INTO singers(name) VALUES('Basta');
INSERT INTO singers(name) VALUES('Agutin');

INSERT INTO genre(name) VALUES('rock');
INSERT INTO genre(name) VALUES('pop');
INSERT INTO genre(name) VALUES('classic');
INSERT INTO genre(name) VALUES('instrumental');
INSERT INTO genre(name) VALUES('rap');

INSERT INTO tracks(name, duration, album_id) VALUES('That''s Life', 190, 1);
INSERT INTO tracks(name, duration, album_id) VALUES('What Now My Love', 159, 1);
INSERT INTO tracks(name, duration, album_id) VALUES('I Will Wait For You', 102, 1);
INSERT INTO tracks(name, duration, album_id) VALUES('Feeling Good', 238, 2);
INSERT INTO tracks(name, duration, album_id) VALUES('A Foggy Day (in London Town)', 151, 2);
INSERT INTO tracks(name, duration, album_id) VALUES('You Don''t Know Me', 254, 2);
INSERT INTO tracks(name, duration, album_id) VALUES('The Great Pretender', 205, 3);
INSERT INTO tracks(name, duration, album_id) VALUES('In My Defence', 232, 3);
INSERT INTO tracks(name, duration, album_id) VALUES('Mr. Bad Guy', 250, 3);
INSERT INTO tracks(name, duration, album_id) VALUES('14 Songs, Op. 34: Vocalise, Op. 34, No. 14', 417, 4);
INSERT INTO tracks(name, duration, album_id) VALUES('Symphony No. 2 in E minor: Adagio', 886, 4);
INSERT INTO tracks(name, duration, album_id) VALUES('Piano Concerto No. 3 in D minor: Allegro ma non tanto', 1052, 4);
INSERT INTO tracks(name, duration, album_id) VALUES('Your Song', 228, 5);
INSERT INTO tracks(name, duration, album_id) VALUES('Rocket Man', 282, 5);
INSERT INTO tracks(name, duration, album_id) VALUES('Candle in the Wind', 265, 5);
INSERT INTO tracks(name, duration, album_id) VALUES('Hello', 189, 6);
INSERT INTO tracks(name, duration, album_id) VALUES('Ballade pour adeline', 155, 6);
INSERT INTO tracks(name, duration, album_id) VALUES('I Will Always Love You', 247, 6);
INSERT INTO tracks(name, duration, album_id) VALUES('Ты была права', 118, 7);
INSERT INTO tracks(name, duration, album_id) VALUES('Королева!', 208, 8);
INSERT INTO tracks(name, duration, album_id) VALUES('Летний Дождь', 244, 8);
INSERT INTO tracks(name, duration, album_id) VALUES('Candle in the Wind', 265, 8);

INSERT INTO collection(name, release_date) VALUES('The best collection 1', 2015);
INSERT INTO collection(name, release_date) VALUES('The best collection 2', 2016);
INSERT INTO collection(name, release_date) VALUES('The best collection 3', 2017);
INSERT INTO collection(name, release_date) VALUES('The best collection 4', 2018);
INSERT INTO collection(name, release_date) VALUES('The best collection 5', 2019);
INSERT INTO collection(name, release_date) VALUES('The best collection 6', 2020);
INSERT INTO collection(name, release_date) VALUES('The best collection 7', 2021);
INSERT INTO collection(name, release_date) VALUES('The best collection 8', 2022);

INSERT INTO collectiontrack(collection_id, track_id) VALUES(1, 21);
INSERT INTO collectiontrack(collection_id, track_id) VALUES(1, 1);
INSERT INTO collectiontrack(collection_id, track_id) VALUES(1, 5);
INSERT INTO collectiontrack(collection_id, track_id) VALUES(1, 18);
INSERT INTO collectiontrack(collection_id, track_id) VALUES(2, 2);
INSERT INTO collectiontrack(collection_id, track_id) VALUES(2, 3);
INSERT INTO collectiontrack(collection_id, track_id) VALUES(2, 6);
INSERT INTO collectiontrack(collection_id, track_id) VALUES(3, 6);
INSERT INTO collectiontrack(collection_id, track_id) VALUES(3, 17);
INSERT INTO collectiontrack(collection_id, track_id) VALUES(3, 1);
INSERT INTO collectiontrack(collection_id, track_id) VALUES(4, 11);
INSERT INTO collectiontrack(collection_id, track_id) VALUES(4, 5);
INSERT INTO collectiontrack(collection_id, track_id) VALUES(4, 21);
INSERT INTO collectiontrack(collection_id, track_id) VALUES(5, 20);
INSERT INTO collectiontrack(collection_id, track_id) VALUES(5, 18);
INSERT INTO collectiontrack(collection_id, track_id) VALUES(5, 1);
INSERT INTO collectiontrack(collection_id, track_id) VALUES(5, 2);
INSERT INTO collectiontrack(collection_id, track_id) VALUES(6, 1);
INSERT INTO collectiontrack(collection_id, track_id) VALUES(6, 3);
INSERT INTO collectiontrack(collection_id, track_id) VALUES(6, 5);
INSERT INTO collectiontrack(collection_id, track_id) VALUES(6, 12);
INSERT INTO collectiontrack(collection_id, track_id) VALUES(7, 13);
INSERT INTO collectiontrack(collection_id, track_id) VALUES(7, 8);
INSERT INTO collectiontrack(collection_id, track_id) VALUES(7, 4);
INSERT INTO collectiontrack(collection_id, track_id) VALUES(8, 17);
INSERT INTO collectiontrack(collection_id, track_id) VALUES(8, 3);
INSERT INTO collectiontrack(collection_id, track_id) VALUES(8, 8);
INSERT INTO collectiontrack(collection_id, track_id) VALUES(8, 22);

INSERT INTO genresinger(singer_id, genre_id) VALUES(1, 2);
INSERT INTO genresinger(singer_id, genre_id) VALUES(2, 2);
INSERT INTO genresinger(singer_id, genre_id) VALUES(3, 1);
INSERT INTO genresinger(singer_id, genre_id) VALUES(3, 2);
INSERT INTO genresinger(singer_id, genre_id) VALUES(3, 3);
INSERT INTO genresinger(singer_id, genre_id) VALUES(4, 3);
INSERT INTO genresinger(singer_id, genre_id) VALUES(5, 2);
INSERT INTO genresinger(singer_id, genre_id) VALUES(6, 3);
INSERT INTO genresinger(singer_id, genre_id) VALUES(6, 4);
INSERT INTO genresinger(singer_id, genre_id) VALUES(7, 2);
INSERT INTO genresinger(singer_id, genre_id) VALUES(7, 5);
INSERT INTO genresinger(singer_id, genre_id) VALUES(8, 1);
INSERT INTO genresinger(singer_id, genre_id) VALUES(8, 2);

INSERT INTO singeralbum(singer_id, album_id) VALUES(1, 1);
INSERT INTO singeralbum(singer_id, album_id) VALUES(1, 2);
INSERT INTO singeralbum(singer_id, album_id) VALUES(2, 2);
INSERT INTO singeralbum(singer_id, album_id) VALUES(2, 5);
INSERT INTO singeralbum(singer_id, album_id) VALUES(3, 3);
INSERT INTO singeralbum(singer_id, album_id) VALUES(3, 5);
INSERT INTO singeralbum(singer_id, album_id) VALUES(4, 4);
INSERT INTO singeralbum(singer_id, album_id) VALUES(4, 5);
INSERT INTO singeralbum(singer_id, album_id) VALUES(5, 1);
INSERT INTO singeralbum(singer_id, album_id) VALUES(5, 2);
INSERT INTO singeralbum(singer_id, album_id) VALUES(5, 5);
INSERT INTO singeralbum(singer_id, album_id) VALUES(6, 2);
INSERT INTO singeralbum(singer_id, album_id) VALUES(6, 5);
INSERT INTO singeralbum(singer_id, album_id) VALUES(6, 6);
INSERT INTO singeralbum(singer_id, album_id) VALUES(7, 7);
INSERT INTO singeralbum(singer_id, album_id) VALUES(7, 8);
INSERT INTO singeralbum(singer_id, album_id) VALUES(5, 8);
INSERT INTO singeralbum(singer_id, album_id) VALUES(6, 8);
INSERT INTO singeralbum(singer_id, album_id) VALUES(8, 8);



