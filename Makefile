setup:
		cp config/database.yml.example config/database.yml
		bin/setup
		rails db:seed

test:
		bin/rails test

linter:
		bundle exec rubocop

linter-fix:
		bundle exec rubocop --auto-correct


.PHONY: test