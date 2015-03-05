class UsersController < ApplicationController
  
  def search	
  end

  def search_results
  	
  	result = SignUp.where(name: params[:name])

  	@results_name = result.name
  	@results_email = "boo"
  end

  def create

  	user = SignUp.new params.permit(:name, :email)

  	user.save

  	redirect_to "/thanks?name=#{user.name}&email=#{user.email}"
  end

  def thanks
  	@name = params[:name]
  	@email = params[:email]

  end

end
