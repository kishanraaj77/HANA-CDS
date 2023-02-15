*&---------------------------------------------------------------------*
*& Report zpara1
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT zpara1.

DATA LV_CURR TYPE S_CURRCODE.

CL_DEMO_INPUT=>NEW(  )->ADD_FIELD(  CHANGING FIELD = LV_CURR )->REQUEST( ).
SELECT * FROM ZS4D430_CDS20( CURR =  @LV_CURR )
 INTO TABLE @DATA(ITAB).
 CL_DEMO_OUTPUT=>DISPLAY( ITAB ).
