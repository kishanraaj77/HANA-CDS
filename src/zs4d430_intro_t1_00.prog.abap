**&---------------------------------------------------------------------*
**& Report S4D430_INTRO_T1
**&---------------------------------------------------------------------*

REPORT zs4d430_intro_t1_00.

TYPES ty_t_customers TYPE STANDARD TABLE OF scustom
                         WITH NON-UNIQUE KEY id.

DATA gt_customers TYPE ty_t_customers.

* ALV Processing

DATA go_salv TYPE REF TO cl_salv_table.
DATA gx_excp TYPE REF TO cx_salv_error.

* Selection Screen

PARAMETERS pa_city TYPE s_city DEFAULT 'New York' LOWER CASE.

START-OF-SELECTION.

* Data Retrieval
************************************************************************

 SELECT * FROM scustom
           INTO TABLE gt_customers
           WHERE city = pa_city
           order by city name.

* output
***********************************************************************
  TRY.

  cl_salv_table=>factory(
    IMPORTING
      r_salv_table   = go_salv
    CHANGING
      t_table        = gt_customers
  ).

* Display
*-------------------------*

  go_salv->display( ).

CATCH cx_salv_error INTO gx_excp.    "
  MESSAGE gx_excp TYPE 'I'.
ENDTRY.
