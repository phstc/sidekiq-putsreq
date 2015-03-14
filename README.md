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

Open the [Sidekiq Bucket on PutsReq](http://putsreq.com/qX0hnwmzqGWit0sgimUG/inspect), click on Fork and copy "Your PutsReq URL" then:

```sh
heroku config:set BUCKET_URL=http://putsreq.com/<your token>
```

## Running tests

```sh
heroku ps:scale worker=0

heroku run bundle exec rake

heroku ps:scale worker=1
```

All done! Open your bucket on PutsReq and check the results!