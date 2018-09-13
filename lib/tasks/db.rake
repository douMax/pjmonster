namespace :db do

  desc "Drop and Recreate the database with seed file"
  task rebuild: [ 'db:drop', 'db:create', 'db:migrate', 'db:seed' ] do
    puts 'Database Rebuilt.'
  end

end