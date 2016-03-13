class SessionsController < ApplicationController
  def new
    if !current_user.nil?
      redirect_to current_user
    end
  end
  
  def create
  	user = User.find_by(email:params[:session][:email].downcase)
  	if user && user.authenticate(params[:session][:password])
  		log_in user
      remember user
  	  redirect_back_or user

  	else
  		flash.now[:danger] = 'Invalid email/password combination' # Not quite right!
  		render 'new'
  end

end

  def destroy
    logout
    redirect_to root_path
  end
end
