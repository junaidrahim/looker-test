# Define the database connection to be used for this model.
connection: "snowflake_sudh_test"

# include all the views
include: "/views/**/*.view"

# Datagroups define a caching policy for an Explore. To learn more,
# use the Quick Help panel on the right to see documentation.

datagroup: finalfield_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: finalfield_default_datagroup

# Explores allow you to join together different views (database tables) based on the
# relationships between fields. By joining a view into an Explore, you make those
# fields available to users for data analysis.
# Explores should be purpose-built for specific use cases.

# To see the Explore you’re building, navigate to the Explore menu and select an Explore under "Finalfield"

# To create more sophisticated Explores that involve multiple views, you can use the join parameter.
# Typically, join parameters require that you define the join type, join relationship, and a sql_on clause.
# Each joined view also needs to define a primary key.

explore: customers {}

explore: my_first_dbt_model {}

explore: my_second_dbt_model {}

explore: oo {}

explore: oo_x {}

explore: orders {
  join: customers {
    type: left_outer
    sql_on: ${orders.customer_id} = ${customers.customer_id} ;;
    relationship: many_to_one
  }
}

explore: raw_customers {}

explore: raw_orders {}

explore: raw_payments {
  join: orders {
    type: left_outer
    sql_on: ${raw_payments.order_id} = ${orders.order_id} ;;
    relationship: many_to_one
  }

  join: customers {
    type: left_outer
    sql_on: ${orders.customer_id} = ${customers.customer_id} ;;
    relationship: many_to_one
  }
}

explore: stg_customers {
  join: customers {
    type: left_outer
    sql_on: ${stg_customers.customer_id} = ${customers.customer_id} ;;
    relationship: many_to_one
  }
}

explore: stg_orders {
  join: customers {
    type: left_outer
    sql_on: ${stg_orders.customer_id} = ${customers.customer_id} ;;
    relationship: many_to_one
  }

  join: orders {
    type: left_outer
    sql_on: ${stg_orders.order_id} = ${orders.order_id} ;;
    relationship: many_to_one
  }
}

explore: stg_orders_secure {
  join: customers {
    type: left_outer
    sql_on: ${stg_orders_secure.customer_id} = ${customers.customer_id} ;;
    relationship: many_to_one
  }

  join: orders {
    type: left_outer
    sql_on: ${stg_orders_secure.order_id} = ${orders.order_id} ;;
    relationship: many_to_one
  }
}

explore: stg_payments {
  join: orders {
    type: left_outer
    sql_on: ${stg_payments.order_id} = ${orders.order_id} ;;
    relationship: many_to_one
  }

  join: customers {
    type: left_outer
    sql_on: ${orders.customer_id} = ${customers.customer_id} ;;
    relationship: many_to_one
  }
}

explore: testing {}

explore: testing_ {}

explore: testing_ddl_function {
  join: orders {
    type: left_outer
    sql_on: ${testing_ddl_function.order_id} = ${orders.order_id} ;;
    relationship: many_to_one
  }

  join: customers {
    type: left_outer
    sql_on: ${orders.customer_id} = ${customers.customer_id} ;;
    relationship: many_to_one
  }
}

explore: testing_model {}
