CLASS zcl_test DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    CLASS-METHODS get_instance
      RETURNING VALUE(ro_instance) TYPE REF TO zcl_test.
    METHODS divide
      IMPORTING
        iv_x             TYPE i
        iv_y             TYPE i
      RETURNING
        VALUE(rv_result) TYPE i.
    METHODS subtract
      IMPORTING
        iv_x             TYPE i
        iv_y             TYPE i
      RETURNING
        VALUE(rv_result) TYPE i.

  PROTECTED SECTION.
  PRIVATE SECTION.
    CLASS-DATA: mo_instance TYPE REF TO zcl_test.
ENDCLASS.



CLASS ZCL_TEST IMPLEMENTATION.


  METHOD divide.

    rv_result = iv_x / iv_y.

  ENDMETHOD.


  METHOD get_instance.

    IF mo_instance IS NOT BOUND.

      mo_instance = NEW zcl_test( ).

    ENDIF.

    ro_instance = mo_instance.

  ENDMETHOD.


  METHOD subtract.

    rv_result = iv_x - iv_y.

  ENDMETHOD.
ENDCLASS.
