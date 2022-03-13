use GreenhouseSensor;

create table Sensor (
idSensor int primary key auto_increment,
Temperatura varchar(20),
Luminosidade varchar (20),
Umidade varchar (20),
DataHorario datetime
);
desc Sensor;

insert into Sensor values			
(null, '13.5 °C', '228.00 ls','65%','2022-02-13 11:09'),
(null, '15.8 °C', '345.00 ls','67%','2022-03-20 16:54'),
(null, '10.2 °C', '569.00 ls','78%','2022-02-19 18:44'),
(null, '17.9 °C', '376.00 ls','62%','2022-01-08 13:20'),
(null, '14.0 °C', '852.00 ls','74%','2022-02-28 08:09');
drop table Sensor;
select * from Sensor;

-- a média de temperatura é entre 10 e 20 graus
-- umidade = %, ideal que esteja entre 60 a 80%
-- luz = lumus, 0 a 1000 lumus(ls)
