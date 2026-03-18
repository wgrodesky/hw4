class UsersController < ApplicationController
  def new
  end

  def create
    @user = User.new
    @user["username"] = params["username"]
    @user["email"] = params["email"]
    @user["password"] = BCrypt::Password.create(params["password"])
    if @user.save
      redirect_to "/login"
    else
      flash["notice"] = "Signup failed. Please try again."
      redirect_to "/signup"
    end
  end
end
