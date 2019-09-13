class MessagesController < ApplicationController
  before_action :authenticate_user!
  before_action do
    @conversation = Conversation.find(params[:conversation_id])
  end

  def index
    @messages = @conversation.messages
    if @messages.last
      if @messages.last.user_id != current_user.id
        @messages.last.read = true;
      end
    end
    @message = @conversation.messages.new
  end

  def new
    @message = @conversation.messages.new
  end

  def create
    params_value = params.require(:message).permit(:content, :user_id)
    @message = @conversation.messages.new(params_value)
    if @message.save
      redirect_to conversation_messages_path(@conversation)
    end
  end

end
