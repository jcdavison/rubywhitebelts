class BeltsController < ApplicationController

  before_filter :user_access?, :except => [:index, :show]
  before_filter :admin_access?, :only => [:new, :create, :edit, :update, :destroy]

  def index
    p "index is getting triggered"
    @belts = Belt.all
    p "index is getting finished"
  end

  def show
    @belt = Belt.find(params[:id])
    @challenges = Belt.find(params[:id]).challenges
    @completions = @challenges.collect do |challenge|
      current_user.completions.find_by_description(challenge.description).present?  
    end    
  end

  def new
    @belt = Belt.new
  end

  def create
    if params[:join_belt]
      @belt = Belt.find(params[:join_belt][:belt_id])
      User.find(current_user.id).belts << @belt
      flash[:success] = "You've joined the #{params[:join_belt][:title]} belt!"
      redirect_to belt_path(@belt)
      else
        @belt = Belt.new(params[:belt])
        if @belt.save
          flash[:success] = "#{@belt.title} added"
          redirect_to edit_belt_path(@belt)
        else
          flash[:alert] = "something went wrong"
          redirect_to :back
        end
    end
  end

  def edit
    p "edit controller triggered"
    @belt = Belt.find(params[:id])
    challenge = @belt.challenges.build  
  end

  def update
    p "update controller triggered"
    p params
    p params[:id]    
    @belt = Belt.find(params[:id])
    p "update_attributes"
    p @belt.update_attributes(params[:belt])
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