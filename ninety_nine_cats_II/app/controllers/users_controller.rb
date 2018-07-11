class UsersController < ApplicationController
  
  def new 
      @user = User.new
      render :new 
  end 
  
  def create 
    @user = User.new(user_params)
    if @user.save 
      login(@user)
      redirect_to session_url(@user)
    else 
      render json: @user.errors.full_messages, status: 422
    end 
  end 
  
end 