@EndUserText.label: '30CDS'
define table function ZS4D430_CDS30
with parameters AIRLINE : s_carr_id
returns {
  key MANDT : abap.clnt;
  key CARRID : s_carrid;
  CONNID : s_conn_id;
  FLDATE : s_date;
  PRICE : s_price ;
  
 }
implemented by method ZCL_AMDP_00=>GET_FLIGHTS;
