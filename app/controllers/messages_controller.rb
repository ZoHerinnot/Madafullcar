class MessagesController < ApplicationController
  before_action :authenticate_user!
  before_action do
    @conversation = Conversation.find(params[:conversation_id])
  end
  include MessagesHelper

  def index
    @messages = @conversation.messages
    if @messages.last
      if @messages.last.user_id != current_user.id
        @messages.last.read = true;
      end
    end
    @message = @conversation.messages.new
  end
  def create
    @conversations = Conversation.where(conversation_id:params[:conversation_id])
    params_value = params.require(:message).permit(:content, :user_id)
    @message = @conversation.messages.new(params_value)
        respond_to do |format|
          if @message.save
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
