# SplashController handles the display of the splash page.
class SplashController < ApplicationController
  # before_action :authenticate_user!

  def index
    @app_name = 'Budget App'
    @tagline = 'Track and manage your expenses effortlessly.'
    @cta_login = 'Log In'
    @cta_signup = 'Sign Up'
  end
end
