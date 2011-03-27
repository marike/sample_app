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
Have been using unicorn a lot lately so, while the book uses Webrick, I will use unicorn and run tail in another terminal
Start unicorn server:
* $ unicorn_rails
* $ tail -f log/development.log


Spork
=====

Add gem 'spork' to Gemfile:

* $ bundle install
* $ spork --bootstrap

Before Spork:
[ markusarike@macbook ~/Documents/rails3/sample_app ]$ time rspec spec/
..

Finished in 0.10247 seconds
2 examples, 0 failures

real	0m9.002s
user	0m7.588s
sys	0m1.329s

* $ spork 
=> Using RSpec
=> Loading Spork.prefork block...
=> Spork is ready and listening on 8989!

In another terminal window:

* $ time rspec --drb spec/
..

Finished in 0.23222 seconds
2 examples, 0 failures

real	0m6.521s
user	0m0.858s
sys	0m0.278s

Add to .rspec file in RAILS_ROOT directory:
--colour
--drb

* Removed spork from testing stack as tests that should pass are failing, unless I restart.  

Chapter 4
========

Add Blueprint CSS framework:

$ cp -r ~/Downloads/joshuaclayton-blueprint-css-5d113e9/blueprint public/stylesheets

Skip Ruby review and move to chapter 5

Chapter 5  Filling in the Layout
=========

* split layout up using partials

Integration Tests:

$ rails g integration_test layout_links









