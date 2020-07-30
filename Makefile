.PHONY: test

help:
	@echo
	@echo "======================================================================"
	@echo
	@echo "🛠  UTILS"
	@echo
	@echo "mig:        run migrations"
	@echo "srv:        run dev server"
	@echo "ind:        open index page"
	@echo "test:       run tests"
	@echo "todo:       view all todos"
	@echo
	@echo "📦 DEPENDENCIES"
	@echo
	@echo "env:        show environment info"
	@echo "deps:       list prod dependencies"
	@echo "freeze:     convert lockfile to requirements.txt"
	@echo
	@echo "======================================================================"
	@echo

#
# 🛠 UTILS
#

mig:
	poetry run python manage.py migrate

srv:
	poetry run python manage.py runserver

ind:
	open http://localhost:8000

test:
	poetry run python manage.py test

todo:
	rg -i -B 3 -A 3 todo *.py

#
# 📦 DEPENDENCIES
#

env:
	poetry env info

deps:
	poetry show --tree --no-dev

freeze:
	poetry export -f requirements.txt > requirements.txt
