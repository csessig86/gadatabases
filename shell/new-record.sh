RECORD=$1
FIELDS=`cat shell/new-record-fields.txt`

function newRecord() {
	# Generate the model 
	rails generate model Record$RECORD $FIELDS

	# Add model to DB
	bundle exec rake db:migrate
	
	# Create view
	cp -r app/views/datasets/show/_base app/views/datasets/show/$RECORD

	# Generate SCSS
	echo "/*
	 	*= require application
	 	*= require record$RECORD/base
	 	*= require record$RECORD/base-datatable
		*/" >> app/assets/stylesheets/application$RECORD.scss

	cp -r app/assets/stylesheets/_base app/assets/stylesheets/record$RECORD

	# Generate JS
	echo "/*
	 	*= require application
		*= require record$RECORD/base
		*= require record$RECORD/base-datatable
		*= require record$RECORD/view-datatable
		*= require record$RECORD/model-datatable
		*/" >> app/assets/javascripts/application$RECORD.js

	cp -r app/assets/javascripts/_base app/assets/javascripts/record$RECORD
}

newRecord