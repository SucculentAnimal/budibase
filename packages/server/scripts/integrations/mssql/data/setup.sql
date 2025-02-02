USE master;
  
IF OBJECT_ID ('dbo.products', 'U') IS NOT NULL  
  DROP TABLE products;  
GO  
CREATE TABLE products 
(  
  id int IDENTITY(1,1),  
  name varchar (20),  
  description varchar(30),
  CONSTRAINT pk_products PRIMARY KEY NONCLUSTERED (id)
);

IF OBJECT_ID ('dbo.tasks', 'U') IS NOT NULL
  DROP TABLE tasks;
GO
CREATE TABLE tasks
(
  taskid int IDENTITY(1,1),
  taskname varchar (20),
  productid int,
  CONSTRAINT pk_tasks PRIMARY KEY NONCLUSTERED (taskid),
  CONSTRAINT fk_products FOREIGN KEY (productid) REFERENCES products (id),
);

IF OBJECT_ID ('dbo.people', 'U') IS NOT NULL
  DROP TABLE people;
GO
CREATE TABLE people
(
  name varchar(30),
  age varchar(20),
  CONSTRAINT pk_people PRIMARY KEY NONCLUSTERED (name, age)
);
  
INSERT products
  (name, description)  
VALUES  
  ('Bananas', 'Fruit thing');  
  
INSERT products
  (name, description)  
VALUES  
  ('Meat', 'Animal thing');

INSERT tasks
  (taskname, productid)
VALUES
  ('Processing', 1);

INSERT INTO people (name, age)
VALUES ('Bob', '30'),
  ('Bert', '10'),
  ('Jack', '12'),
  ('Mike', '31'),
  ('Dave', '44'),
  ('Jim', '43'),
  ('Kerry', '32'),
  ('Julie', '12'),
  ('Kim', '55'),
  ('Andy', '33'),
  ('John', '22'),
  ('Ruth', '66'),
  ('Robert', '88'),
  ('Bobert', '99'),
  ('Jan', '22'),
  ('Megan', '11');
