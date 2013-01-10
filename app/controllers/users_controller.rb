class UsersController < ApplicationController
  
  before_filter :user_access?
  before_filter :admin_access?, :only => [:new, :create, :edit, :update, :destroy]

  def index
    @users = User.order("first_name ASC")
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])
  end

  def show
    @user = User.find(params[:id])
  end
  
end