class PagesController < ApplicationController
  
  
  def about
    @title = "Ruby on Rails Tutorial Sample App | About"
  end
  
  def home
    @title = "Ruby on Rails Tutorial Sample App | Home"
  end

  def contact
    @title = "Ruby on Rails Tutorial Sample App | Contact"
  end


end
