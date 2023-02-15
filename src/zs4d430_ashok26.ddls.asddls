@EndUserText.label: 'TABLE FUNCTIONS'
define table function ZS4D430_ASHOK26
with parameters AIRLINE : s_carr_id
returns {
  key MANDT : abap.clnt;
  key CARRID : s_carrid;
      CONNID : s_conn_id;
      FLDATE : s_date;
      PRICE : s_price;
  
}
implemented by method ZCL_AMDP_FUN_AS1=>GET_FLIGHTS1;
