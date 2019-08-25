DELIMITER $$
create trigger ActualizaEstatusSubeDocumentos after insert on subedocumento
FOR EACH ROW 
BEGIN
    update estatusdocumento SET idSubeDocumento = NEW.idSubeDocumento,
    idApruebaDocumento = idDocumento,
    idPublicaDocumento = idDocumento
    where idDocumento=NEW.idDocumento;
  END
DELIMITER $$