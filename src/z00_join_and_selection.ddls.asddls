@AbapCatalog.sqlViewName: 'ZSE11_CDS_JOIN'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Z00_JOIN_AND_SELECTION'
@AbapCatalog.buffering: {
    status:  #ACTIVE,  
    type: #GENERIC ,
    numberOfKeyFields: 4
}
@Analytics: {
    dataCategory: #CUBE
}
--- buffering it cannot contain any other view or table function 
-- key field should not have null values 
---no input parameter 

define view Z00_JOIN_AND_SELECTION as select  
from sbook as b inner join scustom as c
 on b.customid = c.id
 {  
  key b.carrid,
  key b.connid,
   key b.fldate,
  key   b.bookid,
 b.class,
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
