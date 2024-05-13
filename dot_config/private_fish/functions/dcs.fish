function dcs --wraps='./doit run:dbt:bp compile --practice-id' --description 'alias dcs=./doit run:dbt:bp compile --practice-id'
  ./doit run:dbt:bp compile --practice-id $argv; 
end
