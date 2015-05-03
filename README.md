# Friend in Need backend

Ruby / rails applaition


## Start your database

make sure you have postgres running... i suggest using PostgressApp [http://postgresapp.com/](http://postgresapp.com/)

## Running Locally

Make sure you have Ruby installed.  Also, install the [Heroku Toolbelt](https://toolbelt.heroku.com/).

```sh
$ git clone git@github.com:JonathanMatthey/friend-in-need.git
$ cd friend-in-need
$ bundle install
$ rake db:create db:migrate
$ foreman start web
```

Your app should now be running on [localhost:5000](http://localhost:5000/).

## Deploying to Heroku

```sh
$ heroku create
$ git push heroku master
$ heroku run rake db:migrate
$ heroku open
```

## Documentation

For more information about using Ruby on Heroku, see these Dev Center articles:

- [Ruby on Heroku](https://devcenter.heroku.com/categories/ruby)


## App main routes

Homepage, landing page - [http://localhost:5000/](http://localhost:5000/)
Login - [http://localhost:5000/login.html](http://localhost:5000/login.html)
Admin page that lists all sightings - [http://localhost:5000/sightings](http://localhost:5000/sightings)

##### API
Read all sightings - json - [http://localhost:5000/api/sightings](http://localhost:5000/api/sightings)


create a new sighting using ajax json like this:
```
$.ajax({
  type: "POST",
  url: "/api/sightings",
  data: {"sighting":{'name':'dave','lat':40.6184703272875,'long':-73.9314422416687}},
  success: function(){alert('yay')},
  dataType: "json"
});
```