insert into ctl_fuzzyconsecuencias(nombre,rangomin,rangomax,incremental,fechacreacion,fechamodificacion ) values ('tip',0,26,1,now(),now());

insert into ctl_fuzzyantecedentes(consecuencia,membresias,nombre,rangomin,rangomax,incremental,fechacreacion,fechamodificacion ) values (1,1,'calidad',0,11,1,now(),now());
insert into ctl_fuzzyantecedentes(consecuencia,membresias,nombre,rangomin,rangomax,incremental,fechacreacion,fechamodificacion ) values (1,1,'servicio',0,11,1,now(),now());
insert into ctl_fuzzyantecedentes(consecuencia,membresias,nombre,rangomin,rangomax,incremental,fechacreacion,fechamodificacion ) values (1,1,'propina',0,26,1,now(),now());

insert into ctl_fuzzymembresia (antecedente, nombre, rangomin,rangomax, rangofinal )  values (1,'pobre',0,0,5);
insert into ctl_fuzzymembresia (antecedente, nombre, rangomin,rangomax, rangofinal )  values (1,'promedio',0,5,10);
insert into ctl_fuzzymembresia (antecedente, nombre, rangomin,rangomax, rangofinal )  values (1,'bueno',5,10,10);


insert into ctl_fuzzymembresia (antecedente, nombre, rangomin,rangomax, rangofinal )  values (2,'pobre',0,0,5);
insert into ctl_fuzzymembresia (antecedente, nombre, rangomin,rangomax, rangofinal )  values (2,'promedio',0,5,10);
insert into ctl_fuzzymembresia (antecedente, nombre, rangomin,rangomax, rangofinal )  values (2,'bueno',5,10,10);

insert into ctl_fuzzymembresia (antecedente, nombre, rangomin,rangomax, rangofinal )  values (3,'pobre',0,0,5);
insert into ctl_fuzzymembresia (antecedente, nombre, rangomin,rangomax, rangofinal )  values (3,'promedio',0,5,10);
insert into ctl_fuzzymembresia (antecedente, nombre, rangomin,rangomax, rangofinal )  values (3,'bueno',5,10,10);