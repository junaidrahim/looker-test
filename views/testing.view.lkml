# The name of this view in Looker is "Testing"
view: testing {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: "PUBLIC"."TESTING"
    ;;
  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

  # Here's what a typical dimension looks like in LookML.
  # A dimension is a groupable field that can be used to filter query results.
  # This dimension will be called "As" in Explore.

  dimension: as {
    type: string
    sql: ${TABLE}."AS" ;;
  }

  dimension: as10 {
    type: string
    sql: ${TABLE}."AS10" ;;
  }

  dimension: as2 {
    type: string
    sql: ${TABLE}."AS2" ;;
  }

  dimension: as3 {
    type: string
    sql: ${TABLE}."AS3" ;;
  }

  dimension: as4 {
    type: string
    sql: ${TABLE}."AS4" ;;
  }

  dimension: as5 {
    type: string
    sql: ${TABLE}."AS5" ;;
  }

  dimension: as6 {
    type: string
    sql: ${TABLE}."AS6" ;;
  }

  dimension: as7 {
    type: string
    sql: ${TABLE}."AS7" ;;
  }

  dimension: as8 {
    type: string
    sql: ${TABLE}."AS8" ;;
  }

  dimension: as9 {
    type: string
    sql: ${TABLE}."AS9" ;;
  }

  dimension: asdasdas {
    type: string
    sql: ${TABLE}."ASDASDAS" ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
