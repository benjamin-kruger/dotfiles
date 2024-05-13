function dcc --wraps='./doit run:dbt:bp compile --dialect clickhouse --practice-id' --description 'alias dcc=./doit run:dbt:bp compile --dialect clickhouse --practice-id'
  ./doit run:dbt:bp compile --dialect clickhouse --practice-id $argv; 
end
