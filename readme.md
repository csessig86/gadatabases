#GADatabases
This app allows us to easily upload CSV files and turn them into searchable tables.

[VIEW LIVE](https://gadatabases.herokuapp.com/)

You need to run the app locally to upload a spreadsheet and create a new record in the database. You can then upload it to Heroku (see "Deploy AND dump the local DB to the Heroku DB").

On the web, you can edit datasets and view the searchable tables.


##Running locally

######Fire up Rails server and PostgreSQL (using different tabs):
	rails server
	postgres -D /usr/local/var/postgres
	psql db/development
	rails console

##Deploying

######Deploy to Github and Heroku:
	sh shell/push.sh "Commit message goes here"

######Deploy AND dump the local DB to the Heroku DB:
	sh shell/push.sh "Commit message goes here" dump


##How I set up this project

######Run on command line:
	rails new PROJECT_NAME_HERE

######Add to Gemfile:
	gem 'devise', '~> 3.4.1'
	gem 'paperclip', '~> 4.3.1'
	gem 'bootstrap-sass', '3.2.0.0'

######Generate Devise MVC:
	bundle install
	rails generate devise:install
	rails generate devise User
	rails generate devise:controllers users
	rails generate devise:views user
	rails generate scaffold Dataset dataset_name:string description:text
	bundle exec rake db:migrate

######Add to config/environments/development.rb:
	config.action_mailer.default_url_options = { host: 'localhost', port: 3000 }

######Add to config/routes.rb:
	root "datasets#index"
  devise_for :users, controllers: { sessions: 'users/sessions' }

######Add to staticpages.scss:
	@import "bootstrap-sprockets";
	@import "bootstrap";

	@mixin box_sizing {
  	-moz-box-sizing: border-box;
  	-webkit-box-sizing: border-box;
  	box-sizing: border-box;
	}

	#container {
		padding: 1%;
	}

	.alert-notice {
		@extend .alert-success;
	}

	.alert-alert {
		@extend .alert-danger;
	}

	/* Debug */
	.debug_dump {
		clear: both;
		float: left;
		width: 100%;
		margin-top: 45px;
		@include box_sizing;
	}

######Change in user.rb model:
	devise :database_authenticatable, :rememberable, :trackable, :validatable, :timeoutable

######Close rails server by hitting Control-C. Then restart it:
	rails server

######Add debug information to application.html.erb:
	<%= debug params if Rails.env.development? %>
	<!-- <%= debug request if Rails.env.development? %> -->

######Add new user:
	rails console
	User.create(:email => 'email_here@example.com', :password => 'password_here', :password_confirmation => 'password_here')

######Set up PostgreSQL by pasting this in config/database.yml:
	development:
	  adapter: postgresql
	  encoding: unicode
	  database: db/development
	  pool: 5
	  timeout: 5000

	test:
	  adapter: postgresql
	  encoding: unicode
	  database: db/test
	  pool: 5
	  timeout: 5000

	production:
	  adapter: postgresql
	  encoding: unicode
	  database: db/production
	  pool: 5
	  timeout: 5000