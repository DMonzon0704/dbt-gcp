{% macro get_date_parts(date_column) %}

(select struct(
    {{date_column}} as original_date, 
    EXTRACT(YEAR from {{date_column}}) as year, 
    EXTRACT(MONTH from {{date_column}}) as month, 
    EXTRACT(DAY from {{date_column}}) as day ) as extract_date
    )
{% endmacro %}