create database GreenhouseSensor;
use GreenhouseSensor;

create table usuarioPessoa (
idUsuario int primary key auto_increment,
CPF char (11),
Endereço varchar (80),
Email varchar (60),
Nome varchar (40)
);
select * from usuarioPessoa;

insert into usuarioPessoa values
(null, '47747876807', 'Rua Presidente Altino 209', 'luan.souza@hotmail.com', 'Luan Souza'),
(null, '45787989807', 'Rua Julio Sérgio de Castro 380', 'gabriel.meira@hotmail.com', 'Gabriel Meira'),
(null, '44676867808', 'Avenida Paulista 500', 'roberto.ken@hotmail.com', 'Roberto Kennedy'),
(null, '45473826908', 'Rua Nazaré Prado 376', 'luis.fabiano@hotmail.com', 'Luis Fabiano'),
(null, '56588749292', 'Avenida Belmira Marin 430', 'raphael.ms1@live.com', 'Raphael Veiga');



