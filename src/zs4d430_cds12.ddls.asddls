@AbapCatalog.sqlViewName: 'ZSE11CDS12'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'CDSSBOOK'
 
@OData: {
    publish: true
}

@UI.headerInfo: {typeName:' Flight booking' , 
                    typeNamePlural : 'Flight Bookings '}
@Search: {
    searchable: true
}


 
define view ZS4D430_CDS12  as select from sbook as b
{
@UI.lineItem: [{
     
    position: 10 ,
     
    importance: #HIGH,
    type: #STANDARD,
    label: 'CARRID'
}]


@UI.selectionField: [{
    
    position: 20  
    
}]
 key b.carrid,
 @UI.lineItem: [{
     
    position: 20 ,
     
    importance: #HIGH,
    type: #STANDARD,
    label: 'ConnectionRID'
}]

@UI.selectionField: [{
    
    position: 20  
    
}]


 key b.connid,
 @UI.lineItem: [{
     
    position: 30 ,
     
    
    type: #STANDARD,
    label: 'flightdate'
}]
 
 key b.fldate,
 key b.bookid,
 @UI.hidden: true
 case b.class
 when 'Y' then 'Economy'
 when 'C' then 'Business'
 when 'F' then 'First'
 else '???'
 end as class,
 
 @Semantics.amount.currencyCode:'currency'
 currency_conversion( amount => b.forcuram,
 source_currency => b.forcurkey,
 round => 'X',
 target_currency => cast( 'USD' as abap.cuky),
 exchange_rate_type => 'M',
 exchange_rate_date => b.order_date,
 error_handling => 'SET_TO_NULL' ) as amount,
 
 @Semantics.currencyCode: true
 cast('USD' as abap.cuky) as currency,
 @Semantics.quantity.unitOfMeasure: 'wunit'
 b.luggweight,
 @Semantics.unitOfMeasure: true
 b.wunit,
 b.order_date,
 dats_days_between(b.order_date, b.fldate) as
days_ahead,
 b.agencynum,
 b.counter,
 b.customid
}
where
 cancelled <> 'X'
