class EventsController < ApplicationController

  def index
    # @events = Event.all
    @events = Event.find(:all, :conditions => ["date between ? and ?", Time.now - 6.hours, Time.now + 3.weeks])
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
