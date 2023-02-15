@AbapCatalog.sqlViewName: 'ZCDSSE11PARA'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'CDS20'
define view ZS4D430_CDS20
    with parameters  curr : s_currcode
as select from sflight as a {

    a.carrid as Carrid,
     
    a.price as Price,
    a.currency as Currency,
    a.planetype as Planetype,
    a.seatsmax as Seatsmax,
    a.seatsocc as Seatsocc,
    a.paymentsum as Paymentsum
     
} where currency =  :curr
