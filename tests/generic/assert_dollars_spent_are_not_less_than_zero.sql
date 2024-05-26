{% test average_dollars_spent_not_less_than_zero( model, column_name, group_by_column) %}

select 
    {{ group_by_column }},
    avg( {{ column_name }} ) as average_amount
from {{ model }}
group by 1
having average_amount < 0


{% endtest %}