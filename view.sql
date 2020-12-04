USE IngressosDeAvioes;

CREATE VIEW VistaDosClientes AS
SELECT id,Nome FROM Cliente
ORDER BY Nome

CREATE VIEW VistaVoos AS
SELECT Numero_de_Voo AS "Número de Voo",Hora_de_partida AS "Hora de Partida"
,Hora_de_chegada AS "Hora de Chegada",
Duraçao,
Data_de_partida AS "Data de Partida", 
AO.nome AS "Aeroporto Origem" ,
AD.nome AS "Aeroporto Destino" 
FROM Voo
INNER JOIN Aeroporto AS AO ON (AO.id=Voo.Origem_id )
INNER JOIN Aeroporto AS AD ON (AD.id=Voo.Destino_id )
ORDER BY Data_de_partida,Hora_de_partida DESC

CREATE VIEW VoosDisponiveis AS
SELECT Numero_de_Voo AS "Número de Voo",Hora_de_partida AS "Hora de Partida"
,Hora_de_chegada AS "Hora de Chegada",
Duraçao,
Data_de_partida AS "Data de Partida", 
AO.nome AS "Aeroporto Origem" ,
AD.nome AS "Aeroporto Destino" 
FROM Voo
INNER JOIN Aeroporto AS AO ON (AO.id=Voo.Origem_id )
INNER JOIN Aeroporto AS AD ON (AD.id=Voo.Destino_id )
WHERE (Current_date()=Voo.Data_de_partida AND Current_time()<Voo.Hora_de_Partida) OR (Current_date()<Voo.Data_de_partida)

CREATE VIEW TOP3ClientesComMaisBilhetes AS
SELECT Nome, Count(*) num FROM Cliente
INNER JOIN Bilhete ON Cliente.NIF=Bilhete.Cliente_NIF
GROUP BY Nome
ORDER BY num DESC
LIMIT 3;

CREATE VIEW TOP3BilhetesMaisBaratos AS
SELECT Bilhete.Classe,Bilhete.Preço, AO.nome AS "Aeroporto Orgiem", AD.nome AS "Aeroporto Destino"
FROM Bilhete
INNER JOIN Voo ON Bilhete.Voo_id=Voo.id
INNER JOIN Aeroporto AS AO ON (AO.id=Voo.Origem_id )
INNER JOIN Aeroporto AS AD ON (AD.id=Voo.Destino_id )
ORDER BY Bilhete.Preço ASC
LIMIT 3;