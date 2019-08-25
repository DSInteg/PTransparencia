use db_padsot;

SELECT d.idArticulo idArticulo, sd.idDocumento idDocumento, dp.idPublicaDocumento idPublicaDocumento, 
sd.idSubeDocumento idSubeDocumento, 
d.nombreDocumento nombreDocumento, sd.siteURL siteURL,
concat(a.nomenclaturaArticulo,"-",af.nomenclaturaFraccion) as nomenclaturaArticulo,
substring(af.nombreFraccion,1,50) nombreFraccion
FROM documentospublicos dp, subedocumento sd, publicadocumento pd, documento d, articulo a, articulofraccion af
where dp.idPublicaDocumento=pd.idPublicaDocumento 
and	pd.idSubeDocumento=sd.idSubeDocumento
and sd.idDocumento=d.idDocumento
and d.idArticulo=a.idArticulo
and d.idArticuloFraccion=af.idArticuloFraccion;