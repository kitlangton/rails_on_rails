# [Rails on Rails](https://damp-tundra-99936.herokuapp.com/stop/107<Paste>) (It's on a free Heroku tier, so don't be afraid to nudge it a few times)

## The 8 Hour Challenge

The backend / frontend for a NJ Transit geolocation enabled departure & arrival time app. Created from 11AM to 7:30 PM on Wednesday March 23rd, 2016 for the [Viking Code School](http://www.vikingcodeschool.com).

### Stack

- [Ember Frontend](https://github.com/kitlangton/rails_frontend)
- Rails 5 beta 3 --api Backend
- [JSONAPI::Resources](https://github.com/cerebris/jsonapi-resources)
- Postgres

### Features

Since we were only given 8 hours to do this (including writing this README), I may count certain things as features which might otherwise be questionable:

1. It works!
2. The Database is full of data. (see Data section)
3. Ember frontend geolocates the user, and defaults origin to closest stop upon success.
4. Not horribly ugly. Just enough time for bootstrap sass.
5. Was successfully able to restrain my desire to style the shit out of the frontend.
6. Passing tests! (Don't count them)
7. A complimentary rake task (see Data section)

### Data

Data was gathered from the NJ Transit developer resources... which is actually just a zipped folder full of txt files.

There is a rake task `rake import:data` which sucks all the data into the postgresql backend.
