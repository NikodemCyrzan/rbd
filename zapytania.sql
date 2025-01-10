-- trigger
create trigger przed_usunieciem_konta_klienta
    before delete on konto_klienta
    for each row
    delete from zakupiony_papier where konto_klienta_id = OLD.`id`;


-- procedura
delimiter //
create procedure usun_klienta (in in_klient_id int)
begin 
    delete from konto_klienta where klient_id = in_klient_id;
    delete from klient where id = in_klient_id;
end;
//
delimiter ;

-- sprawdzenie działania procedury - usunie klienta Marcin Nowicki o id 22
call usun_klienta(22);


-- podwójny join
select
    kk.klient_id as klient_id,
    kk.email as email,
    w.tytul as tytul
from konto_klienta kk
    join webinar_konto_klienta wkk on wkk.konto_klienta_id = kk.id 
    join webinar w on w.id = wkk.webinar_id
where w.id = 1;


-- łączna cena zakupu papierów przez użytkownika 20
select sum(cena_zakupu * ilosc) from zakupiony_papier where konto_klienta_id = 20;

-- ilosc uczestników webinaru 2
select count(id) from webinar_konto_klienta where webinar_id = 2; 

-- najdłuższy webinar
select max(przewidywana_dlugsc), tytul from webinar;

-- średnia długość webinarów
select avg(przewidywana_dlugsc) from webinar;

-- pierwszy papier wartościowy zakupiony przez Annę Nowak
select
    min(zp.czas_zakupu) as `data zakupu`,
    pw.nazwa
from klient k
    join konto_klienta kk on kk.klient_id = k.id
    join zakupiony_papier zp on zp.konto_klienta_id = kk.id
    join papier_wartosciowy pw on pw.id = zp.papier_wartosciowy_id
where
   k.imie = 'Anna' and k.nazwisko = 'Nowak';


-- zmiana nazwiska użytkownika Jacek Mazur na Placek
update klient set nazwisko = 'Placek' where imie = 'Jacek' and nazwisko = 'Mazur';


-- usunięcie konta klienta o id 20 
-- sprawdzenie działania triggera "przed_usunieciem_konta_klienta"
delete from konto_klienta where id = 20;


-- dodane nowego konta klienta
insert into konto_klienta (telefon, email, preferowana_komunikacja, saldo, typ, klient_id)
values ('012 987 542', 'sylwia.czerwinska@interia.pl', 'telefon', 4550.80, 'zwykle', 20);


-- sprawdzenie spójności danych
check table klient, doradca, konto_klienta, papier_wartosciowy, prowadzacy, spotkanie, webinar, webinar_konto_klienta, zakupiony_papier;