function dts --wraps='./doit run:dbt:bp test --practice-id' --description 'alias dts=./doit run:dbt:bp test --practice-id'
  ./doit run:dbt:bp test --practice-id $argv; 
end
