function dsc --wraps='./doit run:dbt:bp seed --dialect clickhouse --practice-id' --description 'alias dsc=./doit run:dbt:bp seed --dialect clickhouse --practice-id'
  ./doit run:dbt:bp seed --dialect clickhouse --practice-id $argv; 
end
