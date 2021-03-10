view: user_role1 {
  sql_table_name: ovaledgedb.user_role ;;

  dimension: roleid1 {
    type: number
    value_format_name: id
    sql: ${TABLE}.roleid1 ;;
  }

  dimension: userid2 {
    type: string
    sql: ${TABLE}.userid2 ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
