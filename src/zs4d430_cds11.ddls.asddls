@AbapCatalog.sqlViewName: 'ZCDS_AGGRESE11'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'CDS11AGREEGATION'
define view ZS4D430_CDS11 as select from sflight  as a {
  
   a.carrid  as Airline ,
  
    max(a.price) as maxprice ,
    min(a.price) as minprice, 
    sum(a.price) as sumprice, 
    count(*) as cnt 
}

group by a.carrid , a.connid 
having a.carrid = 'AA'
