class BeltsController < ApplicationController

  before_filter :user_access?, :except => [:index, :show]
  before_filter :admin_access?, :only => [:new, :create, :edit, :update, :destroy]

  def index
    @belts = Belt.all
  end

  def show

  end

  def new
    @belt = Belt.new
  end

  def create
    @belt = Belt.new(params[:belt])
    if @belt.save
      flash[:success] = "#{@belt.title} added"
      redirect_to edit_belt_path(@belt)
    else
      flash[:alert] = "something went wrong"
      redirect_to :back
    end
  end

  def edit
    p "edit controller triggered"
    @belt = Belt.find(params[:id])
    challenge = @belt.challenges.build  
  end

  def update    
    @belt = Belt.find(params[:id])
    @belt.update_attributes(params[:belt])
    redirect_to edit_belt_path(@belt)
  end

  def destroy
    @belt = Belt.find(params[:id])
    if @belt.destroy
      flash[:success] = "#{@belt.title} destroyed"
      redirect_to belts_path
    else
      flash[:alert] = "#{@belt.title} not destroyed"
    end
  end

end