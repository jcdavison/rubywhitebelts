class CompletionsController < ApplicationController
  respond_to :html, :json

  def new

  end

  def create
    
    Completion.create(user_id: current_user.id, challenge_id: params[:challenge_id])
    @belt = Belt.find(params[:belt_id])
    @challenge = Challenge.find(params[:challenge_id])
    @completions = @belt.challenges.collect do |item|
      current_user.completions.find_by_challenge_id(item.id).present?  
    end    
    
    
    render :json => {
      :challenge_id => @challenge.id,
      :challenge_html => render_to_string(:partial => "belts/challenge", :locals => { :challenge => @challenge, :belt => @belt, :completions => @completions }),

      :belt_progress => render_to_string(:partial => "belts/progress", :locals=> { :belt => @belt, :completions => @completions})
    }
    # render :json => {
    #   :belt_html => render_to_string(:partial => "belts/challenge", :locals => { :belt => @belt, :completions => @completions }, :formats => :html)
    # }
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