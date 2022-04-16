create table if not exists Genre(
	id serial primary key,
	name varchar(40) not null
);

create table if not exists Singers(
	id serial primary key,
	name varchar(40) not null	
);

create table if not exists GenreSinger(
	singer_id integer references Singers(id),	
	genre_id integer references Genre(id),
	constraint singer_genre primary key (singer_id, genre_id)
);

create table if not exists Album(
	id serial primary key,
	name varchar(64) not null,
	release_date integer not null	
);

create table if not exists SingerAlbum(
	singer_id integer references Singers(id),	
	album_id integer references Album(id),
	constraint singer_album primary key (singer_id, album_id)
);

create table if not exists Collection(
	id serial primary key,
	name varchar(64) not null,
	release_date integer not null	
);

create table if not exists Tracks(
	id serial primary key,
	name varchar(64) not null,
	duration integer not null,
	album_id integer references Album(id)
);

create table if not exists CollectionTrack(
	collection_id integer references Collection(id),	
	track_id integer references Tracks(id),
	constraint collection_track primary key (collection_id, track_id)
);