insert into ctl_fuzzyconsecuencias(nombre,rangomin,rangomax,incremental,fechacreacion,fechamodificacion ) values ('propina',0,26,1,now(),now());

insert into ctl_fuzzyantecedentes(consecuencia,membresias,nombre,rangomin,rangomax,incremental,fechacreacion,fechamodificacion ) values (1,1,'calidad',0,11,1,now(),now());
insert into ctl_fuzzyantecedentes(consecuencia,membresias,nombre,rangomin,rangomax,incremental,fechacreacion,fechamodificacion ) values (1,1,'servicio',0,11,1,now(),now());
insert into ctl_fuzzyantecedentes(consecuencia,membresias,nombre,rangomin,rangomax,incremental,fechacreacion,fechamodificacion ) values (1,1,'ambiente',0,11,1,now(),now());



insert into ctl_fuzzymembresia (consecuencia, nombre, rangomin,rangomax, rangofinal )  values (1,'bajo',0,0,5);
insert into ctl_fuzzymembresia (consecuencia, nombre, rangomin,rangomax, rangofinal )  values (1,'medio',0,5,10);
insert into ctl_fuzzymembresia (consecuencia, nombre, rangomin,rangomax, rangofinal )  values (1,'alto',5,10,10)

insert into ctl_fuzzymembresia (antecedente, nombre, rangomin,rangomax, rangofinal )  values (1,'pobre',0,0,5);
insert into ctl_fuzzymembresia (antecedente, nombre, rangomin,rangomax, rangofinal )  values (1,'promedio',0,5,10);
insert into ctl_fuzzymembresia (antecedente, nombre, rangomin,rangomax, rangofinal )  values (1,'bueno',5,10,10);


insert into ctl_fuzzymembresia (antecedente, nombre, rangomin,rangomax, rangofinal )  values (2,'pobre',0,0,5);
insert into ctl_fuzzymembresia (antecedente, nombre, rangomin,rangomax, rangofinal )  values (2,'promedio',0,5,10);
insert into ctl_fuzzymembresia (antecedente, nombre, rangomin,rangomax, rangofinal )  values (2,'bueno',5,10,10);


insert into cat_fuzzyrules (consecuenta_id,condiciones,consecuencia) values (1,'calidad[''pobre''] | servicio[''pobre'']', 'propina[''pobre'']');
insert into cat_fuzzyrules (consecuenta_id,condiciones,consecuencia) values (1,'calidad[''promedio''] | servicio[''promedio'']', 'propina[''promedio'']');
insert into cat_fuzzyrules (consecuenta_id,condiciones,consecuencia) values (1,'calidad[''bueno''] | servicio[''bueno'']', 'propina[''bueno'']');

insert into cat_fuzzyrules (consecuenta_id,condiciones,consecuencia) values (1,'calidad[pobre] | servicio[pobre]', 'propina[pobre]');
insert into cat_fuzzyrules (consecuenta_id,condiciones,consecuencia) values (1,'calidad[promedio] | servicio[promedio]', 'propina[promedio]');
insert into cat_fuzzyrules (consecuenta_id,condiciones,consecuencia) values (1,'calidad[bueno] | servicio[bueno]', 'propina[bueno]');