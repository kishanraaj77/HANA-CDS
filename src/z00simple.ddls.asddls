@AbapCatalog.sqlViewName: 'ZCDSE11_SIMPLE'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Z00SIMPLE'
define view Z00SIMPLE  as select from sbook
{
 key carrid,
 key connid,
  key  fldate,
  key  bookid,
 class,
 forcuram,
 forcurkey,
 luggweight,
 wunit,
 order_date,
 agencynum,
 counter,
 customid
} 
