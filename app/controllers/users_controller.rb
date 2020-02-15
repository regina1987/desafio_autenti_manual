class UsersController < ApplicationController
before_action :user_params, only: [:create]
 def new
   @user = User.new
 end

  def create
  @user=User.new(set_params)
    session[:user_id] = @user.id
    @user.save
redirect_to new_session_path, notice: "Felicitaciones con registracion. icicia session"

  end

private
def user_params
  params.require(:user).permit(:name, :password, :email)

end

end
