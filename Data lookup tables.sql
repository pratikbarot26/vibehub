-- use FinProject;

--category
INSERT INTO category_lookup (category)
VALUES 
('Board Game'),
('Book'),
('Movie'),
('Music'),
('Video Game');

--genre
INSERT INTO genre_lookup (genre)
VALUES
('Action'),
('Action-Adventure'),
('Adventure'),
('Classic'),
('Cooperative'),
('Crime'),
('Drama'),
('Dystopian'),
('Eurogames'),
('Fantasy'),
('Fiction'),
('Party Games'),
('Pop'),
('Progressive Rock'),
('Rock'),
('Role-Playing Game'),
('Science Fiction'),
('Sports'),
('Strategy'),
('Thriller'),
('Tile-laying'),
('War');

--status
INSERT INTO status_lookup (txn_status)
VALUES
('Issued'),
('Due'),
('Returned'),
('Returned past due');


INSERT INTO state_lookup (state_value)
VALUES
('MI'),
('NY'),
('CA'),
('NJ');

select * from category_lookup;
select * from genre_lookup;
select * from status_lookup;
select * from state_lookup;