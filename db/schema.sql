DROP TABLE IF EXISTS microposts_tags CASCADE;
DROP TABLE IF EXISTS authors CASCADE;
DROP TABLE IF EXISTS countries CASCADE;
DROP TABLE IF EXISTS tags CASCADE;
DROP TABLE IF EXISTS microposts CASCADE;
DROP TABLE IF EXISTS images CASCADE;

CREATE TABLE countries (
	id SERIAL PRIMARY KEY,
	name VARCHAR(255)
);

CREATE TABLE authors (
	id SERIAL PRIMARY KEY,
	username VARCHAR(255),
	avatar_img_url VARCHAR(255)
);

CREATE TABLE tags (
	id SERIAL PRIMARY KEY,
	name VARCHAR(255)
);

CREATE TABLE microposts (
	id SERIAL PRIMARY KEY,
	date_posted VARCHAR(255),
	title VARCHAR(100),
	content VARCHAR(500),
	city VARCHAR(255),
	country_id INTEGER references countries,
	author_id INTEGER references authors
);

CREATE TABLE images (
	id SERIAL PRIMARY KEY,
	img_url VARCHAR(512),
	caption VARCHAR(255),
	micropost_id INTEGER references microposts
);

CREATE TABLE microposts_tags (
	micropost_id INTEGER references microposts,
	tag_id INTEGER references tags
);