setup:
		cp config/database.yml.example config/database.yml
		bin/setup

test:
		bin/rails test


.PHONY: test