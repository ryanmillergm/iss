# README

This is a single page app (SPA) that consumes and displays the International Space Station API. This app shows three options to allow the user to obtain information about the ISS location currently, when it will pass over a location and details on individuals in space.

To install:
 - `clone this repo`
 - `$bundle`
 - `$bundle exec figaro install`

 * Database creation
 - `$bundle exec rails db:create`

 * Database initialization
 - `$bundle exec rails db:migrate`

 * How to run the test suite
 - `$bundle exec rspec`

 - Add your own API keys to `config/application.yml`:
 ```yml
 GOOGLE_MAPS_API_KEY: <your google maps API key>

 ```

* Ruby version
  - ruby 2.4.1p111

* System dependencies
  - gem 'rspec', '~> 3.9'
  - gem 'capybara', '~> 3.32', '>= 3.32.1'
  - gem 'launchy', '~> 2.5'
  - gem 'pry', '~> 0.13.1'
  - gem 'simplecov', '~> 0.18.5'
  - gem 'figaro', '~> 1.1', '>= 1.1.1'
  - gem 'faraday', '~> 1.0', '>= 1.0.1'


* Deployment instructions
 - `$git push heroku master`
 - Add ENV variables with `$heroku config:set <KEY>=<value>`
