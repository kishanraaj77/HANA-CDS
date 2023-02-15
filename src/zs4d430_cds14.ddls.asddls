@AbapCatalog.sqlViewName: 'ZSQL23JAN23'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'CDS14'
define view ZS4D430_CDS14 as select from ZS4D430_CDS12  as B 
inner join ZS4D430_CDS13 as C
on B.customid = C.id

{
    key B.carrid,
 key B.connid,
 key B.fldate,
   B.bookid,
 B.customid,
 B.amount,
 B.currency,
 B.days_ahead,
 C.name,
 C.street,
 C.postcode,
 C.city,
 C.country 
}
