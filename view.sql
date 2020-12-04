USE IngressosDeAvioes;

CREATE VIEW VistaDosClientes AS
SELECT id,Nome FROM Cliente
ORDER BY Nome

CREATE VIEW VistaVoos AS
SELECT Numero_de_Voo,Hora_de_partida,Hora_de_chegada,Duraçao,Data_de_partida,Origem_id,Destino_id FROM Voo
ORDER BY Data_de_partida,Hora_de_partida DESC

CREATE VIEW VoosDisponiveis AS
SELECT Numero_de_Voo,Hora_de_partida,Hora_de_chegada,Duraçao,Data_de_partida,Origem_id,Destino_id,Aeroporto.id,Aeroporto.Nome
FROM Voo
INNER JOIN Aeroporto ON (Aeroporto.id=Voo.Origem_id ) OR (Aeroporto.id = Voo.Destino_id)
WHERE (Current_date()=Voo.Data_de_partida AND Current_time()<Voo.Hora_de_Partida) OR (Current_date()<Voo.Data_de_partida)

