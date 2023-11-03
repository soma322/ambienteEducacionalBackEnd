insert into ctl_fuzzyconsecuencias(nombre,rangomin,rangomax,incremental,fechacreacion,fechamodificacion ) values ('propina',0,26,1,now(),now());

insert into ctl_fuzzyantecedentes(consecuencia,membresias,nombre,rangomin,rangomax,incremental,fechacreacion,fechamodificacion ) values (1,1,'calidad',0,11,1,now(),now());
insert into ctl_fuzzyantecedentes(consecuencia,membresias,nombre,rangomin,rangomax,incremental,fechacreacion,fechamodificacion ) values (1,1,'servicio',0,11,1,now(),now());
insert into ctl_fuzzyantecedentes(consecuencia,membresias,nombre,rangomin,rangomax,incremental,fechacreacion,fechamodificacion ) values (1,1,'ambiente',0,11,1,now(),now());





insert into ctl_fuzzymembresia (consecuencia,antecedente,tipo, nombre, rango1,rango2, rango3,rango4 )  values (1,0,1,'bajo',0,0,0,5);
insert into ctl_fuzzymembresia (consecuencia,antecedente,tipo, nombre, rango1,rango2, rango3,rango4 )  values (1,0,1,'medio',0,0,5,10);
insert into ctl_fuzzymembresia (consecuencia,antecedente,tipo, nombre, rango1,rango2, rango3,rango4 )  values (1,0,1,'alto',5,0,10,10);

insert into ctl_fuzzymembresia (consecuencia,antecedente,tipo, nombre, rango1,rango2, rango3,rango4 )  values (0,1,1,'pobre',0,0,0,5);
insert into ctl_fuzzymembresia (consecuencia,antecedente,tipo, nombre, rango1,rango2, rango3,rango4 )  values (0,1,1,'promedio',0,0,5,10);
insert into ctl_fuzzymembresia (consecuencia,antecedente,tipo, nombre, rango1,rango2, rango3,rango4 )  values (0,1,1,'bueno',5,0,10,10);

insert into ctl_fuzzymembresia (consecuencia,antecedente,tipo, nombre, rango1,rango2, rango3,rango4 )  values (0,2,1,'pobre',0,0,0,5);
insert into ctl_fuzzymembresia (consecuencia,antecedente,tipo, nombre, rango1,rango2, rango3,rango4 )  values (0,2,1,'promedio',0,0,5,10);
insert into ctl_fuzzymembresia (consecuencia,antecedente,tipo, nombre, rango1,rango2, rango3,rango4 )  values (0,2,1,'bueno',5,0,10,10);


insert into cat_fuzzyrules (consecuenta_id,condiciones,consecuencia) values (1,'calidad pobre & servicio pobre & ambiente pobre', 'propina bajo');
insert into cat_fuzzyrules (consecuenta_id,condiciones,consecuencia) values (1,'calidad promedio & servicio promedio', 'propina medio');
insert into cat_fuzzyrules (consecuenta_id,condiciones,consecuencia) values (1,'calidad promedio', 'propina medio');
insert into cat_fuzzyrules (consecuenta_id,condiciones,consecuencia) values (1,'calidad bueno | servicio bueno ', 'propina alto');




insert into ctl_fuzzyconsecuencias(nombre, rangomin,rangomax,incremental,fechacreacion,fechamodificacion ) values ('nivel',0,11,1,now(),now())

insert into ctl_fuzzymembresia(consecuencia, antecedente, tipo,nombre,rango1,rango2,rango3,rango4) values (4,0,1,'bajo',0,0,0,3);
insert into ctl_fuzzymembresia(consecuencia, antecedente, tipo,nombre,rango1,rango2,rango3,rango4) values (4,0,1,'promedio',2,0,5,7);
insert into ctl_fuzzymembresia(consecuencia, antecedente, tipo,nombre,rango1,rango2,rango3,rango4) values (4,0,1,'alto',6,0,10,10);


insert into ctl_fuzzyantecedentes(consecuencia, membresias, nombre, rangomin,rangomax,incremental,fechacreacion,fechamodificacion ) values (4,2,'tiempo',0,181,1,now(),now())

insert into ctl_fuzzymembresia(consecuencia, antecedente, tipo,nombre,rango1,rango2,rango3,rango4) values (0,5,1,'bueno',0,0,30,60);
insert into ctl_fuzzymembresia(consecuencia, antecedente, tipo,nombre,rango1,rango2,rango3,rango4) values (0,5,1,'promedio',55,0,60,120);
insert into ctl_fuzzymembresia(consecuencia, antecedente, tipo,nombre,rango1,rango2,rango3,rango4) values (0,5,1,'malo',110,0,120,360);


insert into ctl_fuzzyantecedentes(consecuencia, membresias, nombre, rangomin,rangomax,incremental,fechacreacion,fechamodificacion ) values (4,3,'respuesta',0,11,1,now(),now())

insert into ctl_fuzzymembresia(consecuencia, antecedente, tipo,nombre,rango1,rango2,rango3,rango4) values (0,6,1,'bajo',-1,0,30,4);
insert into ctl_fuzzymembresia(consecuencia, antecedente, tipo,nombre,rango1,rango2,rango3,rango4) values (0,6,1,'bueno',4,0,5,7);
insert into ctl_fuzzymembresia(consecuencia, antecedente, tipo,nombre,rango1,rango2,rango3,rango4) values (0,6,1,'alto',6,0,10,10);


insert into ctl_fuzzyantecedentes(consecuencia, membresias, nombre, rangomin,rangomax,incremental,fechacreacion,fechamodificacion ) values (4,4,'ayuda',0,10,1,now(),now())


insert into ctl_fuzzymembresia(consecuencia, antecedente, tipo,nombre,rango1,rango2,rango3,rango4) values (0,6,1,'bajo',-1,0,30,4);
insert into ctl_fuzzymembresia(consecuencia, antecedente, tipo,nombre,rango1,rango2,rango3,rango4) values (0,6,1,'bueno',4,0,5,7);
insert into ctl_fuzzymembresia(consecuencia, antecedente, tipo,nombre,rango1,rango2,rango3,rango4) values (0,6,1,'alto',6,0,10,10);


insert into ctl_fuzzymembresia(consecuencia, antecedente, tipo,nombre,rango1,rango2,rango3,rango4) values (0,7,1,'poca',-1,0,1,2);
insert into ctl_fuzzymembresia(consecuencia, antecedente, tipo,nombre,rango1,rango2,rango3,rango4) values (0,7,1,'promedio',1,0,3,4);
insert into ctl_fuzzymembresia(consecuencia, antecedente, tipo,nombre,rango1,rango2,rango3,rango4) values (0,7,1,'alto',3,0,10,10);

insert into cat_fuzzyrules (consecuenta_id,condiciones,consecuencia) values (4,'tiempo bueno | respuesta alto | ayuda alto', 'nivel alto');
insert into cat_fuzzyrules (consecuenta_id,condiciones,consecuencia) values (4,'tiempo promedio | respuesta alto & ayuda poca', 'nivel bajo');
insert into cat_fuzzyrules (consecuenta_id,condiciones,consecuencia) values (4,'tiempo bueno & respuesta bajo & ayuda alto', 'nivel bajo');
insert into cat_fuzzyrules (consecuenta_id,condiciones,consecuencia) values (4,'tiempo bueno & respuesta alto & ayuda poca', 'nivel bajo');
insert into cat_fuzzyrules (consecuenta_id,condiciones,consecuencia) values (4,'tiempo bueno & respuesta bajo & ayuda alto', 'nivel bajo');