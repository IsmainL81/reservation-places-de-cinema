-- Database: reservation

-- DROP DATABASE IF EXISTS reservation;

CREATE DATABASE IF NOT EXISTS reservation;
    
SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";

-- Structure of the admin table

DROP TABLE IF EXISTS admin;
CREATE TABLE admin (
 id int(11) AUTO_INCREMENT NOT NULL,
 firstname varchar(20) NOT NULL,
 lastname varchar(20) NOT NULL,
 date_of_birth date NOT NULL,
 email varchar(30) NOT NULL,
 password varchar(10) NOT NULL,
 PRIMARY KEY (id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Contents of the admin table

INSERT INTO admin (id, firstname, lastname, date_of_birth, email, password) VALUES
('248948768', 'Dara', 'Chark', '1986-07-14', 'dara.chark@yahoo.fr', '$2y$10$FTb7NTshAjj4ErKdK.mVie60w75fUiyPXaM79xZzGezTg0foOBv1e'),
('472037352', 'Leighton', 'Shone', '1978-04-12', 'leighton.shone@gmail.com', '$2y$10$sV8zxvuQpCL1v/vm.eCZWetwfne3L19lPe22sb6bz2BTGUFqlIBDC'),
('180220129', 'Hadleigh', 'Bowden', '1998-05-24', 'hadleigh.bowden@outlook.com', '$2y$10$XETTvA1raGs5glTe1QEcQeVNbi3gC/i1Ms.gSY7rHBajuyii4WQDW'),
('183818640', 'Sharleen', 'Bouch', '1967-11-06', 'sharleen.bouch@gmail.com', '$2y$10$Itf8ReNllqQyZhYrKsubQuQijDvrGhMbK4B2DwP01jcpio9SD9JHC'),
('813941825', 'Flint', 'Daynter', '1956-10-04', 'flint.daynter@orange.fr', '$2y$10$F7mmqHYtS6gPFnn9VaI8K.wDjVjGwtkoBRctRhEn1g2/MCiI0HP4m'),
('710091559', 'Aguste', 'Yesenin', '1983-03-18', 'aguste.yesenin@sfr.fr', '$2y$10$4wfJfb5dY8Uw/1bwcqSh7.cXmaqnnDi7.NvBwZp8YNfJmMyBx8dhq'),
('535375226', 'Shelley', 'Kryszkiecicz', '1987-01-14', 'shelley.kryszkiecicz@outlook.com', '$2y$10$wy2gxw3mqdr2KG93Qm6g2.EOsZiyl4HXGRs5MhkrCtmqeAvKAVz3S'),
('816214251', 'Kippar', 'Bignold', '1969-08-12', 'kippar.bignold@outlook.com', '$2y$10$ba56vG.EjoOwgbfjF/QnfOqpU7GKmmKDAsVUfKV5BV2hCjMCr/fGO'),
('793224946', 'Avril', 'Beachamp', '1970-06-10', 'avril.beachamp@gmail.com', '$2y$10$s8lP4VMLjdH6Av9qwUmHZOFtgir1Jxx0QRwizOETlu0YJNeTgbDmO'),
('312702982', 'Garold', 'Attenbrow', '1988-12-12', 'garold.attenbrow@gmail.com', '$2y$10$D6FF6m6N1EA17290tLvkKO00YDj2sHbVUnMCcf2jzEFs2jF6rMViK');

-- Structure of the office table

DROP TABLE IF EXISTS office;
CREATE TABLE office (
 id int(11) AUTO_INCREMENT NOT NULL,
 admin_id int(11) NOT NULL,
 PRIMARY KEY (id),
 CONSTRAINT fk_office_admin_id
 FOREIGN KEY (admin_id)
 REFERENCES admin(id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Contents of the office table

INSERT INTO office (id, admin_id) VALUES
('115734060', '248948768'),
('137601291', '472037352'),
('235243150', '180220129'),
('384899166', '183818640'),
('862319665', '813941825'),
('859037667', '710091559'),
('367991511', '535375226'),
('626958095', '816214251'),
('113050497', '793224946'),
('764888188', '312702982');

-- Structure of the users table

DROP TABLE IF EXISTS users;
CREATE TABLE users (
 id int(11) AUTO_INCREMENT NOT NULL,
 firstname varchar(20) NOT NULL,
 lastname varchar(20) NOT NULL,
 date_of_birth date NOT NULL,
 email varchar(30) NOT NULL,
 password varchar(10) NOT NULL,
 PRIMARY KEY (id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Contents of the users table

INSERT INTO users (id, firstname, lastname, date_of_birth, email, password) VALUES
('1', 'Gaven', 'Kreuzer', '2001-04-04', 'gkreuzer0@archive.org', '$2y$10$pNBjkndY3vzOeIPfYgw3n.u11juFSy/utuQidsdgjmfs2nhLAZLvu'),
('2', 'Wayland', 'Romanski', '1971-09-28', 'wromanski1@omniture.com', '$2y$10$UZmLEAKKikzeKB8eKOdZaOXuGjtthJCFnY3KfaMdkedItJm.A2iXa'),
('3', 'Hunfredo', 'Calbrathe', '1991-11-11', 'hcalbrathe2@yellowpages.com', '$2y$10$7cmurjL.X8Q4JpRxA04.0O5mGDF3TFy1sEQ8Pf1P61gsLqq0THIX.'),
('4', 'Elle', 'Rizzini', '1981-11-20', 'erizzini3@creativecommons.org', '$2y$10$gvMtPAMgKl.dFOZtiinqYefwGWqKBeHwEJNJv6S.YJzYoqJ3Zh4RW'),
('5', 'Cynde', 'Benaine', '1994-11-27', 'cbenaine4@theglobeandmail.com', '$2y$10$iiSdXeGefXT.xBrH0hT/x.CJ2CRwoQas6FjM4z2zLjM4vnXkuugtS'),
('6', 'Benjamen', 'Sandhill', '1963-08-20', 'bsandhill5@quantcast.com', '$2y$10$P9GUHwbp112C25N13tivduKfnD1CkD81r8WNsd5DzpLngV2lD319u'),
('7', 'Yolande', 'Hoofe', '1984-10-17', 'yhoofe6@google.com.au', '$2y$10$LdHoLIjywOtqLxelgJ1rGegq4bskxDpa/Q1NAWdSrzecXSDw4qm5u'),
('8', 'Veradis', 'Batman', '1986-08-14', 'vbatman7@answers.com', '$2y$10$sXzYjpVGes0l7JaXRW0vkelBY0nVFdN6ZkayvVaGbZHX4vTw6zt72'),
('9', 'Myrtle', 'Ramel', '1967-10-30', 'mramel8@prweb.com', '$2y$10$IZz.hX180PSEXjPwMPzYeOvnCB2nH97PFNPeaIqKDhcph0optRSka'),
('10', 'Sherry', 'Copner', '1999-03-29', 'scopner9@dagondesign.com', '$2y$10$TLi2UCAYrm344HHDlYZigOqeYCAR7B370ZufhdHmDl0g3XHpBEAzO');

-- Structure of the cinema table

DROP TABLE IF EXISTS cinema;
CREATE TABLE cinema (
 id int(11) AUTO_INCREMENT NOT NULL,
 name_cinema varchar(20) NOT NULL,
 address_cinema varchar(20) NOT NULL,
 ZIP_code varchar(10) NOT NULL,
 seat_code varchar(10) NOT NULL,
 PRIMARY KEY (id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Contents of the cinema table

INSERT INTO cinema (id, name_cinema, address_cinema, ZIP_code, seat_code) VALUES
('744896391', 'Rosaceae', '37 Morningstar Road', '3514', '345'),
('610882203', 'Scrophulariaceae', '339 Kropf Parkway', '83262', '326'),
('728140003', 'Lamiaceae', '3 Eastlawn Point', '19034', '117'),
('402804250', 'Micareaceae', '53457 Lerdahl Road', '1720', '876'),
('582918463', 'Poaceae', '33060 Burrows Alley', '18504', '450'),
('198620110', 'Marattiaceae', '7 Charing Cross Hill', '34267', '432'),
('207811734', 'Asteraceae', '4 Clyde Gallagher Way', '1555', '331'),
('433415297', 'Brassicaceae', '5124 Vahlen Hill', '6754','226'),
('247530230', 'Polygonaceae', '75459 Iowa Road', '7654', '774'),
('334803532', 'Asclepiadaceae','826 Boyd Park',  '9080', '558');

-- Structure of the complex table

DROP TABLE IF EXISTS complex;
CREATE TABLE complex (
 id int(11) AUTO_INCREMENT NOT NULL,
 name_complex varchar(20) NOT NULL,
 address_complex varchar(20) NOT NULL,
 ZIP_code varchar(10) NOT NULL,
 PRIMARY KEY (id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Contents of the complex table

INSERT INTO complex (id, name_complex, address_complex, ZIP_code) VALUES
('498908222', 'Onagraceae', '61 Glendale Hill', '164051'),
('175012769', 'Cyperaceae', '20980 Ronald Regan Drive', '8410205'),
('931895619', 'Pinaceae', '672 Farmco Crossing', '39804 CEDEX'),
('162893036', 'Boraginaceae', '644 Lake View Street', '422343'),
('337568407', 'Pyrenulaceae', '5 Dayton Road', '2430482'),
('983300697', 'Schaereriaceae', '234 Buena Vista Circle', '45930'),
('164812129', 'Malvaceae', '22 Sunbrook Circle', '352762'),
('327862723', 'Collemataceae', '6624 Meadow Vale Place', '63032 CEDEX 9'),
('279995602', 'Saxifragaceae', '6 Lake View Parkway', '366101'),
('985022267', 'Arecaceae', '3 Merrick Circle', '57480');

-- Structure of the customer table

DROP TABLE IF EXISTS customer;
CREATE TABLE customer (
 id int(11) AUTO_INCREMENT NOT NULL,
 firstname varchar(20) NOT NULL,
 lastname varchar(20) NOT NULL,
 date_of_birth date NOT NULL,
 email varchar(30) NOT NULL,
 password varchar(10) NOT NULL,
 PRIMARY KEY (id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Contents of the customer table

INSERT INTO customer (id, firstname, lastname, date_of_birth, email, password) VALUES
('688', 'Kristin', 'Ondra', '1972-01-18', 'kondra0@unc.edu', '$2y$10$Tjcz58RwKOZ5/WeedBI52e8qEBy0nhXOJMOZm3V786HGimLwYBhnu'),
('7399', 'Rey', 'MacMurray', '1961-03-24', 'rmacmurray1@berkeley.edu', '$2y$10$EAh41E.hOe.4kbOnPPfB0uwMjMqGMONb29Uy5GaZFPyWrc62ZoNQq'),
('13864', 'Morie', 'Gauthorpp', '1998-01-09', 'mgauthorpp4@opensource.org', '$2y$10$d7Gtnam8avU4lyr8bhCeH.KmWZoGUZAkyQswJhBAQK1TvP0eR/2z.'),
('8902', 'Griffie', 'Pagnin', '2001-11-04', 'gpagnin7@amazonaws.com', '$2y$10$DUknIOYCm5CWkxSQOqKpw.YF6Fqh5Gwn.d.pmuGfspXfwNdX7c0ki'),
('740', 'Davine', 'Buckle', '1983-08-10', 'dbuckle9@globo.com', '$2y$10$fvuQbU0Gn5IOuLe3hyAuk.ewWkb/ROmTM0hbJvmZf505.yj/tcEby'),
('902', 'Malvina', 'Eagling', '1988-06-20', 'meaglingb@slideshare.net', '$2y$10$FQMyJ.EsHIQMV9i2aWvUHOf7TGxm4iImjhDYidvle6IewyksfoCvG'),
('83523', 'Rhett', 'Wyndham', '1997-09-01', 'rwyndhamd@gravatar.com', '$2y$10$R0v7o/5QqarpjLJmMIZoAeocofAJx9LLCoUdP5Cv4kzXiPiuG2uSe'),
('60441', 'Merry', 'Gobbett', '1991-03-10', 'mgobbettk@about.me', '$2y$10$mS61WOtJ5vPlYk0j5hF7mOMGBKA97zXq17FYvFx6o4bFISZ6csFOS'),
('8966', 'Matt', 'Giorgetti', '1995-12-19', 'mgiorgettin@about.com', '$2y$10$geHWOek6CKR8HMdhrpPeYOBR9Yih4u3DoJrsrl0X27YqM1Eo2CxrS'),
('49679', 'Noami', 'Grange', '1981-12-02', 'ngranget@multiply.com', '$2y$10$J/0MxzjSTwgYSxLefoT6POinq5ytKMLZumgRCsNqPiNogHEVu9tR2');

-- Structure of the customer_order table

DROP TABLE IF EXISTS customer_order;
CREATE TABLE customer_order (
 id int(11) AUTO_INCREMENT NOT NULL,
 customer_id int(11) NOT NULL,
 order_time datetime NOT NULL DEFAULT current_timestamp(),
 type_of_payment varchar(15) NOT NULL,
 payment_choice varchar(15) NOT NULL,
 price_selection float NOT NULL,
 end_price float NOT NULL,
 PRIMARY KEY (id),
 CONSTRAINT fk_customer_order_customer_id
 FOREIGN KEY (customer_id)
 REFERENCES customer(id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Contents of the customer_order table

INSERT INTO customer_order (id, customer_id, order_time, type_of_payment, payment_choice, price_selection, end_price) VALUES
('11850', '688', '7:38 AM', 'CARD', 'inline', '9€20', '9€20'),
('13010', '7399', '7:08 AM', 'CARD', 'inline', '9€20', '9€20'),
('17040', '13864', '11:36 AM', 'CARD', 'on the spot', '9€20', '9€20'),
('4400', '8902', '5:28 PM', 'CARD', 'on the spot', '9€20|9€20', '18€40'),
('11450', '740', '4:27 PM', 'CASH', 'on the spot', '9€20', '9€20'),
('2000', '902', '2:49 AM', 'CASH', 'inline', '9€20', '9€20'),
('5300', '83523', '7:02 AM', 'CARD', 'inline', '9€20', '9€20'),
('2240', '60441', '3:56 AM', 'CARD', 'inline', '9€20|9€20|5€90', '24€30'),
('11030', '8966', '10:26 PM', 'CARD', 'on the spot', '7€60', '7€60'),
('2750', '49679', '2:56 AM', 'CARD', 'inline', '9€20', '9€20');

-- Structure of the movie table

DROP TABLE IF EXISTS movie;
CREATE TABLE movie (
 id int(11) AUTO_INCREMENT NOT NULL,
 title varchar(30) NOT NULL,
 genre text NOT NULL,
 day date NOT NULL DEFAULT current_timestamp(),
 hourly datetime NOT NULL DEFAULT current_timestamp(),
 PRIMARY KEY (id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Contents of the movie table

INSERT INTO movie (id, title, genre, day, hourly) VALUES
('54748102', 'This Woman Is Dangerous', 'Crime|Drama', '2021-11-14', '2:03 AM'),
('16590088', 'Soldier s Daughter Never Cries, A', 'Drama', '2021-02-09', '2:59 PM'),
('57896455', 'Sunless (Sans Soleil)', 'Documentary', '2021-04-22', '7:49 AM'),
('52685387', 'Tomorrow We Move (Demain on déménage)', 'Comedy', '2021-06-11', '9:42 PM'),
('536451091', 'Variety Lights', 'Drama', '2021-08-04', '1:21 AM'),
('76151241', 'Where Are My Children?', 'Drama', '2021-05-25','8:30 PM'),
('55315600', 'Northanger Abbey', 'Drama|Romance', '2021-03-16', '3:54 PM'),
('49738571', 'Shiver (Eskalofrío)', 'Horror|Thriller', '2021-09-05', '11:11 PM'),
('37012571', 'Making Love', 'Drama', '2021-07-15', '8:52 PM'),
('62257370', 'Head Over Heels', 'Comedy|Romance', '2021-12-25', '4:49 AM');

-- Structure of the payment table

DROP TABLE IF EXISTS payment;
CREATE TABLE payment (
 id int(11) AUTO_INCREMENT NOT NULL,
 type_of_payment varchar(15) NOT NULL,
 payment_choice varchar(15) NOT NULL,
 PRIMARY KEY (id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Contents of the payment table

INSERT INTO payment (id, type_of_payment, payment_choice) VALUES
('575200539', 'CARD', 'inline'),
('43071110', 'CARD', 'inline'),
('49999631', 'CARD', 'on the spot'),
('55319250', 'CARD', 'on the spot'),
('33261907', 'CASH', 'on the spot'),
('437420155', 'CASH', 'inline'),
('636292982', 'CARD', 'inline'),
('548685248', 'CARD', 'inline'),
('11559004', 'CARD', 'on the spot'),
('50242087', 'CARD', 'inline');

-- Structure of the rate table

DROP TABLE IF EXISTS rate;
CREATE TABLE rate (
 id int(11) AUTO_INCREMENT NOT NULL,
 student_card varchar(25) NOT NULL,
 selection float NOT NULL,
 PRIMARY KEY (id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Contents of the rate table

INSERT INTO rate (id, student_card, selection) VALUES
('510690001', 'NO', '9€20'),
('43063122', 'NO', '9€20'),
('61722202', 'NO', '9€20'),
('42858303', 'NO', '9€20'),
('21130053', 'YES', '7€60'),
('37808310', 'YES', '7€60'),
('52125639', 'NO', '9€20'),
('49349818', 'NO', '5€90'),
('584430020', 'YES', '7€60'),
('55312546', 'NO', '5€90');

-- Structure of the seance table

DROP TABLE IF EXISTS seance;
CREATE TABLE seance (
 id int(11) AUTO_INCREMENT NOT NULL,
 movie_title varchar(20) NOT NULL,
 day date NOT NULL DEFAULT current_timestamp(),
 hourly datetime NOT NULL DEFAULT current_timestamp(),
 PRIMARY KEY (id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Contents of the seance table

INSERT INTO seance (id, movie_title, day, hourly) VALUES
('37000762', 'The Underneath', '2022-03-01', '10:12 PM'),
('33261029', 'Caprice', '2021-04-27', '1:35 PM'),
('339921500', 'Somm', '2021-05-23', '10:28 AM'),
('579551531', 'American Swing', '2021-11-24', '2:38 PM'),
('52685360', 'Nothing', '2021-07-19', '6:19 PM'),
('42893012', '18 Years Later (Diciotto anni dopo)', '2021-11-30', '4:09 AM'),
('549739147', 'Stonewall Uprising', '2021-06-11', '2:57 AM'),
('17139613', 'Mostly Martha (Bella Martha)', '2021-08-16', '2:55 AM'),
('43948-1201', 'Sansho the Bailiff (Sanshô dayû)', '2021-07-21' , '4:54 AM'),
('11673520', 'Roustabout', '2021-07-19', '7:56 PM');

-- Structure of the ticket table

DROP TABLE IF EXISTS ticket;
CREATE TABLE ticket (
 id int(11) AUTO_INCREMENT NOT NULL,
 serial_number bigint(20) NOT NULL,
 day date NOT NULL DEFAULT current_timestamp(),
 hourly datetime NOT NULL DEFAULT current_timestamp(),
 seat_code varchar(10) NOT NULL,
 purchase text NOT NULL,
 PRIMARY KEY (id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Contents of the ticket table

INSERT INTO ticket (id, serial_number, day, hourly, seat_code, purchase) VALUES
('551546664', '67938139', '2021-08-19', '9:30 AM', '63', 'VALID'),
('36800332', '42254261', '2022-01-01', '5:31 PM', '678', 'VALID'),
('551546918', '76277612', '2021-08-22', '7:41 PM', '2761', 'VALID'),
('645780068', '01730759', '2022-02-16', '10:20 PM', '991', 'VALID'),
('687886759', '63629527', '2022-03-02', '1:19 AM', '84', 'VALID'),
('504363841', '55316173', '2022-19-01', '1:55 AM', '1311', 'VALID'),
('88809505', '52915100', '2022-06-03', '3:15 PM', '5851', 'VALID'),
('534995272', '24451008', '2021-02-07', '4:34 PM', '21535', 'VALID'),
('43353857', '42926164', '2021-12-13', '11:43 AM', '3008', 'VALID'),
('46708020', '54363126', '2022-02-01', '7:32 PM', '50', 'VALID');

-- Structure of the ticket_category table

DROP TABLE IF EXISTS ticket_category;
CREATE TABLE ticket_category (
 id int(11) AUTO_INCREMENT NOT NULL,
 complex_id int(11) NOT NULL,
 descr text NOT NULL,
 price float NOT NULL,
 day date NOT NULL DEFAULT current_timestamp(),
 order_time datetime NOT NULL DEFAULT current_timestamp(),
 PRIMARY KEY (id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Contents of the ticket_category table

INSERT INTO ticket_category (id, complex_id, descr, price, day, order_time) VALUES
('28107005', '4451696267', 'digital', '9€20', '2021-28-03', '11:39 AM'),
('49349737', '1087201535', 'digital', '9€20', '2021-11-18', '6:37 AM'),
('27495013', '2333817364', 'digital', '9€20', '2021-06-20', '8:22 AM'),
('44781230', '7401211122', 'physical', '9€20', '2021-05-13', '5:22 PM'),
('16590938', '2874051322', 'physical', '9€20', '2021-30-11', '11:32 PM'),
('63032101', '4065198437', 'physical', '9€20', '2021-04-13', '12:16 AM'),
('24882325', '4467011129', 'digital', '9€20', '2021-04-26', '2:12 AM'),
('551543226', '8445236407', 'digital', '9€20', '2021-03-14', '6:19 PM'),
('14783455', '5707378510', 'digital', '9€20', '2021-10-26', '1:17 AM'),
('118220566', '3044421098', 'digital', '9€20', '2021-10-26', '10:19 PM');

-- Structure of the ticket_order table

DROP TABLE IF EXISTS ticket_order;
CREATE TABLE ticket_order (
 id int(11) AUTO_INCREMENT NOT NULL,
 ticket_id int(11) NOT NULL,
 PRIMARY KEY (id),
 CONSTRAINT fk_ticket_order_ticket_id
 FOREIGN KEY (ticket_id)
 REFERENCES ticket(id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Contents of the ticket_order table

INSERT INTO ticket_order (id, ticket_id) VALUES
('28107005', '551546664'),
('49349737', '36800332'),
('27495013', '551546918'),
('44781230', '645780068'),
('16590938', '687886759'),
('63032101', '504363841'),
('24882325', '88809505'),
('551543226', '534995272'),
('14783455', '43353857'),
('118220566', '46708020');

-- Role: postgres
-- DROP ROLE IF EXISTS postgres;

CREATE ROLE IF NOT EXISTS postgres;
 LOGIN
 SUPERUSER
 INHERIT
 CREATEDB
 CREATEROLE
 REPLICATION
ENCRYPTED PASSWORD 'SCRAM-SHA-256$4096:jXZz0vHokHU2uq6mKmdNsw==$y8H2feTiGsZcdlMUXavYchlNMjsn++Q0R0D/zbO1haI=:iRXdR9a6tIaKOVugz1vm6TXkVEgt/mbo185bSpgboIc=';

-- Grant and revocation of rights

GRANT SELECT, INSERT, UPDATE, DELETE
ON TABLE seance TO users;

GRANT ALL PRIVILEGES ON TABLES TO admin;

-- Publication: reservation

-- DROP PUBLICATION IF EXISTS reservation

CREATE PUBLICATION IF NOT EXISTS reservation
    FOR ALL TABLES
    WITH (publish = 'insert, update, delete, truncate', publish_via_partition_root = true);
