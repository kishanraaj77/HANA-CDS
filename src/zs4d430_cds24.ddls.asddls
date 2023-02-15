@AbapCatalog.sqlViewName: 'ZSE11CDS24'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'cdsasso24'
define view ZS4D430_CDS24 
as select from spfli  
association [0..*] to
 sflight as _sflight
    on $projection.carrid = _sflight.carrid 
    and 
    $projection.connid = _sflight.connid 
    {
    
     key  carrid  ,
     key  connid   ,
    distance, 
 
    _sflight  
     
     // Make association public
}
