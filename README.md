# what is this?

App from chapter 3 of [Django for Beginners](https://djangoforbeginners.com/).

# how to use?

dependencies

* install Poetry
* install dependencies: `poetry install`

deployment

* install Homebrew
* install Heroku CLI: `brew install heroku/brew/heroku`
* create Heroku account
* create Heroku app: `heroku create`
* config Django for Heroku: `heroku config:set DISABLE_COLLECTSTATIC=1`
* push repo to Heroku: `git push heroku master`
* start app: `heroku ps:scale web=1`
* visit app: `heroku open`
* stop app: `heroku ps:scale web=0`

`Makefile` for local dev

```Makefile
======================================================================

🛠  UTILS

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
