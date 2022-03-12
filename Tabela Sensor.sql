use GreenhouseSensor;

create table Sensor (
idSensor int primary key auto_increment,
Temperatura double,
luminosidade double,
Umidade double,
DataHorario datetime
);

select * from Sensor;
desc Sensor;

insert into Sensor values			-- colocar dados na tabela!!!!
(null,                ),
(null,				  ),
(null,                );

