DELIMITER $$
create trigger ActualizaDocumentosPublicos after insert on publicadocumento
FOR EACH ROW 
BEGIN
	insert into documentospublicos (idDocumento,idUsuario,siteURL,fecha)
    select sd.idDocumento,sd.idUsuario,sd.siteURL,sd.fecha
		from subedocumento sd
        where sd.idSubeDocumento=NEW.idSubeDocumento;
END;
DELIMITER $$