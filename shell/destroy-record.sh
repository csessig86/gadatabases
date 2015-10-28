RECORD=$1

# Destroy model
rails destroy model Record$RECORD

# Remove model to DB
rails generate migration drop_record$RECORD --force

# This ruby script create a migration file
# That will destroy the record in the DB
ruby shell/drop-file-migrate.rb $RECORD

# Migrate DB
bundle exec rake db:migrate

# Remove CSS
rm -r app/assets/stylesheets/record$RECORD
rm app/assets/stylesheets/application$RECORD.scss

# Remove JS
rm -r app/assets/javascripts/record$RECORD
rm app/assets/javascripts/application$RECORD.js

# Remove view
rm -r app/views/datasets/show/$RECORD