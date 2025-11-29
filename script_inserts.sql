USE banco_core;

INSERT INTO CLIENTE VALUES
('12345678901','João Silva','1990-05-12','Rua A','São Paulo','SP','00000-000'),
('98765432100','Maria Oliveira','1985-09-20','Rua B','Itapevi','SP','00000-111');

INSERT INTO AGENCIA VALUES
(1,'Agência Central','Av. Paulista, 1000'),
(2,'Agência Itapevi','Rua das Flores, 200');

INSERT INTO CONTA VALUES
(1001,'12345678901',1,'Corrente',1500.00,500.00),
(1002,'98765432100',2,'Poupança',2500.00,0.00);

INSERT INTO TRANSACAO (ContaOrigem,ContaDestino,DataHora,Valor,TipoTransacao) VALUES
(1001,1002,'2025-01-10 14:30:00',200.00,'PIX'),
(1002,1001,'2025-01-11 09:00:00',150.00,'TED'),
(1001,1001,'2025-01-12 11:00:00',300.00,'Deposito');
