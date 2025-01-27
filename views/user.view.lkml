view: user {
  sql_table_name: ovaledgedb.user ;;
  drill_fields: [userid]

  dimension: userid {
    primary_key: yes
    type: string
    sql: ${TABLE}.USERID ;;
  }

  dimension: address {
    type: string
    sql: ${TABLE}.ADDRESS ;;
  }

  dimension: authorities {
    type: string
    sql: ${TABLE}.AUTHORITIES ;;
  }

  dimension_group: createdate {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.createdate ;;
  }

  dimension: email {
    type: string
    sql: ${TABLE}.EMAIL ;;
  }

  dimension: fname {
    type: string
    sql: ${TABLE}.FNAME ;;
  }

  dimension: gender {
    type: string
    sql: ${TABLE}.GENDER ;;
  }

  dimension: lname {
    type: string
    sql: ${TABLE}.LNAME ;;
  }

  dimension: password {
    type: string
    sql: ${TABLE}.PASSWORD ;;
  }

  dimension: personal_phone {
    type: string
    sql: ${TABLE}.PERSONAL_PHONE ;;
  }

  dimension: status {
    type: string
    sql: ${TABLE}.status ;;
  }

  dimension: title {
    type: string
    sql: ${TABLE}.TITLE ;;
  }

  dimension: title22 {
    type: string
    sql: ${TABLE}.title22 ;;
  }

  dimension: title23 {
    type: string
    sql: ${TABLE}.title23 ;;
  }

  dimension: usertype {
    type: string
    sql: ${TABLE}.usertype ;;
  }

  measure: userscount {
    type :  sum
    sql: ${userid} ;;
  }

  measure: count {
    type: count
    drill_fields: [userid, lname, fname]
  }
}
