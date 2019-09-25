class ConversationsController < ApplicationController
  before_action :authenticate_user!
  include ConversationsHelper

  def index #liste de tous les contactes

    puts "*" * 60
    puts "INDEX AN'LE CONVERSATION"

    puts params.inspect

    puts "*" * 60

    @users = User.all
    @conversations = Conversation.all
    @user = [] 
    @users.each do |user|
      if (user.last_name == params[:last_name]) || (user.first_name == params[:last_name])
        @user << user
      end
    end
  end

  def show
    @conversation = Conversation.find(params[:conversation_id])
    @messages = @conversation.messages.new
  end

  def create #crée un nouvelle discution || Trouver la conversation existant

    if Conversation.where(sender_id:current_user.id,recipient_id:params[:recipient_id]).empty?
      if Conversation.where(sender_id:params[:recipient_id],recipient_id:current_user.id).empty?
        @conversation = Conversation.create(sender_id:current_user.id,recipient_id:params[:recipient_id])
      else
        @conversation = Conversation.find_by(sender_id:params[:recipient_id],recipient_id:current_user.id)
      end
    else
      @conversation = Conversation.find_by(sender_id:current_user.id,recipient_id:params[:recipient_id])
    end
    redirect_to conversation_messages_path(@conversation)
  end

  def destroy
    @conversation = Conversation.find(params[:id])
    @conversation.destroy
    redirect_to conversations_path
  end

end
