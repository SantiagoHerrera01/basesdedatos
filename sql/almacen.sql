Create table Productos(
	codP int primary key not null,
	nombre_producto varchar(50) not null,
	cantidad int not null,
	precio_costo int not null,
	precio_venta int not null,
);

create table categorias(
	codigo_cat int primary key not null,
);

create table vendedor(
	codigoV int primary key not null,
	nombre_empleado varchar not null,
	Documentoid int not null,
	salario float not null
	);

create table cliente(
	cod_cliente int primary key not null,
	nom_client varchar not null,
	cc int not null,
	direccion varchar not null,
);

create table zona(
	cod_zona int primary key not null,
	ubicacion varchar not null,
);

create table secundary_table(
Cod_venta int primary key,
cod_vendedor int  foreign key (cod_vendedor) references vendedor (codigoV) not null,
cod_cliente int foreign key (cod_cliente) references cliente (cod_cliente) not null,
cod_producto int foreign key (cod_producto) references productos (codP),
cod_precio int foreign key (cod_precio) references categorias (codigo_cat),
cantidadV int foreign key (cantidadV) references productos (codP),
cod_zona int foreign  key (cod_zona) references zona (cod_zona)
);