@AbapCatalog.sqlViewName: 'ZSE11CDS22JOIN'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'cdsasso'
define view ZS4D430_CDS22 as select from spfli  as p

left outer join sflight as s
on p.carrid = s.carrid and 
p.connid = s.connid

{
    s.carrid, 
    s.connid, 
    fldate
}
