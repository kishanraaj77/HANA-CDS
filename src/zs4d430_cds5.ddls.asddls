@AbapCatalog.sqlViewName: 'ZSE11_3'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'S4D430_CDS2_simple'
define view ZS4D430_CDS5 as select from sflight {
    carrid ,
    connid,
    fldate
}
