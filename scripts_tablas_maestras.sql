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

INSERT INTO categorias (nombre) VALUES
('Electrónica'),
('Ropa'),
('Alimentos'),
('Hogar'),
('Deportes');

INSERT INTO productos (nombre, precio, stock, id_categoria, estado) VALUES
('Audífonos Bluetooth', 59.99, 50, 1, 'A'),
('Smartphone Samsung', 499.99, 30, 1, 'A'),
('Cable USB-C', 8.50, 200, 1, 'A'),
('Polo Deportivo', 25.00, 100, 2, 'A'),
('Jeans Clásico', 45.00, 80, 2, 'A'),
('Casaca Impermeable', 89.90, 40, 2, 'I'),
('Arroz 1kg', 3.50, 500, 3, 'A'),
('Aceite Vegetal 1L', 6.80, 300, 3, 'A'),
('Azúcar 1kg', 2.90, 400, 3, 'A'),
('Silla de Oficina', 120.00, 20, 4, 'A'),
('Lámpara LED', 35.00, 60, 4, 'A'),
('Cojín Decorativo', 18.00, 90, 4, 'A'),
('Pelota de Fútbol', 35.00, 60, 5, 'A'),
('Guantes de Boxeo', 55.00, 25, 5, 'A'),
('Mochila Deportiva', 70.00, 45, 5, 'A');