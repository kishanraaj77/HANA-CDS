@AbapCatalog.sqlViewName: 'ZCDSE1120S'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'cds17union'
define view ZS4D430_CDS17 as select from stravelag {
    
    key agencynum as id, 
    key 'Afgency' as type , 
    name , 
    city ,
    country
}
union 

select from scustom {
    
    key id as id, 
    key 'Customer' as type , 
    name , 
    city ,
    country
}
