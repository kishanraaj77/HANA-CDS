@AbapCatalog.sqlViewName: 'ZCDSE11_23'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'CDS13SCUTOM'
define view ZS4D430_CDS13  as select from scustom as c
{
 key c.id,
 concat_with_space(c.form, c.name, 3) as name,
 
 c.street,
 c.postcode,
 c.city,
 c.country,
 @EndUserText.label: 'Discount Factor'
 @EndUserText.quickInfo: 'Customer Specific Discount Factor'
 division(cast(c.discount as abap.int4), 100, 2) as discount
}
