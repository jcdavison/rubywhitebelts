class MessagesController < ApplicationController

  before_filter :master_access?

  def new
    @message = Message.new
  end

  def create
    @message = Message.create(params[:message])
    if Rails.env == "production"
      User.find_all_by_email("johncdavison@gmail.com").each do |user|
        UserMailer.message_user(user,@message.title)
      end
    end
    redirect_to new_message_path
  end
end
