class WelcomeController < ApplicationController
  def index
    render text: "Welcome #{current_user.username}, it's #{Time.now}"
  end
end
