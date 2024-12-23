CLASS zhello_word_1 DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    INTERFACES if_oo_adt_classrun .
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS ZHELLO_WORD_1 IMPLEMENTATION.


  METHOD if_oo_adt_classrun~main.

*  TYPES dummy_type TYPE string.
*  TYPES intergers TYPE I.
*  TYPES date TYPE D.

*  TYPES:
**      BEGIN OF files,
**          file_name TYPE string,
**          file_owner TYPE string,
**
*      END OF files.


*  DATA: First_name TYPE dummy_type,
*        Last_name TYPE dummy_type,
*        AGE TYPE intergers VALUE 22,
*        DATE TYPE date.
*
*  "CONSTANTS First_name TYPE dummy_type VALUE 'Solace'."
*
*  First_name = `Isaac`.
*  CLEAR AGE.
*  DATE = `20020126`.
*  Last_name = 'Onovuakpo'.
*
*  AGE = 27.
*
*
*
*  out->write( |first name is : { First_name }, Last name is :{ Last_name }, Age is { AGE } | ).
*  out->write( | DATE: { DATE } | ).

    DATA: lv_full_name TYPE string VALUE 'Isaac Onovuakpo',
          lv_first_name TYPE string,
          lv_last_name TYPE string,
          lv_var1 TYPE i VALUE 3,
          lv_var2 TYPE i VALUE 4,
          lv_var3 TYPE i,
          lv_var4 TYPE i,
          lv_var5 TYPE i.

   lv_var3 = lv_var2.
   lv_var4 = lv_var1 + lv_var2.
   lv_var5 = lv_var4.

   out->write( |{ lv_var2 }| ).
   SPLIT lv_full_name AT '' INTO lv_first_name lv_last_name.
   out->write( |firstname:| && lv_first_name ).



  ENDMETHOD.
ENDCLASS.
