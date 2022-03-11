use GreenhouseSensor;

create table usuarioEmpresa (
idUsuario int primary key auto_increment,
CNPJ char (14),
Endereço varchar (80),
Email varchar (60),
Nome varchar (40),
NomeRepresentante varchar (40)
);

select * from usuarioEmpresa;

insert into usuarioEmpresa values 
(null, '59546515000134', 'Rua José Amaro Rodrigues 81', 'sulbrasil@sulbrasil.com.br', 'SulBrasilEstufas', 'Thiago'),
(null, '76867696000187', 'Rodovia Washington Luís KM 220', 'plantfort@plantfort.com.br', 'Plantfort', 'João'),
(null, '85743017000176', 'Avenida das Nações Unidas 348', 'zannata@zannata.com.br', 'Zannata',  'Luana'),
(null, '90767564000154', 'Avenida Paulista 678', 'vdh@hoeven.com.br', 'Van Der Hoeven',  'Fernanda'),
(null, '53765839000198', 'Avenida Ibirapuera 543', 'estufas@eb.com.br', 'Estufas Brasil',  'Gabriel');
