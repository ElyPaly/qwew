#
# TABLE STRUCTURE FOR: customers
#

DROP TABLE IF EXISTS `customers`;

CREATE TABLE `customers` (
  `customerid` int(11) NOT NULL,
  `firstname` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lastname` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phonenumber` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`customerid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `customers` (`customerid`, `firstname`, `lastname`, `email`, `phonenumber`) VALUES (0, 'Sabina', 'McDermott', 'etreutel@example.com', '+74(2)4841916503');


#
# TABLE STRUCTURE FOR: employees
#

DROP TABLE IF EXISTS `employees`;

CREATE TABLE `employees` (
  `employeeid` int(11) NOT NULL,
  `firstname` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lastname` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phonenumber` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `hiredate` date DEFAULT NULL,
  `jobtitle` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `salary` decimal(10,2) DEFAULT NULL,
  PRIMARY KEY (`employeeid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `employees` (`employeeid`, `firstname`, `lastname`, `email`, `phonenumber`, `hiredate`, `jobtitle`, `salary`) VALUES (0, 'Osbaldo', 'Sanford', 'rickie54@example.org', '245-222-1086x51130', '1971-03-20', 'Illo iure qui amet repudiandae.', NULL);


#
# TABLE STRUCTURE FOR: orderitems
#

DROP TABLE IF EXISTS `orderitems`;

CREATE TABLE `orderitems` (
  `orderid` int(11) NOT NULL,
  `productid` int(11) NOT NULL,
  `quantity` int(11) DEFAULT NULL,
  PRIMARY KEY (`orderid`,`productid`),
  KEY `productid` (`productid`),
  CONSTRAINT `orderitems_ibfk_1` FOREIGN KEY (`orderid`) REFERENCES `orders` (`orderid`),
  CONSTRAINT `orderitems_ibfk_2` FOREIGN KEY (`productid`) REFERENCES `products` (`productid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `orderitems` (`orderid`, `productid`, `quantity`) VALUES (0, 0, 0);
INSERT INTO `orderitems` (`orderid`, `productid`, `quantity`) VALUES (1, 0, 470406245);
INSERT INTO `orderitems` (`orderid`, `productid`, `quantity`) VALUES (2, 0, 441010417);
INSERT INTO `orderitems` (`orderid`, `productid`, `quantity`) VALUES (4, 0, 19);
INSERT INTO `orderitems` (`orderid`, `productid`, `quantity`) VALUES (5, 0, 769546);
INSERT INTO `orderitems` (`orderid`, `productid`, `quantity`) VALUES (6, 0, 188837841);
INSERT INTO `orderitems` (`orderid`, `productid`, `quantity`) VALUES (9, 0, 151);
INSERT INTO `orderitems` (`orderid`, `productid`, `quantity`) VALUES (34, 0, 130);
INSERT INTO `orderitems` (`orderid`, `productid`, `quantity`) VALUES (39, 0, 40006432);
INSERT INTO `orderitems` (`orderid`, `productid`, `quantity`) VALUES (45, 0, 38190);
INSERT INTO `orderitems` (`orderid`, `productid`, `quantity`) VALUES (72, 0, 346309);


#
# TABLE STRUCTURE FOR: orders
#

DROP TABLE IF EXISTS `orders`;

CREATE TABLE `orders` (
  `orderid` int(11) NOT NULL,
  `customerid` int(11) DEFAULT NULL,
  `orderdate` date DEFAULT NULL,
  `totalprice` decimal(10,2) DEFAULT NULL,
  PRIMARY KEY (`orderid`),
  KEY `customerid` (`customerid`),
  CONSTRAINT `orders_ibfk_1` FOREIGN KEY (`customerid`) REFERENCES `customers` (`customerid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `orders` (`orderid`, `customerid`, `orderdate`, `totalprice`) VALUES (0, NULL, '2015-10-26', '5.89');
INSERT INTO `orders` (`orderid`, `customerid`, `orderdate`, `totalprice`) VALUES (1, NULL, '1991-03-25', '5763946.33');
INSERT INTO `orders` (`orderid`, `customerid`, `orderdate`, `totalprice`) VALUES (2, NULL, '2018-09-03', '0.00');
INSERT INTO `orders` (`orderid`, `customerid`, `orderdate`, `totalprice`) VALUES (4, NULL, '1981-04-14', '12643.46');
INSERT INTO `orders` (`orderid`, `customerid`, `orderdate`, `totalprice`) VALUES (5, NULL, '2021-07-06', '128109.26');
INSERT INTO `orders` (`orderid`, `customerid`, `orderdate`, `totalprice`) VALUES (6, NULL, '2017-07-20', '21301001.70');
INSERT INTO `orders` (`orderid`, `customerid`, `orderdate`, `totalprice`) VALUES (8, NULL, '2012-02-16', '197826.92');
INSERT INTO `orders` (`orderid`, `customerid`, `orderdate`, `totalprice`) VALUES (9, NULL, '1992-04-29', '8511.50');
INSERT INTO `orders` (`orderid`, `customerid`, `orderdate`, `totalprice`) VALUES (13, NULL, '2008-07-18', '33246.00');
INSERT INTO `orders` (`orderid`, `customerid`, `orderdate`, `totalprice`) VALUES (20, NULL, '1984-06-17', '37331167.23');
INSERT INTO `orders` (`orderid`, `customerid`, `orderdate`, `totalprice`) VALUES (28, NULL, '2007-03-31', '5523659.90');
INSERT INTO `orders` (`orderid`, `customerid`, `orderdate`, `totalprice`) VALUES (30, NULL, '1984-06-13', '380.63');
INSERT INTO `orders` (`orderid`, `customerid`, `orderdate`, `totalprice`) VALUES (34, NULL, '2000-04-17', '666.75');
INSERT INTO `orders` (`orderid`, `customerid`, `orderdate`, `totalprice`) VALUES (39, NULL, '1995-12-15', '582456.72');
INSERT INTO `orders` (`orderid`, `customerid`, `orderdate`, `totalprice`) VALUES (45, NULL, '1983-07-12', '15.60');
INSERT INTO `orders` (`orderid`, `customerid`, `orderdate`, `totalprice`) VALUES (55, NULL, '2018-02-10', '7.00');
INSERT INTO `orders` (`orderid`, `customerid`, `orderdate`, `totalprice`) VALUES (70, NULL, '1979-01-05', '18159.64');
INSERT INTO `orders` (`orderid`, `customerid`, `orderdate`, `totalprice`) VALUES (72, NULL, '1986-03-02', '375.30');
INSERT INTO `orders` (`orderid`, `customerid`, `orderdate`, `totalprice`) VALUES (98, NULL, '1999-04-17', '16693105.33');
INSERT INTO `orders` (`orderid`, `customerid`, `orderdate`, `totalprice`) VALUES (109, NULL, '1990-04-25', '263137.43');
INSERT INTO `orders` (`orderid`, `customerid`, `orderdate`, `totalprice`) VALUES (120, NULL, '1984-06-07', '0.00');
INSERT INTO `orders` (`orderid`, `customerid`, `orderdate`, `totalprice`) VALUES (177, NULL, '1976-12-12', '34.63');
INSERT INTO `orders` (`orderid`, `customerid`, `orderdate`, `totalprice`) VALUES (201, NULL, '2013-07-25', '99787.20');
INSERT INTO `orders` (`orderid`, `customerid`, `orderdate`, `totalprice`) VALUES (238, NULL, '1976-03-06', '0.36');
INSERT INTO `orders` (`orderid`, `customerid`, `orderdate`, `totalprice`) VALUES (361, NULL, '2020-12-24', '26.02');
INSERT INTO `orders` (`orderid`, `customerid`, `orderdate`, `totalprice`) VALUES (366, NULL, '2011-10-11', '300070.65');
INSERT INTO `orders` (`orderid`, `customerid`, `orderdate`, `totalprice`) VALUES (371, NULL, '2020-12-03', '22339999.71');
INSERT INTO `orders` (`orderid`, `customerid`, `orderdate`, `totalprice`) VALUES (503, NULL, '1972-03-05', '10485246.62');
INSERT INTO `orders` (`orderid`, `customerid`, `orderdate`, `totalprice`) VALUES (508, NULL, '1997-05-21', '210259.28');
INSERT INTO `orders` (`orderid`, `customerid`, `orderdate`, `totalprice`) VALUES (523, NULL, '1977-04-21', '7047.64');
INSERT INTO `orders` (`orderid`, `customerid`, `orderdate`, `totalprice`) VALUES (711, NULL, '1980-10-02', '8.91');
INSERT INTO `orders` (`orderid`, `customerid`, `orderdate`, `totalprice`) VALUES (968, NULL, '1975-06-13', '183834.00');
INSERT INTO `orders` (`orderid`, `customerid`, `orderdate`, `totalprice`) VALUES (1554, NULL, '1994-12-18', '696.74');
INSERT INTO `orders` (`orderid`, `customerid`, `orderdate`, `totalprice`) VALUES (3618, NULL, '1981-02-08', '70382.80');
INSERT INTO `orders` (`orderid`, `customerid`, `orderdate`, `totalprice`) VALUES (3956, NULL, '2007-03-08', '0.00');
INSERT INTO `orders` (`orderid`, `customerid`, `orderdate`, `totalprice`) VALUES (4093, NULL, '2007-07-20', '99999999.99');
INSERT INTO `orders` (`orderid`, `customerid`, `orderdate`, `totalprice`) VALUES (4318, NULL, '2011-05-02', '38.29');
INSERT INTO `orders` (`orderid`, `customerid`, `orderdate`, `totalprice`) VALUES (4772, NULL, '1982-10-17', '28.72');
INSERT INTO `orders` (`orderid`, `customerid`, `orderdate`, `totalprice`) VALUES (6170, NULL, '1985-11-14', '20029909.86');
INSERT INTO `orders` (`orderid`, `customerid`, `orderdate`, `totalprice`) VALUES (6552, NULL, '1972-11-14', '0.00');
INSERT INTO `orders` (`orderid`, `customerid`, `orderdate`, `totalprice`) VALUES (7034, NULL, '2016-08-31', '103143.59');
INSERT INTO `orders` (`orderid`, `customerid`, `orderdate`, `totalprice`) VALUES (8258, NULL, '1980-08-14', '23240097.95');
INSERT INTO `orders` (`orderid`, `customerid`, `orderdate`, `totalprice`) VALUES (8716, NULL, '1977-06-17', '12814880.21');
INSERT INTO `orders` (`orderid`, `customerid`, `orderdate`, `totalprice`) VALUES (9061, NULL, '2000-08-30', '0.00');
INSERT INTO `orders` (`orderid`, `customerid`, `orderdate`, `totalprice`) VALUES (9560, NULL, '1988-01-10', '9429.00');
INSERT INTO `orders` (`orderid`, `customerid`, `orderdate`, `totalprice`) VALUES (13037, NULL, '1982-03-28', '4164.48');
INSERT INTO `orders` (`orderid`, `customerid`, `orderdate`, `totalprice`) VALUES (33130, NULL, '2020-08-16', '20161376.69');
INSERT INTO `orders` (`orderid`, `customerid`, `orderdate`, `totalprice`) VALUES (33956, NULL, '1983-03-21', '40044.88');
INSERT INTO `orders` (`orderid`, `customerid`, `orderdate`, `totalprice`) VALUES (58771, NULL, '1983-08-28', '421344.16');
INSERT INTO `orders` (`orderid`, `customerid`, `orderdate`, `totalprice`) VALUES (60497, NULL, '1970-08-08', '280388.05');
INSERT INTO `orders` (`orderid`, `customerid`, `orderdate`, `totalprice`) VALUES (64717, NULL, '2005-01-18', '15.87');
INSERT INTO `orders` (`orderid`, `customerid`, `orderdate`, `totalprice`) VALUES (83309, NULL, '1985-08-14', '98456000.78');
INSERT INTO `orders` (`orderid`, `customerid`, `orderdate`, `totalprice`) VALUES (84164, NULL, '1974-08-09', '402.19');
INSERT INTO `orders` (`orderid`, `customerid`, `orderdate`, `totalprice`) VALUES (127894, NULL, '1992-03-28', '3269.57');
INSERT INTO `orders` (`orderid`, `customerid`, `orderdate`, `totalprice`) VALUES (171047, NULL, '2008-07-16', '349039.93');
INSERT INTO `orders` (`orderid`, `customerid`, `orderdate`, `totalprice`) VALUES (220159, NULL, '1996-06-09', '1659.84');
INSERT INTO `orders` (`orderid`, `customerid`, `orderdate`, `totalprice`) VALUES (278940, NULL, '2008-06-12', '51998.44');
INSERT INTO `orders` (`orderid`, `customerid`, `orderdate`, `totalprice`) VALUES (505899, NULL, '2017-06-20', '340.59');
INSERT INTO `orders` (`orderid`, `customerid`, `orderdate`, `totalprice`) VALUES (546102, NULL, '2017-07-01', '1793207.65');
INSERT INTO `orders` (`orderid`, `customerid`, `orderdate`, `totalprice`) VALUES (676527, NULL, '1998-11-25', '10131387.46');
INSERT INTO `orders` (`orderid`, `customerid`, `orderdate`, `totalprice`) VALUES (735886, NULL, '1974-04-06', '1572.60');
INSERT INTO `orders` (`orderid`, `customerid`, `orderdate`, `totalprice`) VALUES (763833, NULL, '1994-09-02', '715047.23');
INSERT INTO `orders` (`orderid`, `customerid`, `orderdate`, `totalprice`) VALUES (825266, NULL, '2011-02-17', '524845.70');
INSERT INTO `orders` (`orderid`, `customerid`, `orderdate`, `totalprice`) VALUES (943257, NULL, '2022-02-09', '755.40');
INSERT INTO `orders` (`orderid`, `customerid`, `orderdate`, `totalprice`) VALUES (946507, NULL, '2005-07-17', '3024.40');
INSERT INTO `orders` (`orderid`, `customerid`, `orderdate`, `totalprice`) VALUES (958947, NULL, '1975-11-30', '0.00');
INSERT INTO `orders` (`orderid`, `customerid`, `orderdate`, `totalprice`) VALUES (1159677, NULL, '1988-08-23', '3984.42');
INSERT INTO `orders` (`orderid`, `customerid`, `orderdate`, `totalprice`) VALUES (2126756, NULL, '1978-09-30', '38562.58');
INSERT INTO `orders` (`orderid`, `customerid`, `orderdate`, `totalprice`) VALUES (3140934, NULL, '1976-12-12', '45369.31');
INSERT INTO `orders` (`orderid`, `customerid`, `orderdate`, `totalprice`) VALUES (3221054, NULL, '1989-10-09', '164.30');
INSERT INTO `orders` (`orderid`, `customerid`, `orderdate`, `totalprice`) VALUES (4659018, NULL, '2022-10-22', '1067.31');
INSERT INTO `orders` (`orderid`, `customerid`, `orderdate`, `totalprice`) VALUES (4806759, NULL, '2006-01-30', '99999999.99');
INSERT INTO `orders` (`orderid`, `customerid`, `orderdate`, `totalprice`) VALUES (5281803, NULL, '2003-03-24', '39208308.14');
INSERT INTO `orders` (`orderid`, `customerid`, `orderdate`, `totalprice`) VALUES (7993416, NULL, '2019-05-26', '8.50');
INSERT INTO `orders` (`orderid`, `customerid`, `orderdate`, `totalprice`) VALUES (8492438, NULL, '1978-05-08', '18252.64');
INSERT INTO `orders` (`orderid`, `customerid`, `orderdate`, `totalprice`) VALUES (8658402, NULL, '1976-10-11', '0.00');
INSERT INTO `orders` (`orderid`, `customerid`, `orderdate`, `totalprice`) VALUES (8941401, NULL, '1992-08-28', '449.00');
INSERT INTO `orders` (`orderid`, `customerid`, `orderdate`, `totalprice`) VALUES (9152855, NULL, '1990-07-27', '39345.55');
INSERT INTO `orders` (`orderid`, `customerid`, `orderdate`, `totalprice`) VALUES (9261133, NULL, '1995-05-02', '30.26');
INSERT INTO `orders` (`orderid`, `customerid`, `orderdate`, `totalprice`) VALUES (9585983, NULL, '2008-10-31', '2180902.06');
INSERT INTO `orders` (`orderid`, `customerid`, `orderdate`, `totalprice`) VALUES (9647790, NULL, '1970-08-09', '125308.14');
INSERT INTO `orders` (`orderid`, `customerid`, `orderdate`, `totalprice`) VALUES (10090022, NULL, '1973-03-06', '26.47');
INSERT INTO `orders` (`orderid`, `customerid`, `orderdate`, `totalprice`) VALUES (17224421, NULL, '2009-12-20', '0.08');
INSERT INTO `orders` (`orderid`, `customerid`, `orderdate`, `totalprice`) VALUES (17382991, NULL, '1980-12-25', '0.00');
INSERT INTO `orders` (`orderid`, `customerid`, `orderdate`, `totalprice`) VALUES (22706540, NULL, '1980-06-09', '45.82');
INSERT INTO `orders` (`orderid`, `customerid`, `orderdate`, `totalprice`) VALUES (29700314, NULL, '1986-12-16', '91.08');
INSERT INTO `orders` (`orderid`, `customerid`, `orderdate`, `totalprice`) VALUES (38967187, NULL, '2002-01-29', '2.90');
INSERT INTO `orders` (`orderid`, `customerid`, `orderdate`, `totalprice`) VALUES (44223318, NULL, '1992-01-19', '13341551.15');
INSERT INTO `orders` (`orderid`, `customerid`, `orderdate`, `totalprice`) VALUES (54473031, NULL, '1974-08-29', '40495.50');
INSERT INTO `orders` (`orderid`, `customerid`, `orderdate`, `totalprice`) VALUES (62039080, NULL, '2001-07-16', '667.07');
INSERT INTO `orders` (`orderid`, `customerid`, `orderdate`, `totalprice`) VALUES (62205184, NULL, '2021-01-08', '30664109.59');
INSERT INTO `orders` (`orderid`, `customerid`, `orderdate`, `totalprice`) VALUES (81380477, NULL, '1978-04-16', '33.39');
INSERT INTO `orders` (`orderid`, `customerid`, `orderdate`, `totalprice`) VALUES (140386340, NULL, '1991-01-03', '4.00');
INSERT INTO `orders` (`orderid`, `customerid`, `orderdate`, `totalprice`) VALUES (149369588, NULL, '1997-10-09', '617.07');
INSERT INTO `orders` (`orderid`, `customerid`, `orderdate`, `totalprice`) VALUES (164296393, NULL, '1985-12-17', '75473.45');
INSERT INTO `orders` (`orderid`, `customerid`, `orderdate`, `totalprice`) VALUES (194108041, NULL, '2011-04-25', '0.00');
INSERT INTO `orders` (`orderid`, `customerid`, `orderdate`, `totalprice`) VALUES (205853941, NULL, '1984-12-26', '139428.80');
INSERT INTO `orders` (`orderid`, `customerid`, `orderdate`, `totalprice`) VALUES (652060559, NULL, '1987-01-13', '4.14');
INSERT INTO `orders` (`orderid`, `customerid`, `orderdate`, `totalprice`) VALUES (705801274, NULL, '2010-11-29', '49.04');
INSERT INTO `orders` (`orderid`, `customerid`, `orderdate`, `totalprice`) VALUES (748388438, NULL, '2000-03-15', '412.74');


#
# TABLE STRUCTURE FOR: products
#

DROP TABLE IF EXISTS `products`;

CREATE TABLE `products` (
  `productid` int(11) NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `price` decimal(10,2) DEFAULT NULL,
  `category` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`productid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `products` (`productid`, `name`, `description`, `price`, `category`) VALUES (0, 'quam', 'Expedita praesentium amet autem laboriosam fuga. In voluptatum sit sunt ipsam iusto dolores. Rem officiis doloremque earum dolores et magnam debitis. Optio beatae consequatur ut aperiam omnis delectus.', '663.24', NULL);


