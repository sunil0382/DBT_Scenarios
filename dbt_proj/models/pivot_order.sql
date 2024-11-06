
select
  {{ dbt_utils.pivot(
      'CITY',
      dbt_utils.get_column_values(ref('macro_example_model'), 'CITY'),
      agg='sum'
  ) }}
from {{ ref('macro_example_model') }}
group by CITY