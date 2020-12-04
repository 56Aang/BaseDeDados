USE IngressosDeAvioes;

-- aeroporto
INSERT INTO aeroporto(id,Pais, Localidade, Codigo_Postal, Nome)
VALUES 
	(1,'Portugal', 'Maia',  '4470-558', 'Aeroporto Francisco Sá Carneiro'),
    (2,'Portugal', 'Lisboa',  '1700-111', 'Aeroporto Humberto Delgado'),
    (3,'Portugal', 'Ponta Delgada',  '9500-749', 'Aeroporto de Ponta Delgada João Paulo II'),
    (4,'Portugal', 'Santa-Cruz',  '9100-105', 'Aeroporto Internacional da Madeira Cristiano Ronaldo'),
    (5,'Espanha', 'Madrid',  '28042', 'Aeroporto de Madrid-Barajas'),
    (6,'Espanha', 'Barcelona',  '08820', 'Aeroporto Josep Tarradellas Barcelona-El Prat'),
	(7,'Inglaterra', 'Londres',  'TW6 1QS', 'Aeroporto de Londres Heathrow'),
    (8,'França', 'Roissy-en-France',  '95700', 'Aeroporto de Roissy-Charles-de-Gaulle'),
    (9,'Alemanha', 'Frankfurt',  '60547', 'Aeroporto de Frankfurt am Main');
 
 -- aviao faltam as classes
INSERT INTO aviao(id,Nome, Numero_maximo_de_passageiros_classe_economica,Numero_maximo_de_passageiros_classe_executiva,Numero_maximo_de_passageiros,Tara,Companhia)
Values
	(1,'Airbus A330-900neo',220,78,298,23,'TAP'),
	(2,'Airbus A330-200',190,73,263,23,'TAP'),
	(3,'Airbus A320-200',100,74,174,23,'Easyjet'),
	(4,'Airbus A330-200',200,63,263,23,'Ryanair');


-- cliente
INSERT INTO cliente(NIF,Nome,Idade,Telemovel,Email,Morada,Nacionalidade,Password)
Values
	(111111111,'João',33,'910069859','joao@aquele.com','Naquele Sitio','Portuguesa','12345'),
	(111111112,'Zé',32,'930005240','joao@aquele.com','No beco','Holandesa','12345'),
	(111111113,'Quim',63,'960970000','joao@aquele.com','Lyon','Francesa','12345'),
	(111111114,'Maria',45,'914500000','joao@aquele.com','Lisboa','Portuguesa','12345'),
	(111111115,'Joana',26,'932340000','joao@aquele.com','Porto','Portuguesa','12345'),
	(111111116,'Ana',34,'930000968','joao@aquele.com','Lagoa','Portuguesa','12345'),
	(111111117,'Carl',60,'930888000','joao@aquele.com','Dortmund','Alemã','12345'),
	(111111118,'Simão',55,'930567000','joao@aquele.com','Londres','Inglesa','12345');
	


-- lugares
INSERT INTO Lugar(Classe,Numero,Aviao_id)
Values
	('Economica','A01',1),
	('Economica','A02',1),
	('Economica','A03',1),
	('Economica','A04',1),
	('Economica','A05',1),
	('Economica','A06',1),
	('Economica','A07',1),
	('Economica','A08',1),
	('Economica','A09',1),
	('Economica','A10',1),
	('Economica','A01',2),
	('Economica','A02',2),
	('Economica','A03',2),
	('Economica','A04',2),
	('Economica','A05',2),
	('Economica','A06',2),
	('Economica','A07',2),
	('Economica','A08',2),
	('Economica','A09',2),
	('Economica','A10',2),
	('Economica','A01',3),
	('Economica','A02',3),
	('Economica','A03',3),
	('Economica','A04',3),
	('Economica','A05',3),
	('Economica','A06',3),
	('Economica','A07',3),
	('Economica','A08',3),
	('Economica','A09',3),
	('Economica','A10',3),
	('Economica','B01',4),
	('Economica','B02',4),
	('Economica','B03',4),
	('Economica','B04',4),
	('Economica','B05',4),
	('Economica','B06',4),
	('Economica','B07',4),
	('Economica','B08',4),
	('Economica','B09',4),
	('Economica','B10',4),
	('Executiva','E01',1),
	('Executiva','E10',1),
	('Executiva','F01',1),
	('Executiva','F10',1),
	('Executiva','E01',2),
	('Executiva','E10',2),
	('Executiva','F01',2),
	('Executiva','F10',2),
	('Executiva','E01',3),
	('Executiva','E10',3),
	('Executiva','F01',3),
	('Executiva','F10',3),
	('Executiva','E01',4),
	('Executiva','E10',4),
	('Executiva','F01',4),
	('Executiva','F10',4);


-- voo
INSERT INTO voo(id,Numero_de_Voo,Hora_de_partida,Hora_de_chegada,Duraçao,Data_de_partida,Numero_de_bilhetes_Vendidos,Origem_id,Aviao_id,Destino_id)
Values
	(1,'AAA0','10:00','12:00','02:00','2016-12-24',5,2,2,5),
	(2,'BBB2','13:30','16:00','02:30','2021-01-01',80,7,1,1),
	(3,'CCC1','07:30','11:00','03:30','2021-01-11',60,9,3,3),
	(4,'ABC1','20:30','22:00','01:30','2021-02-01',30,6,4,8);

-- bilhete
INSERT INTO bilhete(id,Data,Gate,Numero,Classe,Preço,Cliente_NIF,Voo_id)
Values
	(1,'2015-12-04','A12','A01','Economica',30.00,111111111,1),
	(2,'2015-11-04','A12','A07','Economica',30.00,111111118,1),
	(3,'2015-11-23','A12','E01','Executiva',120.50,111111113,1),

	(4,'2020-10-24','B22','E10','Executiva',100.00,111111117,2),
	(5,'2020-10-13','B22','A01','Economica',25.00,111111116,2),
	(6,'2020-11-07','B22','A05','Economica',25.00,111111115,2),

	(7,'2020-10-04','C02','A08','Economica',34.00,111111112,3),
	(8,'2020-10-30','C02','F01','Executiva',120.00,111111114,3),
	(9,'2020-11-22','C02','E10','Executiva',120.00,111111111,3),

	(10,'2020-12-03','D10','B04','Economica',40.00,111111118,4),
	(11,'2020-12-02','D10','B05','Economica',40.00,111111113,4),
	(12,'2020-11-24','D10','F10','Executiva',140.00,111111116,4);


-- criar cliente
CREATE USER 'cliente'@'localhost'
	identified BY 'clientepassword';    
GRANT SELECT ON IngressosDeAvioes.Bilhete TO 'cliente'@'localhost';
GRANT SELECT ON IngressosDeAvioes.Voo TO 'cliente'@'localhost';
REVOKE DROP, CREATE, DELETE, UPDATE, INSERT 
ON *.*
FROM 'cliente'@'localhost';


-- gestor
CREATE USER 'gestor'@'localhost'
	identified BY 'gestorpassword';
GRANT ALL ON *.* TO 'admin'@'localhost'
REVOKE DROP,DELETE,CREATE ON *.* FROM 'gestor'@'localhost';


-- admin
CREATE USER 'admin'@'localhost'
	identified by 'adminpassword';

GRANT ALL ON *.* TO 'admin'@'localhost';


DELIMITER $$
CREATE TRIGGER atualizaQntBilhVend
AFTER INSERT ON Bilhete
FOR EACH ROW
BEGIN
	UPDATE Voo
	SET Numero_de_bilhetes_Vendidos = Numero_de_bilhetes_Vendidos + 1
	WHERE voo.id = NEW.Voo_id;
END $$

-- REQUISITOS CLIENTE 

DELIMITER $$
CREATE PROCEDURE montanteGasto
	(IN user DOUBLE, dia1 DATE, dia2 DATE)
BEGIN
SELECT SUM(b.Preço) FROM Bilhete b
WHERE b.Cliente_NIF = user AND 
	  dia1 <= b.Data AND
	  dia2 >= b.Data;
END$$

CALL montanteGasto(111111111,'2013-12-24','2025-01-01');


DELIMITER $$
CREATE PROCEDURE informacaoBilhete
	(IN user DOUBLE)
BEGIN
SELECT (b.Data, b.Gate, b.Numero, b.Classe, b.Preço) FROM Bilhete b
WHERE b.Cliente_NIF = user 
AND CURRENT_TIMESTAMP() < DATE_ADD(b.Data, INTERVAL b.Voo_id.Hora_de_partida HOUR);    

        
END$$

-- Consultar a lista de voos existentes

DELIMITER //

SELECT * from Voo;

END //

-- Consultar a lista de aeroportos existentes

DELIMITER //

SELECT * from Aeroporto;

END //

-- Consultar a lista de lugares livres para um voo

DELIMITER //

CREATE PROCEDURE lugaresLivres(IN id_voo INT)
BEGIN
	SELECT Lugar.Numero,Lugar.Classe FROM Lugar
	LEFT JOIN Aviao ON Lugar.Aviao_id = Aviao.id
	LEFT JOIN Voo ON Voo.Aviao_id=Aviao.id
	WHERE Voo.id=id_voo AND Lugar.Numero NOT IN (SELECT Bilhete.Numero FROM Bilhete WHERE Bilhete.voo_id=id_voo)
END //
CALL lugaresLivres(1);


-- REQUISITOS ADMINISTRADOR

-- Consultar voos realizados por uma companhia num dado periodo

DELIMITER // 

CREATE PROCEDURE voosFeitosPorUmaCompanhiaNumPeríodo
	( IN comp VARCHAR(45), IN dt_i DATE, IN dt_f DATE)
BEGIN
	SELECT v.id AS ID_VOO FROM Voo AS v INNER JOIN Aviao AS a
		on v.Aviao_id = a.id 
			WHERE a.Companhia = comp 
            AND v.Data_de_partida >= dt_i 
            AND v.Data_de_partida <= dt_f;
END //voosFeitosPorUmaCompanhiaNumPeríodo

-- Saber os passageiros que viajaram entre dois aeroportos num dado periodo


-- Saber os passageiros de um voo

DELIMITER //

CREATE PROCEDURE passageirosNumVoo(IN id_voo INT)
BEGIN
	SELECT c.Nome,c.NIF,b.Cliente_NIF FROM Bilhete b, Cliente c
    WHERE b.Voo_id = id_voo AND b.Cliente_NIF = c.NIF;
END //

CALL passageiroNumVoo(2);

-- Verificar quantos bilhetes foram vendidos num dado periodo

DELIMITER //

CREATE FUNCTION bilhetesVendidosNumPeriodo(dt_inicio DATE,dt_fim DATE)
	RETURNS INT DETERMINISTIC
BEGIN
	RETURN (SELECT sum(v.Numero_de_bilhetes_Vendidos) AS Total_Bilhetes FROM Voo v 
    WHERE v.Data_de_partida >= dt_inicio AND v.Data_de_partida <= dt_fim);
END //

SELECT bilhetesVendidosNumPeriodo("2021-1-01","2021-03-30");

-- Calcular total faturado num dado período

DELIMITER //

CREATE FUNCTION totalFaturadoNumPeríodo(dt_i DATE, dt_f DATE)
	RETURNS FLOAT DETERMINISTIC
BEGIN
	RETURN(SELECT sum(b.Preço) FROM Bilhete b
		WHERE b.Data >= dt_i AND b.Data <= dt_f);
END //

SELECT totalFaturadoNumPeríodo("2015-01-01","2015-12-31");