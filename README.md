# what is this?

App from chapter 3 of [Django for Beginners](https://djangoforbeginners.com/).

## run locally

* install dependencies: `poetry install`
* run migrations: `make mig`
* start dev server: `make srv`

```Makefile
======================================================================

🛠  UTILS

mig:        run migrations
srv:        run dev server
ind:        open index page
test:       run tests
todo:       view all todos

📦 DEPENDENCIES

env:        show environment info
deps:       list prod dependencies
freeze:     convert lockfile to requirements.txt

======================================================================
```

## deploy to Heroku

* install Heroku CLI: `brew install heroku/brew/heroku`
* create Heroku account
* create Heroku app: `heroku create`
* config Django for Heroku: `heroku config:set DISABLE_COLLECTSTATIC=1`
* push repo to Heroku: `git push heroku master`
* start app: `heroku ps:scale web=1`
* visit app: `heroku open`
* stop app: `heroku ps:scale web=0`
