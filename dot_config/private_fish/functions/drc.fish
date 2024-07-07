function drc --wraps='./doit run:dbt:bp run --dialect clickhouse --practice-id' --description 'alias drc=./doit run:dbt:bp run --dialect clickhouse --practice-id'
  ./doit run:dbt:bp run --dialect clickhouse --practice-id $argv; 
end
