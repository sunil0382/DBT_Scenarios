SELECT 
city_code,
city,
avg_temp_fahrenheit,
{{to_celsius('avg_temp_fahrenheit',2)}} AS avg_temp_celsius
FROM WEATHER_DATA