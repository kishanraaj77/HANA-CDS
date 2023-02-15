@AbapCatalog.sqlViewName: 'ZSE11CDS28'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'CDS7ARITHMETIC'
define view ZS4D430_CDS7 as select from sflight  {
    
    
    cast('20230214' as abap.dats )  as COL_DTE, 
    cast('20230214' as  s_customer preserving type ) as COL_DTECUST,
    cast('20230214' as s_date)  as COL_DTE2, 
    cast('20230214' as  abap.int4 )   as COL_int4,
    cast('20230214' as  abap.dec(16,2))   as COL_dec
    
   
    
     
}
