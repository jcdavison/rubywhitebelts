class RsvpsController < ApplicationController

  def create
    @rsvp = Rsvp.new(user_id: current_user.id, event_id: params[:new_rsvp_event_id])
    if @rsvp.save
      flash[:success] = "Thanks for RSVPing"
      redirect_to events_path
    else
      redirect_to :back, :alert => "Something went wrong"
    end
  end

  def destroy
    p params
    @rsvp = Rsvp.find(params[:id])
    @rsvp.destroy
    flash[:success] = "Thanks for cancelling your RSVP"
    redirect_to events_path
  end

end
