@AbapCatalog.sqlViewName: 'ZCDSE1BUILTIN'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'CDS8BUILTIN'
define view ZCDS8_BUILTIN as select from scarr as a {
    
    
    div(5,3)  as div_ln,
    DIVISION(5,3,3)  as div_ln2, 
    CEIL(25.3) as HIHG, 
    FLOOR(24.3) as LOWW, 
    
    carrid , 
    carrname, 
    CONCAT(carrid, carrname ) as CONCAT_CARNAME , 
    REPLACE(carrname,'pore', 'Rich' ) as singcarrname , 
    substring( carrname , 6, 13) as airlin, 
    length(carrid) as lng
    
    
}
where carrname = 'Singapore Airlines'
