CLASS ZCONDITIONAL_LOGIC DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    INTERFACES if_oo_adt_classrun .
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS ZCONDITIONAL_LOGIC IMPLEMENTATION.


  METHOD if_oo_adt_classrun~main.

   CONSTANTS c_number TYPE I VALUE 2.

   IF c_number = 0.
    out->write( 'Number is invalid' ).
   ELSE.
    out->write( 'Number is Valid' ).

   ENDIF.

**************************SWITCH CASE STATEMENT********************************************

    DATA lv_name TYPE string VALUE 'Kameta'.

    CASE lv_name.
        WHEN 'Isaac'.
            out->write( 'This is Isaac' ).
        WHEN 'Ruth'.
            out->write( 'This is Ruth' ).
        WHEN 'Solace'.
            out->write( 'We are the Solace' ).
        WHEN OTHERS.
            out->write( 'Not aplicable' ).

    ENDCASE.

*******************************IFELSE CASE***************************************
    DATA lv_firstname TYPE string VALUE 'Jon Doe'.

    IF lv_firstname = 'Isaac'.
        out->write( 'This is Isaac' ).
    ElSEIF lv_firstname = 'Ruth'.
        out->write( 'This is Isaac Wife' ).
    ElSEIF lv_firstname = 'Solace'.
        out->write( 'This is Isaac and Ruth family name' ).
    ELSE.
        out->write( 'Not applicable' ).
    ENDIF.

**********************************LOOP STATEMENT************************************

******************************************DO TIMES LOOP****************************
    DATA lv_iteration TYPE sy-index.

    lv_iteration = 5.

    DO lv_iteration TIMES.
        out->write( | Welcome to LOOP classes and many more codinng experiences | ).
    ENDDO.

********************************LOOP WITH AN ABORT CONDITION  (YOU WILL CREATE AN INIFINITE LOOP OF THE ABORT CONDITION IS NOT TRUE)**************************************

    DATA(lv_number1) = 4.
    DATA lv_numberFinal TYPE i.
    lv_numberFinal = lv_number1 * lv_number1.

    DO.
        out->write( | { sy-index }: { lv_numberFinal } | ).
        lv_numberFinal = lv_numberFinal - 1.

    """""""""""""""""""""""Will create an endless loop if condition is false """""""""""""""""""""""""""""""""""""""""""
    IF lv_numberFinal <= lv_number1.
        EXIT.
    ENDIF.
    ENDDO.


  ENDMETHOD.
ENDCLASS.
