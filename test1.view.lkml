view: test1 {
  derived_table: {
    sql: select count(*) from ovaledgedb.user
      ;;
  }

  dimension: count {
    type: number
    sql: ${TABLE}.`count(*)` ;;
  }

  set: detail {
    fields: [count]
  }
}
