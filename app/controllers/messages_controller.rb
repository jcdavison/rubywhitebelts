class MessagesController < ApplicationController

  before_filter :master_access?

  def new
    @message = Message.new
  end

  def create
    @message = Message.create(params[:message])
    if Rails.env == "production"
      User.all.each do |user|
        UserMailer.message_user( user, @message).deliver
      end
    end
    redirect_to new_message_path
  end
end
