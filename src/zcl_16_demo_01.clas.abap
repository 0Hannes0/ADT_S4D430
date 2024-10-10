CLASS zcl_16_demo_01 DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    INTERFACES if_oo_adt_classrun .
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_16_demo_01 IMPLEMENTATION.


  METHOD if_oo_adt_classrun~main.

    DELETE FROM z16_flight.
    out->write( |Deleted: { sy-dbcnt }| ).
    DATA flight TYPE z16_flight.
    DATA flights TYPE TABLE OF z16_flight.

    flight-client = sy-mandt.
    flight-airline_id = 'LH'.
    flight-connection_id = '0400'.
    flight-flight_date = '20241117'.
    flight-flight_price = '325.88'.
    flight-currency_code = 'EUR'.
    flight-created_by = sy-uname.
    GET TIME STAMP FIELD flight-created_at.
    flight-local_last_changed_by = sy-uname.
    GET TIME STAMP FIELD flight-local_last_changed_at.
    GET TIME STAMP FIELD flight-last_changed_at.
    APPEND flight TO flights.

    flight-client = sy-mandt.
    flight-airline_id = 'LH'.
    flight-connection_id = '0400'.
    flight-flight_date = '35671117'.
    flight-flight_price = '678.88'.
    flight-currency_code = 'EUR'.
    flight-created_by = sy-uname.
    GET TIME STAMP FIELD flight-created_at.
    flight-local_last_changed_by = sy-uname.
    GET TIME STAMP FIELD flight-local_last_changed_at.
    GET TIME STAMP FIELD flight-last_changed_at.
    APPEND flight TO flights.

    flight-client = sy-mandt.
    flight-airline_id = 'LH'.
    flight-connection_id = '0400'.
    flight-flight_date = '68541117'.
    flight-flight_price = '867.88'.
    flight-currency_code = 'EUR'.
    flight-created_by = sy-uname.
    GET TIME STAMP FIELD flight-created_at.
    flight-local_last_changed_by = sy-uname.
    GET TIME STAMP FIELD flight-local_last_changed_at.
    GET TIME STAMP FIELD flight-last_changed_at.
    APPEND flight TO flights.

    INSERT z16_flight FROM TABLE @flights.
    out->write( |Inserted: { sy-dbcnt }| ).
  ENDMETHOD.
ENDCLASS.
