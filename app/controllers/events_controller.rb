class EventsController < ApplicationController

  def index
    # @events = Event.all
    @events = Event.find(:all, :conditions => ["date between ? and ?", Time.now, Time.now + 3.weeks])
  end

  def create

  end

  def new
  end

  def edit

  end

  def update

  end

  def destroy

  end

end
