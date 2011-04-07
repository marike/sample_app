class ApplicationController < ActionController::Base
  protect_from_forgery
  # allow helper methods to be available to views
  include SessionsHelper
end
