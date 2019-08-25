CREATE 
    ALGORITHM = UNDEFINED 
    DEFINER = `padsot`@`localhost` 
    SQL SECURITY DEFINER
VIEW `db_padsot`.`ocumentostransparencia` AS
    SELECT 
        `d`.`idArticulo` AS `idArticulo`,
        `sd`.`idDocumento` AS `idDocumento`,
        `dp`.`idPublicaDocumento` AS `idPublicaDocumento`,
        `sd`.`idSubeDocumento` AS `idSubeDocumento`,
        `d`.`nombreDocumento` AS `nombreDocumento`,
        `sd`.`siteURL` AS `siteURL`,
        CONCAT(`a`.`nomenclaturaArticulo`,
                '-',
                `af`.`nomenclaturaFraccion`) AS `nomenclaturaArticulo`,
        SUBSTR(`af`.`nombreFraccion`, 1, 50) AS `nombreFraccion`
    FROM
        (((((`db_padsot`.`documentospublicos` `dp`
        JOIN `db_padsot`.`subedocumento` `sd`)
        JOIN `db_padsot`.`publicadocumento` `pd`)
        JOIN `db_padsot`.`documento` `d`)
        JOIN `db_padsot`.`articulo` `a`)
        JOIN `db_padsot`.`articulofraccion` `af`)
    WHERE
        ((`dp`.`idPublicaDocumento` = `pd`.`idPublicaDocumento`)
            AND (`pd`.`idSubeDocumento` = `sd`.`idSubeDocumento`)
            AND (`sd`.`idDocumento` = `d`.`idDocumento`)
            AND (`d`.`idArticulo` = `a`.`idArticulo`)
            AND (`d`.`idArticuloFraccion` = `af`.`idArticuloFraccion`))