insert into ctl_fuzzyconsecuencias(nombre,rangomin,rangomax,incremental,fechacreacion,fechamodificacion ) values ('propina',0,26,1,now(),now());

insert into ctl_fuzzyantecedentes(consecuencia,membresias,nombre,rangomin,rangomax,incremental,fechacreacion,fechamodificacion ) values (1,1,'calidad',0,11,1,now(),now());
insert into ctl_fuzzyantecedentes(consecuencia,membresias,nombre,rangomin,rangomax,incremental,fechacreacion,fechamodificacion ) values (1,1,'servicio',0,11,1,now(),now());
insert into ctl_fuzzyantecedentes(consecuencia,membresias,nombre,rangomin,rangomax,incremental,fechacreacion,fechamodificacion ) values (1,1,'ambiente',0,11,1,now(),now());




insert into ctl_fuzzymembresia (consecuencia,antecedente, nombre, rangomin,rangomax, rangofinal )  values (1,0,'bajo',0,0,5);
insert into ctl_fuzzymembresia (consecuencia,antecedente, nombre, rangomin,rangomax, rangofinal )  values (1,0,'medio',0,5,10);
insert into ctl_fuzzymembresia (consecuencia,antecedente, nombre, rangomin,rangomax, rangofinal )  values (1,0,'alto',5,10,10)

insert into ctl_fuzzymembresia (consecuencia,antecedente, nombre, rangomin,rangomax, rangofinal )  values (0,1,'pobre',0,0,5);
insert into ctl_fuzzymembresia (consecuencia,antecedente, nombre, rangomin,rangomax, rangofinal )  values (0,1,'promedio',0,5,10);
insert into ctl_fuzzymembresia (consecuencia,antecedente, nombre, rangomin,rangomax, rangofinal )  values (0,1,'bueno',5,10,10);


insert into ctl_fuzzymembresia (consecuencia,antecedente, nombre, rangomin,rangomax, rangofinal )  values (0,2,'pobre',0,0,5);
insert into ctl_fuzzymembresia (consecuencia,antecedente, nombre, rangomin,rangomax, rangofinal )  values (0,2,'promedio',0,5,10);
insert into ctl_fuzzymembresia (consecuencia,antecedente, nombre, rangomin,rangomax, rangofinal )  values (0,2,'bueno',5,10,10);


insert into cat_fuzzyrules (consecuenta_id,condiciones,consecuencia) values (1,'calidad pobre & servicio pobre & ambiente pobre', 'propina bajo');
insert into cat_fuzzyrules (consecuenta_id,condiciones,consecuencia) values (1,'calidad promedio & servicio promedio', 'propina medio');
insert into cat_fuzzyrules (consecuenta_id,condiciones,consecuencia) values (1,'calidad promedio', 'propina medio');
insert into cat_fuzzyrules (consecuenta_id,condiciones,consecuencia) values (1,'calidad bueno | servicio bueno ', 'propina alto');