connection: "mysql"

include: "/views/*.view.lkml"                # include all views in the views/ folder in this project
include: "/**/*.view.lkml"                 # include all views in this project
#include: "my_dashboard.dashboard.lookml"   # include a LookML dashboard called my_dashboard

# # Select the views that should be a part of this model,
# # and define the joins that connect them together.
#
explore: user {}
explore: buyer {
  view_name: user
}
explore: customer {
  from: user
}
explore:test1  {}
explore: user_role1 {
  join: user {
    type: left_outer
    sql_on: ${user_role1.userid2} = ${user.userid} ;;
    relationship: many_to_one
  }

  join: roles {
    type: left_outer
    sql_on: ${user_role1.roleid1} = ${roles.roleid} ;;
    relationship: many_to_one
  }
}
