COMMIT_MESSAGE=$1
DUMP_DB=$2


# Current time
now="$(date +'%Y%m%d%s')"

# Push to Github
git add .
git commit -m "$COMMIT_MESSAGE"
git push

# Push to Heroku
git push master heroku

if [ "$DUMP_DB" == "dump" ]
then
	# Create dump file
	pg_dump -Fc --no-acl --no-owner -h localhost db/development > db/dumps/gadatabases_$now.dump

	# Push dump file to FTP server
	ruby shell/ftp-upload.rb

	# Upload to Heroku
	heroku pg:backups restore 'http://files.gazlab.com/content-host/db_dumps/gadatabases_'$now'.dump' DATABASE_URL
fi