USE banco_core;

UPDATE CLIENTE SET Cidade='Barueri' WHERE CPF_CNPJ='12345678901';

UPDATE CONTA SET SaldoAtual = SaldoAtual + 200 WHERE NumeroConta=1001;

UPDATE AGENCIA SET NomeAgencia='Agência Castelo' WHERE CodAgencia=2;
