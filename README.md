quienmanda.es
=============

### Install locally

 Rails 2.0 needed. You can install it using RVM:
 
    $ rvm get stable
    $ rvm install 2.0.0
    
 Postgres is used for the database. If developing in OS X Postgres.app is the easiest way to get Postgres installed. Then create a user `qm` and the database:
 
    $ createuser -s -h localhost qm
    $ createdb -O qm -h localhost qm_development
    $ createdb -O qm -h localhost qm_test
    
 Then install and run locally:
 
    $ git clone https://github.com/dcabo/quienmanda.es.git
    $ cd quienmanda.es
    $ bundle install
    $ rake db:migrate

### Deploying in Heroku

    $ heroku apps:create
    $ git push heroku master