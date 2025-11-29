CREATE DATABASE IF NOT EXISTS banco_core;
USE banco_core;

CREATE TABLE CLIENTE (
    CPF_CNPJ VARCHAR(14) PRIMARY KEY,
    NomeCompleto VARCHAR(100) NOT NULL,
    DataNascimento DATE,
    Rua VARCHAR(100),
    Cidade VARCHAR(50),
    Estado VARCHAR(2),
    CEP VARCHAR(9)
);

CREATE TABLE AGENCIA (
    CodAgencia INT PRIMARY KEY,
    NomeAgencia VARCHAR(100),
    EnderecoAgencia VARCHAR(150)
);

CREATE TABLE CONTA (
    NumeroConta INT PRIMARY KEY,
    CPF_CNPJ_Cliente VARCHAR(14),
    CodAgencia INT,
    TipoConta ENUM('Corrente','Poupança'),
    SaldoAtual DECIMAL(10,2),
    LimiteChequeEspecial DECIMAL(10,2),
    FOREIGN KEY (CPF_CNPJ_Cliente) REFERENCES CLIENTE(CPF_CNPJ),
    FOREIGN KEY (CodAgencia) REFERENCES AGENCIA(CodAgencia)
);

CREATE TABLE TRANSACAO (
    ID_Transacao INT AUTO_INCREMENT PRIMARY KEY,
    ContaOrigem INT,
    ContaDestino INT,
    DataHora DATETIME,
    Valor DECIMAL(10,2),
    TipoTransacao ENUM('PIX','TED','Saque','Deposito'),
    FOREIGN KEY (ContaOrigem) REFERENCES CONTA(NumeroConta),
    FOREIGN KEY (ContaDestino) REFERENCES CONTA(NumeroConta)
);
