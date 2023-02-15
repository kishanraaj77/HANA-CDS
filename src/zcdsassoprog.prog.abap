*&---------------------------------------------------------------------*
*& Report zcdsassoprog
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT zcdsassoprog.


select  from ZS4D430_CDS24
 FIELDS
carrid, connid ,
sum( \_sflight-price ) as price
where carrid = 'AA'
group by carrid, connid
into table @data(it).

CL_DEMO_OUTPUT=>DISPLAY_DATA(  IT ).
