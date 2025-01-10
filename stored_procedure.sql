delimiter //
create procedure usun_klienta (in in_klient_id int)
begin 
    delete from konto_klienta where klient_id = in_klient_id;
    delete from klient where id = in_klient_id;
end;
//
delimiter ;