setup:
		cp config/database.yml.example config/database.yml
		yarn install
		bin/setup
		rails db:seed

tests:
		bin/rails test

linter:
		bundle exec rubocop

linter-fix:
		bundle exec rubocop --auto-correct


.PHONY: install