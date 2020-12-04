USE IngressosDeAvioes;

CREATE VIEW VistaDosClientes AS
SELECT id,Nome FROM Cliente
ORDER BY Nome

CREATE VIEW VistaVoos AS
SELECT Numero_de_Voo,Hora_de_partida,Hora_de_chegada,Duraçao,Data_de_partida,Origem_id,Destino_id FROM Voo
ORDER BY Data_de_partida,Hora_de_partida

CREATE VIEW VoosDisponiveis AS
SELECT Numero_de_Voo,Hora_de_partida,Hora_de_chegada,Duraçao,Data_de_partida,Origem_id,Destino_id
FROM Voo
WHERE CURRENT_TIMESTAMP() < DATE_ADD(Voo.Data_de_partida, INTERVAL Voo.Hora_de_partida HOUR)

