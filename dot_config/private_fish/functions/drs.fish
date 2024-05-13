function drs --wraps='./doit run:dbt:bp run --practice-id' --description 'alias drs=./doit run:dbt:bp run --practice-id'
  ./doit run:dbt:bp run --practice-id $argv; 
end
