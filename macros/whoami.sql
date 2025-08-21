{% macro whoami() %}
  {% set sql %}
    select current_user(),
           current_role(),
           current_secondary_roles(),
           current_warehouse(),
           current_database(),
           current_schema();
  {% endset %}
  {% set res = run_query(sql) %}
  {{ log(res.columns, info=True) }}
  {{ log(res.rows, info=True) }}
{% endmacro %}