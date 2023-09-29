
CREATE DATABASE IF NOT EXISTS SistemaEscolas DEFAULT CHARACTER SET utf8 ;

USE SistemaEscolas ;

-- -----------------------------------------------------
-- Table SistemaEscolas.Escolas
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS SistemaEscolas.Escolas (
  EscolaID INT NOT NULL AUTO_INCREMENT,
  NomeEscola VARCHAR(100) NOT NULL,
  Endereco VARCHAR(255) NOT NULL,
  Telefone VARCHAR(22) NOT NULL,
  PRIMARY KEY (EscolaID)
  );


CREATE TABLE IF NOT EXISTS SistemaEscolas.Alunos(
  Matricula INT NOT NULL,
  NomeAluno VARCHAR(255) NOT NULL,
  DataNascimento DATE NOT NULL,
  Endereco VARCHAR(255) NOT NULL,
  Telefone VARCHAR(22) NULL,
  Escola INT NOT NULL,
  PRIMARY KEY (Matricula),
  FOREIGN KEY (Escola) REFERENCES SistemaEscolas.Escolas(EscolaID)
  );

---------------------
-- Data for table SistemaEscolas.Escolas
-- -----------------------------------------------------

USE SistemaEscolas;
INSERT INTO SistemaEscolas.Escolas (`EscolaID`, `NomeEscola`, `Endereco`, `Telefone`) VALUES (1, 'Colégio Estadual Cesar', 'Rua das Margaridas', '(71)9643-4223');
INSERT INTO SistemaEscolas.Escolas (`EscolaID`, `NomeEscola`, `Endereco`, `Telefone`) VALUES (2, 'Colégio Municipal Datiele Souza', 'Rua das Flores', '(71)9312-4123');
INSERT INTO SistemaEscolas.Escolas (`EscolaID`, `NomeEscola`, `Endereco`, `Telefone`) VALUES (3, 'Insituto de Pesquisa da Oliveira', 'Avenida das Oliverias', '(71)9432-3123');
INSERT INTO SistemaEscolas.Escolas (`EscolaID`, `NomeEscola`, `Endereco`, `Telefone`) VALUES (4, 'Escola Pequeno Aprendiz', 'Estrada das Vitórias-Régias', '(21)3223-5212');
INSERT INTO SistemaEscolas.Escolas (`EscolaID`, `NomeEscola`, `Endereco`, `Telefone`) VALUES (5, 'Colégio Federal da Polícia Militar', 'Rodovia Militar', '(24)7431-3514');
-- -----------------------------------------------------
-- Data for table SistemaEscolas.`Alunos`
-- -----------------------------------------------------
USE SistemaEscolas;
INSERT INTO SistemaEscolas.`Alunos` (`Matricula`, `NomeAluno`, `DataNascimento`, `Endereco`, `Telefone`, `Escola`) VALUES (11, 'Datiele Souza', '2004-12-06', 'Avenida dos Patos', '(71)9234-5523', 1);
INSERT INTO SistemaEscolas.`Alunos` (`Matricula`, `NomeAluno`, `DataNascimento`, `Endereco`, `Telefone`, `Escola`) VALUES (12, 'Gustavo Pereira', '2005-11-07', 'Rua do Brasil', '(71)9532-1234', 2);
INSERT INTO SistemaEscolas.`Alunos` (`Matricula`, `NomeAluno`, `DataNascimento`, `Endereco`, `Telefone`, `Escola`) VALUES (13, 'Pedro Costa', '2006-10-08', 'Av. Pereira', '(71)9423-4521', 1);
INSERT INTO SistemaEscolas.`Alunos` (`Matricula`, `NomeAluno`, `DataNascimento`, `Endereco`, `Telefone`, `Escola`) VALUES (14, 'Yago Almeida', '2007-09-09', 'Rua do Exército', '(43)3345-2123', 1);
INSERT INTO SistemaEscolas.`Alunos` (`Matricula`, `NomeAluno`, `DataNascimento`, `Endereco`, `Telefone`, `Escola`) VALUES (15, 'Jéssica de Jesus', '2008-08-07', 'Av. das Rosas', '(42)5312-3443', 2);





