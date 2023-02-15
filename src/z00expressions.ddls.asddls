@AbapCatalog.sqlViewName: 'ZCDSE11_EXP'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'EXPRESSION'
 


define view Z00EXPRESSIONS  
as select  
from sbook as b inner join scustom as c
 on b.customid = c.id
 {  
  key b.carrid,
  key b.connid,
   key b.fldate,
   key b.class, 
   key   b.bookid,
        case b.class
        when 'F' then 'First' 
        when 'Y' then 'Economy'
        when 'C' then 'Business'
        end
    as class_txt , 
 b.forcuram as amount,
 b.forcurkey as currency,
 b.luggweight,
 b.wunit,
 b.order_date,
 b.agencynum,
 b.counter,
 
 b.customid,
 
 c.name,
 
 c.street,
 c.postcode,
 
 @EndUserText: {
     label: 'City Name '
 }
 c.city,
  @EndUserText: {
     label: 'Country  Name '
 }
 c.country
 }
 where cancelled <> 'X'


    
