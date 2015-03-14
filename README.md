## Installation instructions

```sh
git clone git@github.com:phstc/sidekiq-putsreq.git

cd sidekiq-putsreq
```

Assuming you have [heroku toolbelt](https://toolbelt.heroku.com/) installed:

```sh
heroku create

git push heroku master

heroku addons:add redistogo

heroku config:set REDIS_PROVIDER=REDISTOGO_URL
```

## Running tests

```sh
heroku ps:scale worker=0

heroku run bundle exec rake

heroku ps:scale worker=1
```

Perfect! Now you can probably see your messages hitting PutsReq: [http://putsreq.com/qX0hnwmzqGWit0sgimUG/inspect](http://putsreq.com/qX0hnwmzqGWit0sgimUG/inspect).

But I would recommend you to create your own PutsReq bucket, with that you will be able to "Clear History" and get the "From first to last" result more precisely.

In order to do that, you need to change the PutsReq URL here: [https://github.com/phstc/sidekiq-putsreq/blob/master/test_worker.rb#L8](https://github.com/phstc/sidekiq-putsreq/blob/master/test_worker.rb#L8).

Then deploy your change:

```sh
git commit -m "Use my PutsReq bucket"

git push heroku master
```

Then execute the steps detailed in "Running tests" again.