 create database farmacia;
use farmacia;

create table administrador (
    id_adm int auto_increment primary key,
    usuario varchar(50),
    senha varchar(50) 
);
insert into administrador (usuario, senha) values ('admin', '123456');

 drop table medicamentos;
 CREATE TABLE medicamentos (
    id_produto int auto_increment primary key,
    produto varchar(50),
    preco float,
    quantidade int,
    validade DATE,
    categoria varchar(50)
);
INSERT INTO medicamentos (produto, preco, quantidade, validade, categoria) VALUES 
('Ibuprofeno', 8.50, 50, '2024-01-01', 'Anti-inflamatório'),
('Amoxicilina', 15.99, 200, '2024-02-02', 'Antibiótico'),
('Dipirona', 4.50, 150, '2024-03-03', 'Analgésico'),
('Omeprazol', 18.50, 40, '2024-04-04', 'Antiácido'),
('Polaramine', 20.50, 10, '2024-05-05', 'Antialérgico'),
('Bomba de Cavalo', 35.75, 15, '2024-06-06', 'Suplemento'),
('Tadalafila', 45.99, 30, '2024-07-07', 'Vasodilatador'),
('Viagra', 50.99, 25, '2024-08-08', 'Vasodilatador');
	
CREATE TABLE vendas (
    id_venda INT AUTO_INCREMENT PRIMARY KEY,
    id_produto INT,
    quantidade_vendida INT,
    FOREIGN KEY (id_produto) REFERENCES medicamentos(id_produto)
);

SELECT * FROM farmacia.vendas;
SELECT * FROM farmacia.administrador;
SELECT * FROM farmacia.medicamentos;

