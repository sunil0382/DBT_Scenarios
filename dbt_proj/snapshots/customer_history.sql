{% snapshot customer_history %}
    {{ config(
        target_schema='CONSUMPTION_CONSUMPTION',
        unique_key='c_custkey',
        strategy='timestamp',
        updated_at='updated_at' 
    ) }}
    
    SELECT 
        * 
    FROM 
        sample_new.CONSUMPTION.customer

{% endsnapshot %}
