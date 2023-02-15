@AbapCatalog.sqlViewName: 'ZS4D430_SE11_1'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'S4D430_CDS1'

define view ZS4D430_CDS1  
    
    as select from sbook
{
  key  carrid,
  key  connid,
  key  fldate,
  key  bookid,
       class,
       forcuram,
       forcurkey,
       luggweight,
       wunit,
       order_date,
       agencynum,
       counter,
       customid
}
    
 