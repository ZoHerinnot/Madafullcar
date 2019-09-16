module ConversationsHelper
  def recipient_user(conversation)
    if conversation.sender_id == current_user.id
      return User.find(conversation.recipient_id)
    else
      return User.find(conversation.sender_id)
    end
  end
end
