class SplashController < ApplicationController
    def index
      @app_name = 'Your Budget App'
      @tagline = 'Track and manage your expenses effortlessly.'
      @cta_signup = 'Sign Up'
      @cta_login = 'Log In'
    end
end
  