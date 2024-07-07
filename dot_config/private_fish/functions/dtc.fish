function dtc --wraps='./doit run:dbt:bp test --dialect clickhouse --practice-id' --description 'alias dtc=./doit run:dbt:bp test --dialect clickhouse --practice-id'
  ./doit run:dbt:bp test --dialect clickhouse --practice-id $argv; 
end
