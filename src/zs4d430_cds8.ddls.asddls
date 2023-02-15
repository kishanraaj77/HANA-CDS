@AbapCatalog.sqlViewName: 'ZCDS_CURR'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'CDS8CURRENCYCONVERISION'
define view ZS4D430_CDS8 as select from sflight as S {
    
    
    
    key S.carrid as Carrid,
    key S.connid as Connid,
    S.fldate as Fldate,
    S.price as Price,
    S.currency as Currency, 
    currency_conversion( amount => S.price, 
    source_currency =>  S.currency , 
    
    target_currency => cast ('INR' as abap.cuky), 
    
   
    exchange_rate_date  => S.fldate ) 
 
    as currcprice, 
    
    cast( 'INR' as abap.cuky) as targtcurr, 
    
    dats_add_days(S.fldate , 5, 'INITIAL')  as daysadd, 
    dats_days_between(S.fldate, '20230214') as daysdiff, 
    dats_add_months(S.fldate , 5, 'NULL')  as daysmon
    
    
}


where S.carrid = 'AA'
