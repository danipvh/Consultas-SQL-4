1. insertar 9 series adicionales
INSERT INTO serie_netflix (nombre, temporadas, genero, anio_estreno) VALUES
('Peaky Blinders', 5, 'Drama', 2013),
('Stranger Things', 5, 'Ciencia Ficción', 2016),
('The Walking Dead', 11, 'Suspenso', 2010),
('El Eternauta', 1, 'Ciencia Ficción', 2025),
('La Casa de Papel', 5, 'Acción', 2017),
('Breaking Bad', 5, 'Crimen', 2008),
('Adolescencia', 1, 'Drama', 2025),
('Dark', 3, 'Thriller', 2017),
('Merlina', 2, 'Comedia Oscura', 2022);


2. Listar todas las series con más de 3 temporadas ordenadas por año de estreno descendente
SELECT * FROM serie_netflix WHERE temporadas > 3 ORDER BY anio_estreno DESC;


3. Listar el año de la serie más antigua
SELECT MIN(anio_estreno) AS serie_mas_antigua FROM serie_netflix;


4. Listar el año de la serie más nueva
SELECT MAX(anio_estreno) AS serie_mas_nueva FROM serie_netflix;


5. Mostrar el promedio de año de estreno de las series
SELECT AVG(anio_estreno) AS prom_anio_estreno FROM serie_netflix;


6. Listar el promedio de temporadas de todas las series
SELECT AVG(temporadas) AS prom_temporadas FROM serie_netflix;


7. Listar las series que tengan 1, 2, 4, 5 o 7 temporadas
SELECT * FROM serie_netflix WHERE temporadas IN (1, 2, 4, 5, 7);


8. Listar las series que NO tengan 1, 2, 4, 5 o 7 temporadas
SELECT * FROM serie_netflix WHERE temporadas NOT IN (1, 2, 4, 5, 7);


9. Borrar todas las series con año de estreno superior a 2010
DELETE FROM serie_netflix WHERE anio_estreno > 2010;


10.Reinsertar los datos recién borrados
INSERT INTO serie_netflix (nombre, temporadas, genero, anio_estreno) VALUES
('Black Mirror', 5, 'Ciencia Ficción', 2011),
('Peaky Blinders', 5, 'Drama', 2013),
('Stranger Things', 5, 'Ciencia Ficción', 2016),
('El Eternauta', 1, 'Ciencia Ficción', 2025),
('La Casa de Papel', 5, 'Acción', 2017),
('Adolescencia', 1, 'Drama', 2025),
('Dark', 3, 'Thriller', 2017),
('Merlina', 2, 'Comedia Oscura', 2022);


11.Agregar la serie Doctor House
INSERT INTO serie_netflix (nombre, temporadas, genero, anio_estreno) VALUES
('Dr. House', 8, 'Drama', 2004);


12.Listar todas las series estrenadas entre 2005 y 2020
SELECT * FROM serie_netflix WHERE anio_estreno BETWEEN 2005 AND 2020;


13.Listar todas aquellas series con nombre comenzado en B o
terminado en e.
SELECT * FROM serie_netflix WHERE nombre LIKE 'B%' OR nombre LIKE '%e';


14.Listar aquellas series cuyo año de entreno más la cantidad de
temporadas excede 2010
SELECT * FROM serie_netflix WHERE (anio_estreno + temporadas) > 2010;