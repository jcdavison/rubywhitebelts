class ChallengesController < ApplicationController

  respond_to :html, :json

  def new

  end

  def create

  end

  def index
    
  end

  def edit
    p "index controller triggered"
    respond_with do |format|
      format.json{
        render :json => {
          :key1 => "this shit is working"
        }
      }
    end
  end

  def update

  end

end