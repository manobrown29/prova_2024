ATIVIDADE 01 

create database prova;
use prova;

create table Clientes(
	ID_Cliente INT PRIMARY KEY,
    Nome VARCHAR(50),
    Email VARCHAR(50),
    Telefone VARCHAR(20)
);

create table Pedidos(
	ID_Pedidos INT primary key,
    ID_Cliente INT,
    Data_Pedido DATE,
    Total DECIMAL (10,2),
    foreign key(ID_Cliente)
    references Clientes(ID_Cliente)
);

-- questao 1 -- 

SELECT
	Clientes.Nome,
    Pedidos.Total
FROM
	Clientes
JOIN
	Pedidos  ON
	Cliente.ID_Cliente = Pedidos.ID_Cliente;
    
-- questao 2 --

SELECT 
	Clientes.Nome
FROM
	Clientes
JOIN
	Pedidos ON
    Cliente.ID_Cliente = Pedidos.ID_Cliente
WHERE
	Pedidos.Data_Pedido = '2024-08-03';
    
-- questao 3 --

SELECT 
	Clientes.Email,
    Pedidos.Data_Pedido
FROM 
	Clientes
JOIN
	Pedidos ON 
    Cliente.ID_Cliente = Pedidos.ID_Cliente;
    
-- questao 4 --

SELECT 
	Clientes.Nome
FROM 
	Clientes
JOIN 
	Pedidos ON 
    Cliente.ID_Cliente = Pedidos.ID_Cliente
WHERE
	Pedidos.Total>300.00;
    
-- questao 5 --

SELECT 
	Clientes.Nome,Clientes.Telefone
FROM 
	Clientes
JOIN 
	Pedidos ON 
    Cliente.ID_Cliente = Pedidos.ID_Cliente
WHERE
	Pedidos.Data_Pedido = '2024-08-05'
    
	
    

    

    
