use db_padsot;
DELIMITER $$
create trigger ActualizaEstatusPublicaDocumento 
after insert on publicadocumento
FOR EACH ROW 
BEGIN
    update estatusdocumento SET idPublicaDocumento = NEW.idPublicaDocumento
       where idSubeDocumento=NEW.idSubeDocumento
        and idApruebaDocumento=NEW.idApruebaDocumento;
    update documentospublicos SET idPublicaDocumento = NEW.idPublicaDocumento
        where idDocumento=(select sd.idDocumento from subedocumento sd where sd.idSubeDocumento=NEW.idSubeDocumento);
  END;
$$
DELIMITER ;