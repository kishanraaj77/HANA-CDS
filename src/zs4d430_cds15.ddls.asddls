@AbapCatalog.sqlViewName: 'ZCDS15SE11S4'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'CDS15'
define view ZS4D430_CDS15 as select from spfli as a 
cross join scarr  as r{
         key r.carrid as arlinefromscarr ,
         r.carrname as ariname, 
         a.carrid as airlinefromspfli, 
         a.connid, 
         a.cityfrom, 
         a.cityto
         
}
