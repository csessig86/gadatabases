COMMIT_MESSAGE=$1

function pushToGitHub() {
	git add .
	git commit -m $COMMIT_MESSAGE
	git push

	pushToHeroku
}

function pushToHeroku() {
	git push master heroku
}

pushToGitHub