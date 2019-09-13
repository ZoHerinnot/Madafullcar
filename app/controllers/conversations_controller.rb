class ConversationsController < ApplicationController
  before_action :authenticate_user!
  
  def index #liste de tous les contactes
    @users = User.all
    @conversations = Conversation.all
  end

  def create #crée un nouvelle discution
    if current_user.sent_conversations.empty? && current_user.received_conversations.empty?
      @conversation = Conversation.create(sender_id:current_user.id,recipient_id:10)
    else
      unless current_user.sent_conversations.empty?
        @conversation = current_user.sent_conversations[0]
      end
      unless current_user.received_conversations.empty?
        @conversation = current_user.received_conversations[0]
      end
    end
    redirect_to conversation_messages_path(@conversation)
  end

end
