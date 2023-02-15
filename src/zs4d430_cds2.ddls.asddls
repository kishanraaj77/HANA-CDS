@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'S4D430_CDS2_VIEWENTITY'
@Metadata.ignorePropagatedAnnotations: true
@ObjectModel.usageType:{
    serviceQuality: #X,
    sizeCategory: #S,
    dataClass: #MIXED
}
define view entity ZS4D430_CDS2 as select from sbook  {
    key  carrid,
  key  connid,
  key  fldate,
  key  bookid,
       class,
 
       forcurkey,
       
       wunit,
       order_date,
       agencynum,
       counter,
       customid
}
