@AbapCatalog.sqlViewName: 'ZSE11CDSASSO'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'cds24join'
define view ZS4D430_CDS23 
as select from spfli as p 
association[0..1] to sflight as _sflight 
on p.carrid = _sflight.carrid and 
p.connid = _sflight.connid


--- 1 means - 0...1
--3 means 0...3
--* means 0..*
--- no * as minimum , and no 0 as max  
{
    key p.carrid, 
    key p.connid, 
    distance,
    
    _sflight 
}  
