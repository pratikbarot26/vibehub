-- use FinProject;

--stores

-- Insert record for New York (NY)
INSERT INTO stores (store_street, store_city, store_state, store_country, store_zipcode, store_phone, store_email)
VALUES ('123 Main St', 'New York City', 'NY', 'USA', '10001', '5551234567', 'ny_store1@entstore.com');

-- Insert record for New Jersey (NJ)
INSERT INTO stores (store_street, store_city, store_state, store_country, store_zipcode, store_phone, store_email)
VALUES ('456 Oak St', 'Jersey City', 'NJ', 'USA', '07302', '5559876543', 'nj_store1@entstore.com');

-- Insert record for California (CA)
INSERT INTO stores (store_street, store_city, store_state, store_country, store_zipcode, store_phone, store_email)
VALUES ('789 Palm St', 'Los Angeles', 'CA', 'USA', '90001', '5552345678', 'ca_store1@entstore.com');

-- Insert record for Michigan (MI)
INSERT INTO stores (store_street, store_city, store_state, store_country, store_zipcode, store_phone, store_email)
VALUES ('101 Pine St', 'Detroit', 'MI', 'USA', '48201', '5558765432', 'mi_store1@entstore.com');


--employees
INSERT INTO employees (employee_firstname, employee_lastname, employee_ssn, employee_email, employee_phone, employee_dob, employee_store_id, employee_salary, employee_jobtitle, employee_joining_date, employee_termination_date)
VALUES
('Manya', 'Swindley', '429-75-5634', 'mswindley0@entstore.com', '6825832321', '12/09/2002', 1, 7000, 'Store Manager', '10/17/2023', '01/10/2010'),
('Gwenni', 'Slane', '806-50-8830', 'gslane1@entstore.com', '5803581802', '12/16/1990', 2, 7000, 'Store Manager', '06/08/2023', null),
('Linus', 'Limeburner', '793-27-4919', 'llimeburner2@entstore.com', '6128192055', '09/11/1984', 3, 7000, 'Store Manager', '04/13/2020', null),
('Felice', 'Monnoyer', '649-54-1194', 'fmonnoyer3@entstore.com', '6705611656', '03/12/1998', 4, 7000, 'Store Manager', '09/17/2001', null),
('Quintin', 'Hoxey', '209-90-9677', 'qhoxey4@entstore.com', '3665846496', '06/28/1983', 1, 5000, 'Sales Associate', '10/14/2018', null),
('Jarrad', 'Manz', '850-21-3850', 'jmanz5@entstore.com', '2681206600', '12/21/2004', 2, 5000, 'Sales Associate', '04/19/2020', null),
('Anabel', 'Cammis', '196-35-4534', 'acammis6@entstore.com', '7085519166', '02/20/1986', 2, 5000, 'Sales Associate', '07/21/2009', '01/15/2018'),
('Diahann', 'Hefferon', '365-63-1401', 'dhefferon7@entstore.com', '6127823560', '07/07/1985', 3, 5000, 'Sales Associate', '12/09/2014', null),
('Marcille', 'Westall', '379-65-3784', 'mwestall8@entstore.com', '1131508747', '07/27/1987', 1, 7000, 'Store Manager', '11/03/2000', null),
('Claudetta', 'Klagge', '252-80-3955', 'cklagge9@entstore.com', '2483266482', '06/09/1986', 3, 5000, 'Sales Associate', '09/19/2020', null),
('Raff', 'Hartness', '705-63-9740', 'rhartnessa@entstore.com', '2189482063', '10/16/2004', 4, 5000, 'Sales Associate', '01/07/2017', '01/21/2004'),
('Lynn', 'McTrustrie', '121-98-3457', 'lmctrustrieb@entstore.com', '1624074301', '02/14/1986', 4, 5000, 'Sales Associate', '02/23/2007', null),
('Baxy', 'Leahy', '764-85-3220', 'bleahyc@entstore.com', '7701629636', '01/04/2000', 4, 5000, 'Sales Associate', '03/03/2015', null),
('Netta', 'Burgan', '118-21-9257', 'nburgand@entstore.com', '4923277230', '12/29/1995', 1, 5000, 'Sales Associate', '05/24/2022', null),
('Gran', 'Falls', '267-57-0795', 'gfallse@entstore.com', '1019130549', '06/01/1984', 3, 5000, 'Sales Associate', '05/11/2023', null),
('Lucita', 'Scritch', '744-44-2113', 'lscritchf@entstore.com', '5312192429', '04/17/1997', 4, 5000, 'Sales Associate', '07/19/2023', '06/19/2003'),
('Caitrin', 'Timmins', '359-72-1235', 'ctimminsg@entstore.com', '9296083776', '11/14/1994', 4, 5000, 'Sales Associate', '06/20/2001', null),
('Brandais', 'Gentle', '103-98-2271', 'bgentleh@entstore.com', '1154681285', '09/20/1985', 2, 6000, 'Accounting Associate', '07/03/2013', null),
('Mercy', 'Baszniak', '113-30-4942', 'mbaszniaki@entstore.com', '6424646556', '05/06/1997', 1, 6000, 'Accounting Associate', '10/14/2012', null),
('Jayme', 'Almak', '878-53-0880', 'jalmakj@entstore.com', '8817012053', '12/23/1992', 4, 6000, 'Accounting Associate', '09/13/2012', null),
('Andie', 'McOwen', '678-58-0228', 'amcowenk@entstore.com', '8793795679', '11/18/1980', 3, 6000, 'Accounting Associate', '07/27/2008', null),
('Carlynn', 'Merington', '542-68-8453', 'cmeringtonl@entstore.com', '2998657101', '03/14/2003', 4, 5500, 'Inventory Manager', '11/04/2013', '07/09/2019'),
('Olimpia', 'O''Doran', '769-68-0167', 'oodoranm@entstore.com', '1527971141', '07/17/1990', 1, 5500, 'Inventory Manager', '08/28/2014', null),
('Janel', 'Izachik', '368-86-8565', 'jizachikn@entstore.com', '3989855708', '10/16/1991', 3, 5500, 'Inventory Manager', '03/06/2006', null),
('Renaud', 'O'' Timony', '360-54-2530', 'rotimonyo@entstore.com', '8506205888', '11/25/1980', 2, 5500, 'Inventory Manager', '06/26/2015', '12/30/2018'),
('Macy', 'Maria', '545-68-8453', 'macymaria@entstore.com', '2710199865', '04/14/2003', 4, 5500, 'Inventory Manager', '12/01/2013', null),
('Kacy', 'Brian', '367-54-2530', 'kacybrian@entstore.com', '8558880620', '11/29/1980', 2, 5500, 'Inventory Manager', '06/26/2015', null);

--items
INSERT INTO items (item_name, item_category, item_genre, item_price, item_late_fee, item_avg_rating, item_total_ratings)
VALUES 
('The Great Gatsby', 'Book', 'Fiction', 12.99, 0.50, 4.5, 120),
('Abbey Road', 'Music', 'Rock', 15.99, NULL, 4.8, 90),
('The Dark Knight', 'Movie', 'Action', 19.99, 1.00, 4.9, 150),
('Settlers of Catan', 'Board Game', 'Strategy', 29.99, NULL, NULL, NULL),
('The Last of Us Part II', 'Video Game', 'Action-Adventure', 59.99, NULL, 4.7, 80),
('The Catcher in the Rye', 'Book', 'Fiction', 10.99, 0.30, 4.0, 80),
('Thriller', 'Music', 'Pop', 12.99, NULL, 4.5, 120),
('Inception', 'Movie', 'Science Fiction', 24.99, 1.50, 4.8, 100),
('Ticket to Ride', 'Board Game', 'Eurogames', 34.99, NULL, NULL, NULL),
('Red Dead Redemption 2', 'Video Game', 'Action-Adventure', 49.99, NULL, 4.9, 130),
('To Kill a Mockingbird', 'Book', 'Classic', 14.99, 0.25, 4.6, 110),
('Thriller Again', 'Music', 'Pop', 11.99, NULL, 4.3, 80),
('The Shawshank Redemption', 'Movie', 'Drama', 20.99, 1.25, 4.7, 140),
('Pandemic', 'Board Game', 'Cooperative', 39.99, NULL, NULL, NULL),
('Minecraft', 'Video Game', 'Adventure', 29.99, NULL, 4.5, 95),
('1984', 'Book', 'Dystopian', 11.99, 0.20, 4.2, 90),
('Dark Side of the Moon', 'Music', 'Progressive Rock', 17.99, NULL, 4.9, 120),
('Forrest Gump', 'Movie', 'Drama', 16.99, 1.00, 4.5, 110),
('Carcassonne', 'Board Game', 'Tile-laying', 24.99, NULL, NULL, NULL),
('The Legend of Zelda: Breath of the Wild', 'Video Game', 'Action-Adventure', 49.99, NULL, 4.8, 150),
('Crime and Punishment', 'Book', 'Classic', 13.99, 0.35, 4.1, 95),
('Bohemian Rhapsody', 'Music', 'Rock', 14.99, NULL, 4.7, 130),
('Inglourious Basterds', 'Movie', 'War', 18.99, 1.20, 4.5, 100),
('Codenames', 'Board Game', 'Party Games', 19.99, NULL, NULL, NULL),
('Assassin''s Creed Valhalla', 'Video Game', 'Action-Adventure', 59.99, NULL, 4.6, 80),
('Brave New World', 'Book', 'Dystopian', 12.99, 0.30, 4.3, 85),
('The Beatles', 'Music', 'Pop', 22.99, NULL, 4.9, 150),
('The Matrix', 'Movie', 'Science Fiction', 21.99, 1.30, 4.8, 120),
('Risk', 'Board Game', 'Strategy', 29.99, NULL, NULL, NULL),
('Spider-Man: Miles Morales', 'Video Game', 'Action-Adventure', 49.99, NULL, 4.7, 90),
('The Hobbit', 'Book', 'Fantasy', 15.99, 0.25, 4.6, 110),
('Sgt. Pepper''s Lonely Hearts Club Band', 'Music', 'Rock', 18.99, NULL, 4.8, 140),
('The Godfather', 'Movie', 'Crime', 23.99, 1.50, 4.9, 170),
('Splendor', 'Board Game', 'Strategy', 34.99, NULL, NULL, NULL),
('FIFA 22', 'Video Game', 'Sports', 54.99, NULL, 4.5, 75),
('The Hitchhiker''s Guide to the Galaxy', 'Book', 'Science Fiction', 11.99, 0.20, 4.0, 80),
('Led Zeppelin IV', 'Music', 'Rock', 16.99, NULL, 4.5, 110),
('Inception', 'Movie', 'Thriller', 24.99, 1.25, 4.8, 100);

--customers
INSERT INTO customers (customer_firstname, customer_lastname, customer_email, customer_phone, customer_dob, customer_rental_count, customer_late_count)
VALUES 
('John', 'Doe', 'john.doe@email.com', '5551234567', '1980-05-15', 5, 1),
('Alice', 'Johnson', 'alice.johnson@email.com', '5552345678', '1992-03-22', 10, 2),
('Michael', 'Smith', 'michael.smith@email.com', '5553456789', '1985-08-10', 7, 0),
('Emily', 'Williams', 'emily.williams@email.com', '5554567890', '1998-12-05', 3, 1),
('Robert', 'Brown', 'robert.brown@email.com', '5555678901', '1976-11-18', 8, 2),
('Sophia', 'Jones', 'sophia.jones@email.com', '5556789012', '1995-07-02', 6, 0),
('Daniel', 'Miller', 'daniel.miller@email.com', '5557890123', '1988-09-30', 4, 1),
('Olivia', 'Davis', 'olivia.davis@email.com', '5558901234', '1983-04-12', 9, 2),
('William', 'Taylor', 'william.taylor@email.com', '5559012345', '1990-02-28', 5, 0),
('Ava', 'Moore', 'ava.moore@email.com', '5550123456', '1982-06-25', 12, 3),
('Ethan', 'Anderson', 'ethan.anderson@email.com', '5552345678', '2001-07-08', 2, 0),
('Mia', 'Garcia', 'mia.garcia@email.com', '5553456789', '1979-11-20', 8, 1),
('Lucas', 'Lee', 'lucas.lee@email.com', '5554567890', '1997-09-15', 5, 1),
('Emma', 'Scott', 'emma.scott@email.com', '5555678901', '1984-03-03', 7, 2),
('Alexander', 'Hill', 'alexander.hill@email.com', '5556789012', '1993-01-17', 6, 0),
('Abigail', 'White', 'abigail.white@email.com', '5557890123', '1986-04-29', 4, 1),
('James', 'Martin', 'james.martin@email.com', '5558901234', '1977-08-22', 9, 2),
('Avery', 'Clark', 'avery.clark@email.com', '5559012345', '1994-06-10', 5, 0),
('Scarlett', 'Turner', 'scarlett.turner@email.com', '5550123456', '1981-02-14', 12, 3),
('Benjamin', 'Lewis', 'benjamin.lewis@email.com', '5551234567', '1999-05-07', 2, 0);

--inventory
INSERT INTO store_inventory (inventory_store_id, inventory_item_id, actual_quantity, available_quantity)
VALUES 
(1, 1, 50, 48),
(1, 2, 30, 29),
(1, 3, 20, 19),
(1, 4, 40, 39),
(1, 5, 15, 14),
(1, 6, 60, 59),
(1, 7, 25, 24),
(1, 8, 18, 17),
(1, 9, 35, 34),
(1, 10, 12, 11),
(1, 11, 55, 54),
(1, 12, 27, 26),
(1, 13, 22, 21),
(1, 14, 30, 29),
(1, 15, 18, 17),
(1, 16, 45, 44),
(1, 17, 33, 32),
(1, 18, 25, 24),
(1, 19, 38, 36),
(1, 20, 20, 19),
(1, 21, 28, 27),
(1, 22, 40, 38),
(1, 23, 15, 14),
(1, 24, 22, 21),
(1, 25, 10, 9),
(1, 26, 33, 32),
(1, 27, 50, 49),
(1, 28, 18, 13),
(1, 29, 25, 22),
(1, 30, 12, 9),
(1, 31, 30, 27),
(1, 32, 28, 25),
(1, 33, 20, 17),
(1, 34, 30, 27),
(1, 35, 15, 8),
(1, 36, 42, 34),
(1, 37, 35, 27),
(1, 38, 18, 13),
(2, 1, 50, 48),
(2, 2, 30, 29),
(2, 3, 20, 19),
(2, 4, 40, 39),
(2, 5, 15, 14),
(2, 6, 60, 59),
(2, 7, 25, 24),
(2, 8, 18, 17),
(2, 9, 35, 34),
(2, 10, 12, 11),
(2, 11, 55, 54),
(2, 12, 27, 26),
(2, 13, 22, 21),
(2, 14, 30, 29),
(2, 15, 18, 17),
(2, 16, 45, 44),
(2, 17, 33, 32),
(2, 18, 25, 24),
(2, 19, 38, 36),
(2, 20, 20, 19),
(2, 21, 28, 27),
(2, 22, 40, 38),
(2, 23, 15, 14),
(2, 24, 22, 21),
(2, 25, 10, 9),
(2, 26, 33, 32),
(2, 27, 50, 49),
(2, 28, 18, 13),
(2, 29, 25, 22),
(2, 30, 12, 9),
(2, 31, 30, 27),
(2, 32, 28, 25),
(2, 33, 20, 17),
(2, 34, 30, 27),
(2, 35, 15, 8),
(2, 36, 42, 34),
(2, 37, 35, 27),
(2, 38, 18, 13),
(3, 1, 50, 48),
(3, 2, 30, 29),
(3, 3, 20, 19),
(3, 4, 40, 39),
(3, 5, 15, 14),
(3, 6, 60, 59),
(3, 7, 25, 24),
(3, 8, 18, 17),
(3, 9, 35, 34),
(3, 10, 12, 11),
(3, 11, 55, 54),
(3, 12, 27, 26),
(3, 13, 22, 21),
(3, 14, 30, 29),
(3, 15, 18, 17),
(3, 16, 45, 44),
(3, 17, 33, 32),
(3, 18, 25, 24),
(3, 19, 38, 36),
(3, 20, 20, 19),
(3, 21, 28, 27),
(3, 22, 40, 38),
(3, 23, 15, 14),
(3, 24, 22, 21),
(3, 25, 10, 9),
(3, 26, 33, 32),
(3, 27, 50, 49),
(3, 28, 18, 13),
(3, 29, 25, 22),
(3, 31, 30, 27),
(3, 32, 28, 25),
(3, 33, 20, 17),
(3, 34, 30, 27),
(3, 35, 15, 8),
(3, 36, 42, 34),
(3, 37, 35, 27),
(3, 38, 18, 13),
(4, 1, 50, 48),
(4, 2, 30, 29),
(4, 3, 20, 19),
(4, 4, 40, 39),
(4, 5, 15, 14),
(4, 6, 60, 59),
(4, 7, 25, 24),
(4, 8, 18, 17),
(4, 9, 35, 34),
(4, 10, 12, 11),
(4, 11, 55, 54),
(4, 12, 27, 26),
(4, 13, 22, 21),
(4, 14, 30, 29),
(4, 15, 18, 17),
(4, 16, 45, 44),
(4, 17, 33, 32),
(4, 18, 25, 24),
(4, 19, 38, 36),
(4, 20, 20, 19),
(4, 21, 28, 27),
(4, 22, 40, 38),
(4, 23, 15, 14),
(4, 24, 22, 21),
(4, 25, 10, 9),
(4, 26, 33, 32),
(4, 27, 50, 49),
(4, 28, 18, 13),
(4, 29, 25, 22),
(4, 31, 30, 27),
(4, 32, 28, 25),
(4, 33, 20, 17),
(4, 34, 30, 27),
(4, 35, 15, 8),
(4, 36, 42, 34),
(4, 37, 35, 27),
(4, 38, 18, 13);


--transactions
INSERT INTO transactions (transaction_employee_id, transaction_customer_id, transaction_item_id, transaction_actual_return_date, transaction_store_id, transaction_status, transaction_amount)
VALUES
(5, 3, 1, null, 1, 'Issued', 12.99),
(15, 5, 28, null, 2, 'Issued', 21.99),
(17, 7, 22, '12/17/2023', 3, 'Returned past due', 14.99),
(2, 9, 19, '12/22/2023', 4, 'Returned past due', 24.99),
(4, 11, 22, null, 1, 'Issued', 14.99),
(17, 13, 19, null, 2, 'Issued', 24.99),
(5, 15, 28, null, 3, 'Issued', 21.99),
(10, 17, 36, '12/10/2023', 4, 'Returned past due', 11.99),
(15, 19, 37, '12/02/2023', 1, 'Returned', 16.99),
(17, 20, 1, null, 2, 'Issued', 12.99),
(14, 20, 2, null, 3, 'Issued', 15.99),
(16, 20, 3, null, 4, 'Issued', 19.99),
(5, 20, 4, null, 1, 'Issued', 29.99),
(8, 20, 5, null, 2, 'Issued', 59.99),
(9, 17, 6, null, 3, 'Issued', 10.99),
(10, 5, 7, null, 4, 'Issued', 12.99),
(7, 1, 8, null, 1, 'Issued', 24.99),
(17, 2, 9, null, 2, 'Issued', 34.99),
(17, 3, 10, null, 3, 'Issued', 49.99),
(17, 4, 11, null, 4, 'Issued', 14.99),
(17, 5, 12, null, 1, 'Issued', 11.99),
(17, 6, 13, null, 2, 'Issued', 20.99),
(17, 7, 14, null, 3, 'Issued', 39.99),
(15, 8, 15, null, 4, 'Issued', 29.99),
(17, 9, 16, null, 1, 'Issued', 11.99),
(2, 10, 17, null, 2, 'Issued', 17.99),
(4, 11, 18, null, 3, 'Issued', 16.99),
(17, 12, 19, null, 4, 'Issued', 24.99),
(5, 13, 20, null, 1, 'Issued', 49.99),
(17, 14, 21, null, 2, 'Issued', 13.99),
(17, 15, 22, null, 3, 'Issued', 14.99),
(15, 16, 23, null, 4, 'Issued', 18.99),
(12, 17, 24, null, 1, 'Issued', 19.99),
(6, 18, 25, null, 2, 'Issued', 59.99),
(11, 19, 26, null, 3, 'Issued', 12.99),
(13, 20, 27, null, 4, 'Issued', 22.99),
(17, 17, 28, null, 1, 'Issued', 21.99),
(15, 12, 29, null, 2, 'Issued', 29.99),
(17, 13, 30, null, 3, 'Issued', 49.99),
(2, 14, 31, null, 4, 'Issued', 15.99),
(4, 15, 32, null, 1, 'Issued', 18.99),
(17, 16, 33, null, 2, 'Issued', 23.99),
(5, 17, 34, null, 3, 'Issued', 34.99),
(17, 18, 35, null, 4, 'Issued', 54.99),
(17, 19, 36, null, 1, 'Issued', 11.99),
(15, 20, 37, null, 2, 'Issued', 16.99),
(12, 17, 38, null, 3, 'Issued', 24.99),
(17, 17, 28, null, 4, 'Issued', 21.99),
(15, 12, 29, null, 1, 'Issued', 29.99),
(17, 13, 30, null, 2, 'Issued', 49.99),
(2, 14, 31, null, 3, 'Issued', 15.99),
(4, 15, 32, null, 4, 'Issued', 18.99),
(17, 16, 33, null, 1, 'Issued', 23.99),
(5, 17, 34, null, 2, 'Issued', 34.99),
(17, 18, 35, null, 3, 'Issued', 54.99),
(17, 19, 36, null, 4, 'Issued', 11.99),
(15, 20, 37, null, 1, 'Issued', 16.99),
(12, 17, 38, null, 2, 'Issued', 24.99),
(17, 17, 28, null, 3, 'Issued', 21.99),
(15, 12, 29, null, 4, 'Issued', 29.99),
(17, 13, 30, null, 1, 'Issued', 49.99),
(2, 14, 31, null, 2, 'Issued', 15.99),
(4, 15, 32, null, 3, 'Issued', 18.99),
(17, 16, 33, null, 4, 'Issued', 23.99),
(5, 17, 34, null, 1, 'Issued', 34.99),
(17, 18, 35, null, 2, 'Issued', 54.99),
(17, 19, 36, null, 3, 'Issued', 11.99),
(15, 20, 37, null, 4, 'Issued', 16.99),
(12, 17, 38, null, 1, 'Issued', 24.99),
(17, 18, 35, null, 2, 'Issued', 54.99),
(17, 19, 36, null, 3, 'Issued', 11.99),
(15, 20, 37, null, 4, 'Issued', 16.99);



select * from stores;
select * from transactions;
select * from employees;
select * from customers;
select * from items;
select * from store_inventory;