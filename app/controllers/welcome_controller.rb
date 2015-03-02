class WelcomeController < ApplicationController
  
  def index
  end

  def thanks
  	@name = params[:name]
  	@email = params[:email]
  end
  
  end
