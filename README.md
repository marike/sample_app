This is the Rails 3 sample_app from Michael Hartl's book, Ruby on Rails 3 Tutorial.  I have been using Devise for authentication on many projects, but I wanted to learn how to do authentication in Rails 3 from scratch so here I am.  Whenever I do a tutorial, I like to keep a record of important terminal commands to reference in future projects, and I usually use part of the README file for this purpose.  

Chapter 3 - Start a new Rails 3 project
========================================
* $ rails new sample_app -T
* $ cd sample_app/
* $ m .
* $ bundle install

Create rspec directory:
========================================
* $ rails generate rspec:install
* $ rm public/index.html
* $ git checkout -b static-pages
* $ rails g controller Pages home contact


* forgot to add haml-rails, and haml:
Add to Gemfile:
gem 'haml', '3.0.21'
gem 'haml-rails', '0.3.1'

* $ bundle install