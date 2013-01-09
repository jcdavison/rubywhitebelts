class MessagesController < ApplicationController

  before_filter :master_access?

  def new
    @message = Message.new
  end

  def create
    p params
    Rails.env == "production" ? UserMailer.notify_john(params[:message].deliver : nil
    redirect_to new_message_path
  end
end
