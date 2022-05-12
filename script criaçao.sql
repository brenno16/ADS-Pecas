
CREATE TABLE Estoque (
    Preco FLOAT,
    Quantidade FLOAT,
    id_Fornecedor INTEGER,
    id INTEGER PRIMARY KEY,
    Descricao VARCHAR(100)
);

CREATE TABLE Fornecedor (
    id_Fornecedor INTEGER PRIMARY KEY,
    RazaoSocial VARCHAR(200),
    CNPJ_CPF VARCHAR(200),
    Telefone VARCHAR(200),
    Endereco VARCHAR(300)
);

CREATE TABLE Fornece (
    fk_Fornecedor_id_Fornecedor INTEGER,
    fk_Estoque_id INTEGER
);
 
ALTER TABLE Estoque ADD CONSTRAINT FK_Estoque_2
    FOREIGN KEY (id_Fornecedor)
    REFERENCES Fornecedor (id_fornecedor);
 
ALTER TABLE Fornece ADD CONSTRAINT FK_Fornece_1
    FOREIGN KEY (fk_Fornecedor_id_Fornecedor)
    REFERENCES Fornecedor (id_Fornecedor)
    ON DELETE SET NULL;
 
ALTER TABLE Fornece ADD CONSTRAINT FK_Fornece_2
    FOREIGN KEY (fk_Estoque_id)
    REFERENCES Estoque (id)
    ON DELETE SET NULL;