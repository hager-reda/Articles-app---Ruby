class UsersController < ApplicationController
	def index
        @users = User.all
    end
  def new
  	@user = User.new 
  end
  def create
    @user = User.new(user_params)
    if @user.save
      flash[:notice] = "You signed up successfully"
      flash[:color]= "valid"
    else
      flash[:notice] = "Form is invalid"
      flash[:color]= "invalid"
    end
    render "new"
  end
 private
    def user_params
    params.require(:user).permit(:username, :email, :encrypted_password, :salt)
    end

end
