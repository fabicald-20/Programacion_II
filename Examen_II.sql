CREATE DATABASE Tienda;

USE Tienda;

CREATE TABLE Categoria (
    Codigo INT PRIMARY KEY,
    Nombre VARCHAR(50) NOT NULL
);

CREATE TABLE Producto (
    Codigo INT PRIMARY KEY,
    Nombre VARCHAR(50) NOT NULL,
    Precio DECIMAL(10,2) NOT NULL,
    Cantidad INT NOT NULL,
    Categoria INT,
    FOREIGN KEY (Categoria) REFERENCES Categoria(Codigo)
);

INSERT INTO Categoria (Codigo, Nombre) VALUES (1, 'Electrónica');
INSERT INTO Categoria (Codigo, Nombre) VALUES (2, 'Línea Blanca');

INSERT INTO Producto (Codigo, Nombre, Precio, Cantidad, Categoria) VALUES (101, 'Laptop', 1200.00, 5, 1);
INSERT INTO Producto (Codigo, Nombre, Precio, Cantidad, Categoria) VALUES (102, 'Mouse', 25.00, 20, 1);
INSERT INTO Producto (Codigo, Nombre, Precio, Cantidad, Categoria) VALUES (103, 'Refrigeradora', 800.00, 2, 2);

DELETE FROM Producto WHERE Codigo = 102;

DROP DATABASE Tienda;