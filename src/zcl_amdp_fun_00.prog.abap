*&---------------------------------------------------------------------*
*& Report zcl_amdp_fun_00
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT zcl_amdp_fun_00.


DATA IT TYPE TABLE OF ZS4D430_CDS30.

PARAMETERS : AIRLINEE TYPE S_CARR_ID .

SELECT FROM ZS4D430_CDS30(  AIRLINE =  @AIRLINEE )
FIELDS
CARRID, CONNID, FLDATE, PRICE
INTO TABLE @IT.

CL_DEMO_OUTPUT=>DISPLAY_DATA( IT ).
