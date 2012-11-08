class ChallengesController < ApplicationController

  def new
    @belt = Belt.find(params[:belt_id])
    @challenges = Belt.find(params[:belt_id]).challenges.all 
    @challenge = Challenge.new
  end

  def create

  end

  def index
    @belt = Belt.find(params[:belt_id])
    @challenges = Belt.find(params[:belt_id]).challenges.all 
  end

  def edit
    @belt = Belt.find(params[:belt_id])
    @challenges = Belt.find(params[:belt_id]).challenges.all 
    
  end

  def update

  end




end