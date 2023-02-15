@AbapCatalog.sqlViewName: 'ZSE11_CDS6'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'CDS6'
define view ZS4D430_CDS6 as select from sbook  as s{
    
    
    s.luggweight as Luggweight,
    s.wunit as Wunit,
    s.class as Class,
     // simple case 
    case class
     when 'Y' then 'Economy class'
     when 'C' then ' Business Class'
     when 'F' then ' First class '
     end  as class_text ,
     
     // litle complex 
    
    case
     when class = 'Y' then ''
      when wunit = 'KG' and  luggweight > 40 then 'X'
      when wunit = 'LB' and  luggweight > 60 then 'X'
      else ''
      
     end  as  excess_luggage  ,
     
     
          // more complex  nested 
    
    case class
     when 'F' then ''
     else case 
             when ( wunit = 'KG' and  luggweight > 40) 
             or  
                (wunit = 'LB' and  luggweight > 60 ) 
                then 'X'
                 else ' '
                 end 
     end  as excess_luggage1 
}
     
     
     
     
 
