@AbapCatalog.sqlViewName: 'ZSSE1ENH'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText: {
    label: 'main projection '
}

 @AbapCatalog.viewEnhancementCategory:  [ #PROJECTION_LIST ,#GROUP_BY, 
                                         #UNION  
                                         
                                       ] 
 
                                    
define view ZS4D430_CDS27 as 
  select 
    from scustom 
     association[*] to sbook as _Booking
       on $projection.id = _Booking.customid  
     { 
       key id,
           name,
           min(_Booking.fldate) as first_booking  
      }
  group by id, name      
union
select
  from stravelag 
    association[*] to sbook as _Booking
       on $projection.id = _Booking.agencynum  
     { 
       key agencynum       as id,
           name,
           min(_Booking.fldate) as first_booking           
     }
  group by agencynum, name      
      
  
 