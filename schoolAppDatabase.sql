use schoolAppDatabase;

Create table schoolAppDatabase . category (
	id int Auto_increment primary key,
    name Varchar(250) UNIQUE NOT NULL    
);

Create table schoolAppDatabase . Article (
	id int Auto_increment primary key,
    category_id int,
    type varchar(50),
    name varchar(50),
    born year,
    died year,
    nationality varchar(50),
    known_for varchar(50),
    notable_work text,
    about text,
    year Year,
    medium varchar(50),
    dimensions varchar(50),
    location varchar(50),
    designed_by varchar(50),
    developer varchar(50),
    Foreign Key (category_id) references category(id)
);

Create table schoolAppDatabase . user (
	id Int Auto_increment primary key,
    username varchar(100) UNIQUE NOT NULL,
    password varchar(100) NOT NULL,
    role enum('student', 'tutor', 'admin') NOT NULL
);


