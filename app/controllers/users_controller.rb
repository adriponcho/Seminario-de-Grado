class UsersController < ApplicationController
  def index
    @users = User.all
  end

  def show_user
    @user = User.find(params[:id])
  end

  def new
    @user = User.new
  end

  def edit
    @user = User.find(params[:id])
  end

  def create
    @user = User.new(params[:user])
    @user.save
    redirect_to users_path
  end

  def update
    @user = User.find(params[:id])
    @user.update_attributes(params[:user])
    redirect_to show_user_path(@user)
  end

  def destroy_user
    @user = User.find(params[:id])
    @user.destroy
    redirect_to users_path
  end
end
