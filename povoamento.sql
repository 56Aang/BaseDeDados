USE IngressosDeAvioes;

-- aeroporto
INSERT INTO aeroporto(Pais, Localidade, Codigo_Postal, Nome)
VALUES 
	('Portugal', 'Maia',  '4470-558', 'Aeroporto Francisco Sá Carneiro'),
    ('Portugal', 'Lisboa',  '1700-111', 'Aeroporto Humberto Delgado'),
    ('Portugal', 'Ponta Delgada',  '9500-749', 'Aeroporto de Ponta Delgada João Paulo II'),
    ('Portugal', 'Santa-Cruz',  '9100-105', 'Aeroporto Internacional da Madeira Cristiano Ronaldo'),
    ('Espanha', 'Madrid',  '28042', 'Aeroporto de Madrid-Barajas'),
    ('Espanha', 'Barcelona',  '08820', 'Aeroporto Josep Tarradellas Barcelona-El Prat'),
	('Inglaterra', 'Londres',  'TW6 1QS', 'Aeroporto de Londres Heathrow'),
    ('França', 'Roissy-en-France',  '95700', 'Aeroporto de Roissy-Charles-de-Gaulle'),
    ('Alemanha', 'Frankfurt',  '60547', 'Aeroporto de Frankfurt am Main');
 
 -- aviao faltam as classes
INSERT INTO aviao(Nome, Numero_maximo_de_passageiros,Tara,Companhia)
Values
	('Airbus A330-900neo',298,23,'TAP'),
	('Airbus A330-200',263,23,'TAP'),
	('Airbus A320-200',174,23,'TAP'),
	('Airbus A330-200',263,23,'TAP');


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
	
-- voo

-- bilhete
    
    