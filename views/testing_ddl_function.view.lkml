# The name of this view in Looker is "Testing Ddl Function"
view: testing_ddl_function {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: "PUBLIC"."TESTING_DDL_FUNCTION"
    ;;
  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

  # Here's what a typical dimension looks like in LookML.
  # A dimension is a groupable field that can be used to filter query results.
  # This dimension will be called "Add to Cart Order" in Explore.

  dimension: add_to_cart_order {
    type: number
    sql: ${TABLE}."add_to_cart_order" ;;
  }

  dimension: aisle_id {
    type: number
    sql: ${TABLE}."aisle_id" ;;
  }

  dimension: days_since_prior_order {
    type: string
    sql: ${TABLE}."days_since_prior_order" ;;
  }

  dimension: department {
    type: string
    sql: ${TABLE}."department" ;;
  }

  dimension: department_id {
    type: number
    sql: ${TABLE}."department_id" ;;
  }

  dimension: eval_set {
    type: string
    sql: ${TABLE}."eval_set" ;;
  }

  dimension: order_dow {
    type: number
    sql: ${TABLE}."order_dow" ;;
  }

  dimension: order_hour_of_day {
    type: number
    sql: ${TABLE}."order_hour_of_day" ;;
  }

  dimension: order_id {
    type: number
    # hidden: yes
    sql: ${TABLE}."order_id" ;;
  }

  dimension: order_number {
    type: number
    sql: ${TABLE}."order_number" ;;
  }

  # A measure is a field that uses a SQL aggregate function. Here are defined sum and average
  # measures for this dimension, but you can also add measures of many different aggregates.
  # Click on the type parameter to see all the options in the Quick Help panel on the right.

  measure: total_order_number {
    type: sum
    sql: ${order_number} ;;
  }

  measure: average_order_number {
    type: average
    sql: ${order_number} ;;
  }

  dimension: product_id {
    type: number
    sql: ${TABLE}."product_id" ;;
  }

  dimension: product_name {
    type: string
    sql: ${TABLE}."product_name" ;;
  }

  dimension: reordered {
    type: number
    sql: ${TABLE}."reordered" ;;
  }

  dimension: user_id {
    type: number
    sql: ${TABLE}."user_id" ;;
  }

  measure: count {
    type: count
    drill_fields: [product_name, orders.order_id]
  }
}
