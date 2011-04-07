class MicropostsController < ApplicationController
  before_filter :authenticate, :only => [:create, :destroy]
  
  def create
    
  end
  
  def destroy
    
  end
end