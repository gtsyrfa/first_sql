CREATE TABLE Products (id INTEGER, title VARCHAR(100));
INSERT INTO Products(id, title) VALUES(1, "first");
INSERT INTO Products(id, title) VALUES(2, "second");
INSERT INTO Products(id, title) VALUES(3, "third");
INSERT INTO Products(id, title) VALUES(4, "fourth");



CREATE TABLE Categories (id INTEGER, title VARCHAR(100));
INSERT INTO Categories(id, title) VALUES(1, "il buono");
INSERT INTO Categories(id, title) VALUES(2, "il brutto");
INSERT INTO Categories(id, title) VALUES(3, "il cattivo");
INSERT INTO Categories(id, title) VALUES(4, "il nessuno");

CREATE TABLE Products_Categories (product_id INTEGER, categorie_id INTEGER);
INSERT INTO Products_Categories(product_id, categorie_id) VALUES(1, 1);
INSERT INTO Products_Categories(product_id, categorie_id) VALUES(1, 2);
INSERT INTO Products_Categories(product_id, categorie_id) VALUES(1, 3);
INSERT INTO Products_Categories(product_id, categorie_id) VALUES(2, 2);
INSERT INTO Products_Categories(product_id, categorie_id) VALUES(4, 3);





SELECT
	p.title AS p_title,
	c.title AS c_title
FROM
    Products_Categories AS pc INNER JOIN
	Categories          AS c ON c.id = pc.categorie_id RIGHT JOIN
	Products            AS p ON p.id = pc.product_id;