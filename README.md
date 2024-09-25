# README

This repository runs https://geaccirc.princeton.edu/ and https://geaccirc-staging.princeton.edu/. The staging environment is only available on VPN.

## Requirements

  * Bundler 2.4.5
  * Ruby 3.1.5
  * Rails 7.1.4

## Deployment

  This application is deployed via capistrano. Locally for example `cap production deploy` or `BRANCH=name cap production deploy`

## Local set up

  1. Bundle install

     ```
     bundle install
     ```
  1. create the database

     ```
     bundle exec rake db:create
     bundle exec rake db:migrate
     ```
  1. load the database (must be on VPN)'

     ```
     scp  deploy@geaccirc1.princeton.edu:circ_updated.txt .
     bundle exec rake db:seed
     ```
## Run the tests

  The test are run via rspec:

```
bundle exec rspec
```
