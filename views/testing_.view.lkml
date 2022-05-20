# The name of this view in Looker is "Testing "
view: testing_ {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: "PUBLIC"."TESTING_"
    ;;
  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

  # Here's what a typical dimension looks like in LookML.
  # A dimension is a groupable field that can be used to filter query results.
  # This dimension will be called "C1" in Explore.

  dimension: c1 {
    type: string
    sql: ${TABLE}."C1" ;;
  }

  dimension: c10 {
    type: string
    sql: ${TABLE}."C10" ;;
  }

  dimension: c11 {
    type: string
    sql: ${TABLE}."C11" ;;
  }

  dimension: c12 {
    type: string
    sql: ${TABLE}."C12" ;;
  }

  dimension: c13 {
    type: string
    sql: ${TABLE}."C13" ;;
  }

  dimension: c14 {
    type: string
    sql: ${TABLE}."C14" ;;
  }

  dimension: c15 {
    type: string
    sql: ${TABLE}."C15" ;;
  }

  dimension: c16 {
    type: string
    sql: ${TABLE}."C16" ;;
  }

  dimension: c17 {
    type: string
    sql: ${TABLE}."C17" ;;
  }

  dimension: c18 {
    type: string
    sql: ${TABLE}."C18" ;;
  }

  dimension: c19 {
    type: string
    sql: ${TABLE}."C19" ;;
  }

  dimension: c2 {
    type: string
    sql: ${TABLE}."C2" ;;
  }

  dimension: c20 {
    type: string
    sql: ${TABLE}."C20" ;;
  }

  dimension: c21 {
    type: string
    sql: ${TABLE}."C21" ;;
  }

  dimension: c22 {
    type: string
    sql: ${TABLE}."C22" ;;
  }

  dimension: c23 {
    type: string
    sql: ${TABLE}."C23" ;;
  }

  dimension: c24 {
    type: string
    sql: ${TABLE}."C24" ;;
  }

  dimension: c25 {
    type: string
    sql: ${TABLE}."C25" ;;
  }

  dimension: c26 {
    type: string
    sql: ${TABLE}."C26" ;;
  }

  dimension: c27 {
    type: string
    sql: ${TABLE}."C27" ;;
  }

  dimension: c28 {
    type: string
    sql: ${TABLE}."C28" ;;
  }

  dimension: c29 {
    type: string
    sql: ${TABLE}."C29" ;;
  }

  dimension: c3 {
    type: string
    sql: ${TABLE}."C3" ;;
  }

  dimension: c30 {
    type: string
    sql: ${TABLE}."C30" ;;
  }

  dimension: c31 {
    type: string
    sql: ${TABLE}."C31" ;;
  }

  dimension: c32 {
    type: string
    sql: ${TABLE}."C32" ;;
  }

  dimension: c33 {
    type: string
    sql: ${TABLE}."C33" ;;
  }

  dimension: c34 {
    type: string
    sql: ${TABLE}."C34" ;;
  }

  dimension: c35 {
    type: string
    sql: ${TABLE}."C35" ;;
  }

  dimension: c4 {
    type: string
    sql: ${TABLE}."C4" ;;
  }

  dimension: c5 {
    type: string
    sql: ${TABLE}."C5" ;;
  }

  dimension: c6 {
    type: string
    sql: ${TABLE}."C6" ;;
  }

  dimension: c7 {
    type: string
    sql: ${TABLE}."C7" ;;
  }

  dimension: c8 {
    type: string
    sql: ${TABLE}."C8" ;;
  }

  dimension: c9 {
    type: string
    sql: ${TABLE}."C9" ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
