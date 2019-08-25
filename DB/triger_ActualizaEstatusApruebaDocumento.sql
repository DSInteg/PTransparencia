DELIMITER $$
create trigger ActualizaDocumentosPublicos after insert on apruebadocumento
FOR EACH ROW 
BEGIN
BEGIN
    update estatusdocumento SET idApruebaDocumento = NEW.idApruebaDocumento
    where idSubeDocumento=NEW.idSubeDocumento;
  END
END;
DELIMITER $$