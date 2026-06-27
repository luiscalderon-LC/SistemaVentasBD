USE sistema_ventas;

CREATE TABLE categorias (
    id_categoria INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL UNIQUE
);

CREATE TABLE productos (
    id_producto INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL,
    precio DECIMAL(10,2) NOT NULL CHECK (precio > 0),
    stock INT NOT NULL CHECK (stock >= 0),
    id_categoria INT NOT NULL,
    estado CHAR(1) DEFAULT 'A' CHECK (estado IN ('A','I')),
    FOREIGN KEY (id_categoria) REFERENCES categorias(id_categoria)
);

CREATE TABLE ventas (
    id_venta INT AUTO_INCREMENT PRIMARY KEY,
    fecha DATETIME DEFAULT CURRENT_TIMESTAMP,
    cliente VARCHAR(100) NOT NULL,
    total DECIMAL(10,2) DEFAULT 0 CHECK (total >= 0)
);

CREATE TABLE detalle_venta (
    id_detalle INT AUTO_INCREMENT PRIMARY KEY,
    id_venta INT NOT NULL,
    id_producto INT NOT NULL,
    cantidad INT NOT NULL CHECK (cantidad > 0),
    precio_unitario DECIMAL(10,2) NOT NULL CHECK (precio_unitario > 0),
    subtotal DECIMAL(10,2) NOT NULL CHECK (subtotal >= 0),
    FOREIGN KEY (id_venta) REFERENCES ventas(id_venta),
    FOREIGN KEY (id_producto) REFERENCES productos(id_producto)
);

INSERT INTO categorias (nombre) VALUES
('Bebidas'),('Abarrotes'),('Lácteos'),('Limpieza'),('Snacks'),
('Carnes'),('Verduras'),('Frutas'),('Panadería'),('Congelados');

INSERT INTO productos (nombre, precio, stock, id_categoria) VALUES
('Agua mineral',2.50,100,1),
('Arroz 1kg',4.20,80,2),
('Leche evaporada',3.80,60,3),
('Detergente',8.50,40,4),
('Papas fritas',2.00,120,5),
('Pollo entero',15.00,30,6),
('Tomate kg',3.50,50,7),
('Manzana kg',5.00,70,8),
('Pan francés',0.30,200,9),
('Helado familiar',12.00,25,10);

INSERT INTO ventas (cliente, total) VALUES
('Luis Pérez',6.70),
('Ana Torres',15.00),
('Carlos Ruiz',22.50),
('María López',10.00),
('José Ramos',8.50),
('Lucía Díaz',20.00),
('Pedro Sánchez',4.20),
('Rosa Medina',12.00),
('Miguel Castro',5.00),
('Daniel Vega',18.80);

INSERT INTO detalle_venta (id_venta,id_producto,cantidad,precio_unitario,subtotal) VALUES
(1,1,1,2.50,2.50),
(1,2,1,4.20,4.20),
(2,6,1,15.00,15.00),
(3,10,1,12.00,12.00),
(3,4,1,8.50,8.50),
(3,5,1,2.00,2.00),
(4,8,2,5.00,10.00),
(5,4,1,8.50,8.50),
(6,6,1,15.00,15.00),
(6,8,1,5.00,5.00),
(7,2,1,4.20,4.20),
(8,10,1,12.00,12.00),
(9,8,1,5.00,5.00),
(10,3,2,3.80,7.60),
(10,5,2,2.00,4.00),
(10,7,2,3.50,7.00);