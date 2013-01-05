class CompletionsController < ApplicationController
  respond_to :html, :json

  def new

  end

  def create
    @user = User.find(params[:user_id])    
    @belt = Belt.find(params[:belt_id])
    @challenge = Challenge.find(params[:challenge_id])    

    Completion.create(user_id: @user.id, challenge_id: @challenge.id, belt_id: @challenge.id)

    render :json => {
      :challenge_id => @challenge.id, :challenge_html => render_to_string(
        :partial => "layouts/challenge", :locals => { 
          :challenge => @challenge,
          :belt => @belt, 
          :user => @user 
        }
      ),
    }
  
  end

  def index
    @belt = Belt.find(params[:belt_id])
  end

  def edit
    
  end

  def update

  end

  def show

  end

end