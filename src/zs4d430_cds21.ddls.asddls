@AbapCatalog.sqlViewName: 'ZCDSE1134'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'cds21'
define view ZS4D430_CDS21
 with parameters  

@EndUserText: {
    label: 'Flights before '
} 
@Environment.systemField: #SYSTEM_DATE
  P_FlightsBefore : abap.dats 
as  select from S4d430_Booking_And_Customer as c
{
 key c.customid as id,
 c.name,
 c.street,
 c.postcode,
 c.city,
 c.country,
 @Semantics.amount.currencyCode: 'currency'
 sum(c.amount) as amount,
// @Semantics.currencyCode: true
 c.currency,
 avg(c.days_ahead) as days_ahead
}
where
 fldate <  $parameters.P_FlightsBefore
 group by
 c.customid,
 c.name,
 c.postcode,
 c.street,
 c.city,
 c.country,
 c.currency
 