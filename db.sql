create database biuro_maklerskie;

create table klient (
    id int auto_increment primary key,
    pesel char(11),
    imie varchar(40),
    nazwisko varchar(50)
);

create table konto_klienta (
    id int auto_increment primary key,
    telefon varchar(14),
    email varchar(255),
    preferowana_komunikacja enum('email', 'telefon'),
    saldo decimal(7, 2),
    typ enum('zwykle', 'premium'),
    klient_id int,
    foreign key (klient_id) references klient(id)
);

create table papier_wartosciowy (
    id int auto_increment primary key,
    symbol varchar(10),
    nazwa varchar(20),
    typ enum('akcje', 'obligacje', 'etf', 'fundusze'),
    poziom_ryzyka int
);

create table zakupiony_papier (
    id int auto_increment primary key,
    ilosc int,
    czas_zakupu datetime,
    cena_zakupu decimal(7, 2),
    konto_klienta_id int,
    papier_wartosciowy_id int,
    foreign key (konto_klienta_id) references konto_klienta(id),
    foreign key (papier_wartosciowy_id) references papier_wartosciowy(id)
);

create table doradca (
    id int auto_increment primary key,
    imie varchar(40),
    nazwisko varchar(50),
    email varchar(255),
    telefon varchar(14),
    dziedzina enum('papiery_wartosciowe', 'obsluga_klienta')
);

create table spotkanie (
    id int auto_increment primary key,
    czas_rozpoczecia datetime,
    czas_zakonczenia datetime,
    doradca_id int,
    konto_klienta_id int,
    foreign key (doradca_id) references doradca(id),
    foreign key (konto_klienta_id) references konto_klienta(id)
);

create table prowadzacy (
    id int auto_increment primary key,
    imie varchar(40),
    nazwisko varchar(50),
    email varchar(255)
);

create table webinar (
    id int auto_increment primary key,
    czas_rozpoczecia datetime,
    przewidywana_dlugsc int,
    tytul varchar(255),
    prowadzacy_id int,
    foreign key (prowadzacy_id) references prowadzacy(id)
);

create table webinar_konto_klienta (
    id int auto_increment primary key,
    webinar_id int,
    konto_klienta_id int,
    foreign key (webinar_id) references webinar(id),
    foreign key (konto_klienta_id) references konto_klienta(id)
);
