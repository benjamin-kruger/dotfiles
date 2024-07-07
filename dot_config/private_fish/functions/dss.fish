function dss --wraps='./doit run:dbt:bp seed --practice-id' --description 'alias dss=./doit run:dbt:bp seed --practice-id'
  ./doit run:dbt:bp seed --practice-id $argv; 
end
