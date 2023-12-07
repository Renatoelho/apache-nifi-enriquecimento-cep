
USE nifi_db;

CREATE TABLE IF NOT EXISTS nifi_db.ceps_unicos (
	  id INT NOT NULL AUTO_INCREMENT,
	  origem VARCHAR(30),
    cep VARCHAR(10),
	  datahora_registro TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    PRIMARY KEY (id)
);

INSERT INTO nifi_db.ceps_unicos (cep, origem)
VALUES
('01153000', 'Sistema A'), ('20050000', 'Sistema B'), ('70714020', 'Sistema C');

CREATE TABLE IF NOT EXISTS nifi_db.ceps_completos (
	  id INT AUTO_INCREMENT,
    cep VARCHAR(10),
    logradouro VARCHAR(255),
    complemento VARCHAR(255),
    bairro VARCHAR(255),
    localidade VARCHAR(255),
    uf VARCHAR(2),
    ibge VARCHAR(10),
    gia VARCHAR(255),
    ddd VARCHAR(5),
    siafi VARCHAR(10),
	  datahora_registro TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    PRIMARY KEY (id)
);

-- SELECT * FROM nifi_db.ceps_unicos;

-- INSERT INTO nifi_db.ceps_completos (cep, logradouro, complemento, bairro, localidade, uf, ibge, gia, ddd, siafi)
-- VALUES 
--   ('01153000', 'Rua Exemplo 1', 'Complemento 1', 'Bairro A', 'Cidade X', 'UF', '1234567', 'GIA 1', '11', '98765'),
--   ('20050000', 'Rua Exemplo 2', 'Complemento 2', 'Bairro B', 'Cidade Y', 'UF', '7654321', 'GIA 2', '22', '54321'),
--   ('70714020', 'Rua Exemplo 3', 'Complemento 3', 'Bairro C', 'Cidade Z', 'UF', '9876543', 'GIA 3', '33', '21098');


--SELECT 	t1.origem,
--          t2.cep, 
--		    t2.logradouro, 
--		    t2.complemento,
--	    	t2.bairro, 
--	    	t2.localidade,
--	    	t2.uf,
--	    	t2.ibge,
--	    	t2.gia,
--	    	t2.ddd,
--	    	t2.siafi
--FROM  nifi_db.ceps_unicos t1
--LEFT JOIN nifi_db.ceps_completos t2
--ON t1.cep = t2.cep;





