@AbapCatalog.sqlViewName: 'ZCDS23PARAM'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'CD9WITHPARAMTERS'

define view ZS4D430_CDS9
    with parameters p_to_cuur : abap.cuky( 5 ), 
                    p_conv_date: syst_datum @<Environment.systemField : #SYSTEM_DATE


as select from  sflight as S {
    
    key S.carrid as Carrid,
    key S.connid as Connid,
    S.fldate as Fldate,
    S.price as Price,
    S.currency as Currency, 
    currency_conversion( amount => S.price, 
    source_currency =>  S.currency , 
    
   // target_currency => cast ('INR' as abap.cuky), 
    target_currency =>  $parameters.p_to_cuur,  
   
    exchange_rate_date  =>   $parameters.p_conv_date ) 
 
    as currcprice, 
    
    cast( 'INR' as abap.cuky) as targtcurr, 
    
    seatsmax, 
    seatsocc, 
     seatsmax - seatsocc as remseat 
    //seatsocc_b + seatsocc_f + remseat as higseat
     
}

 
where S.carrid = 'AA'   
 