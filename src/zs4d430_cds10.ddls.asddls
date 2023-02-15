@AbapCatalog.sqlViewName: 'ZCDS18BUITLINT'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'CDS10BUITLINTDATES'
define view ZS4D430_CDS10

 as select 
 
from  sbook as b inner join scustom as c
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
 @Semantics.amount.currencyCode:'currency'
 currency_conversion( amount => b.forcuram,
 source_currency => b.forcurkey,
 round => 'X',
 target_currency => cast( 'USD' as abap.cuky),
 exchange_rate_type => 'M',
 
   
 exchange_rate_date => b.fldate ) as Aamount , 
 @Semantics.currencyCode: true
 cast('USD' as abap.cuky) as tarcurrency,
  b.order_date,
   
 dats_days_between(b.order_date,b.fldate) as days_ahead, 
 
 b.luggweight,
 b.wunit,
 
 b.agencynum,
 b.counter,
 
 b.customid,

 c.name,
 concat_with_space(c.form, c.name, 1)  as nname , 
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
