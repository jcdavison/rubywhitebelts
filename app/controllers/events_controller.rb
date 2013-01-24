class EventsController < ApplicationController

  def index
    # @events = Event.all
    @events = Event.find(:all, :conditions => ["date between ? and ?", Time.now - 6.hours, Time.now + 3.weeks])
  end

  def create
    @event = Event.new(params[:event])
    if @event.save
      flash[:success] = "new event created"
      redirect_to events_path
    else
      redirect_to :back
    end
  end

  def new
    @event = Event.new
  end

  def edit

  end

  def update

  end

  def destroy
    Event.find(params[:id]).destroy
    flash[:succes] = "event destroyed"
    redirect_to events_path
  end

end
