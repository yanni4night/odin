default:
	@echo 'make [remote|push|subpush|subpull]'
remote:
	git remote add -f viewport git@github.com:yanni4night/odin-solution-viewport.git
	git remote add -f media-query git@github.com:yanni4night/odin-solution-media-query.git
	git remote add -f font git@github.com:yanni4night/odin-solution-font.git
push:
	git push origin master
subpush:
	git subtree push --prefix=solutions/viewport viewport master
	git subtree push --prefix=solutions/media-query media-query master
	git subtree push --prefix=solutions/font font master
subpull:
	git subtree pull --prefix=solutions/viewport viewport master
	git subtree pull --prefix=solutions/media-query media-query master
	git subtree pull --prefix=solutions/font font master