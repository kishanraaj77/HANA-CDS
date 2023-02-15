@AbapCatalog.sqlViewName: 'ZCDS14SE1114'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: '16joins'
define view ZS4D430_CDS16 as select from scarr as a 

left outer join ( sairport as b 
                        left outer join scounter as c 
                                on b.id = c.airport )
                                
               on a.carrid = c.carrid


 {

 a.carrid  as airling, 
 b.id  as id , 
 c.countnum as cntrnumber 
 
    
}
