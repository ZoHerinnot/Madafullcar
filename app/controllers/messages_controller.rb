class MessagesController < ApplicationController
  before_action :authenticate_user!
  before_action do
    @conversation = Conversation.find(params[:conversation_id])
  end
  include MessagesHelper

  def index
    @messages = @conversation.messages
    if @conversation.sender_id != current_user.id
      ssmmss = @messages.where(user_id:@conversation.sender_id)
      ssmmss.each do |sms|
        tmp = sms 
        tmp.read = true
        tmp.save
      end
    end
    if @conversation.recipient_id != current_user.id
      ssmmss = @messages.where(user_id:@conversation.recipient_id)
      ssmmss.each do |sms|
        tmp = sms 
        tmp.read = true
        tmp.save
      end
    end
    @message = @conversation.messages.new
  end
  def create
    params_value = params.require(:message).permit(:content, :user_id)
    @message = @conversation.messages.new(params_value)
    		if @message.save    
					respond_to do |format|  
            format.html {redirect_to conversation_messages_path(@conversation)}
            format.js { }
          end
        end
  end

  def destroy
    @messages = Message.where(conversation_id:params[:conversation_id])
    @messages.destroy_all
    redirect_back fallback_location: '/', allow_other_host: false
  end

end
