@AbapCatalog.sqlViewName: 'ZSE11CDSENH'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'cds25enh'
define view ZS4D430_CDS25 as  
    select 
    from spfli as c 
       inner join scarr as a
               on c.carrid = a.carrid 
       {
         key c.carrid,
         key c.connid,
             c.cityfrom,
             c.cityto,
             a.carrname,
             a.currcode
       } 
 
