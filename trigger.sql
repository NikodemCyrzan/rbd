create trigger przed_usunieciem_konta_klienta
before delete on konto_klienta
for each row
delete from zakupiony_papier where konto_klienta_id = OLD.`id`;