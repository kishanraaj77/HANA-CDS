@AbapCatalog.sqlViewAppendName: 'ZASE1APPE'
@EndUserText.label: 'uniongroupby'

extend view 
ZS4D430_CDS27 
with 
ZS4D430_CDS28  

      {
     city, 
     country,
     max( _Booking.fldate ) as last_booking
     }  
group by 
      city,
      country         
union
     {
     city, 
     country, 
     max( _Booking.fldate ) as last_booking
     }
 group by 
      city,
      country         
     
  
