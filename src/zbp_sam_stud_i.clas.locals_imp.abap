CLASS lhc_ZSAM_STUD_I DEFINITION INHERITING FROM cl_abap_behavior_handler.
  PRIVATE SECTION.

*    METHODS get_instance_authorizations FOR INSTANCE AUTHORIZATION
*      IMPORTING keys REQUEST requested_authorizations FOR zsam_stud_i RESULT result.
    METHODS get_global_authorizations FOR  GLOBAL AUTHORIZATION
   IMPORTING  REQUEST requested_authorizations FOR Students RESULT result.
    METHODS updatestatus FOR MODIFY
      IMPORTING keys FOR ACTION Students~updatestatus.

ENDCLASS.

CLASS lhc_ZSAM_STUD_I IMPLEMENTATION.

  METHOD get_global_authorizations.
  ENDMETHOD.

  METHOD UpdateStatus.
    READ ENTITIES OF zsam_stud_i IN LOCAL MODE
    ENTITY Students
    ALL FIELDS WITH CORRESPONDING #( keys )
    RESULT DATA(lt_students)
    FAILED DATA(lt_failed).
    SORT lt_students BY Status DESCENDING.
    LOOP AT lt_students ASSIGNING FIELD-SYMBOL(<fs_data>).
      <fs_data>-Status = abap_true.
    ENDLOOP.
    MODIFY ENTITIES OF zsam_stud_i IN LOCAL MODE
    ENTITY Students
    UPDATE FIELDS ( Status ) WITH CORRESPONDING #( lt_students ).
  ENDMETHOD.

ENDCLASS.
