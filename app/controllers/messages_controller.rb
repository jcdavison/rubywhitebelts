class MessagesController < ApplicationController

  before_filter :master_access?

  def new
    @message = Message.new
  end

  def create
    @message = Message.create(params[:message])
    Rails.env == "production" ? UserMailer.notify_john(@message).deliver : nil
    redirect_to new_message_path
  end
end
