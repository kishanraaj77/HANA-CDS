@AbapCatalog.sqlViewName: 'ZCDS123SE1'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'cdsunionandunionall'
define view ZS4D430_CDS19 as select from S4d430_Customer_With_Revenue
{
 key id,
 'C' as type,
 name,
 street,
 postcode,
 city,
 country,
 amount,
 currency,
 days_ahead
}
union all
select from S4d430_Agency_With_Revenue
{
 key id,
 'A' as type,
 name,
 street,
 postcode,
 city,
 country,
 amount,
 currency,
 days_ahead
}
