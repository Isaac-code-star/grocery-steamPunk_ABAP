CLASS LHC_ZR_10_GROCERY DEFINITION INHERITING FROM CL_ABAP_BEHAVIOR_HANDLER.
  PRIVATE SECTION.
    METHODS:
      GET_GLOBAL_AUTHORIZATIONS FOR GLOBAL AUTHORIZATION
        IMPORTING
           REQUEST requested_authorizations FOR Grocery
        RESULT result,
      checkExpirationDate FOR MODIFY
            IMPORTING keys FOR ACTION Grocery~checkExpirationDate RESULT result.
ENDCLASS.

CLASS LHC_ZR_10_GROCERY IMPLEMENTATION.
  METHOD GET_GLOBAL_AUTHORIZATIONS.
  ENDMETHOD.
  METHOD checkExpirationDate.
    DATA: lt_groceries TYPE TABLE FOR READ RESULT ZR_10_GROCERY,
          ls_grocery TYPE STRUCTURE FOR READ RESULT ZR_10_GROCERY,
          lv_expiration_date TYPE d,
          lv_current_date TYPE d,
          lv_expired TYPE abap_boolean,
          lt_update_groceries TYPE TABLE FOR UPDATE ZR_10_GROCERY.

    READ ENTITIES OF ZR_10_GROCERY
        IN LOCAL MODE ENTITY GROCERY
        ALL FIELDS WITH CORRESPONDING #( keys )
        RESULT lt_groceries.

    LOOP AT lt_groceries INTO ls_grocery.
        lv_expiration_date = ls_grocery-Expirationdate.
        lv_current_date = cl_abap_context_info=>get_system_date(  ).
        IF lv_expiration_date < lv_current_date.
            lv_expired = abap_true.
        ELSE.
            lv_expired = abap_false.
        ENDIF.

    APPEND VALUE #( id = ls_grocery-Id expired = lv_expired )
        TO lt_update_groceries.
    MODIFY ENTITIES OF ZR_10_GROCERY IN LOCAL MODE
        ENTITY Grocery
        UPDATE FIELDS ( expired )
        WITH lt_update_groceries.

    ENDLOOP.

    result = VALUE #( FOR groceries IN lt_groceries
        ( id = groceries-Id %param = groceries ) ).


  ENDMETHOD.

ENDCLASS.
