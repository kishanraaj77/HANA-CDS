*&---------------------------------------------------------------------*
*& Report ztrans_anno
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT ztrans_anno.


DATA(GV_TEXT) = CL_DD_DDL_ANNOTATION_SERVICE=>get_label_4_element(
ENTITYNAME = 'Z00_JOIN_AND_SELECTION'
ELEMENTNAME = 'city'
LANGUAGE = 'D' ).

WRITE: / GV_TEXT.


DATA(GV_TEXT2) = CL_DD_DDL_ANNOTATION_SERVICE=>get_label_4_element(
ENTITYNAME = 'Z00_JOIN_AND_SELECTION'
ELEMENTNAME = 'city'
LANGUAGE = SY-LANGU ).

WRITE: / GV_TEXT2.
