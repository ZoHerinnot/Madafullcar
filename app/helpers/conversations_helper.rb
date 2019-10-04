module ConversationsHelper
  def recipient_user(conversation)
    if conversation.sender_id == current_user.id
      return User.find(conversation.recipient_id)
    else
      return User.find(conversation.sender_id)
    end
  end
  def count_sms(conversation)
  	if conversation.sender_id != current_user.id
      sms2 = conversation.messages.where(user_id: conversation.sender_id)
  		return sms2.where(read:false).count
  	else
    	sms2 = conversation.messages.where(user_id: conversation.recipient_id)
  		return sms2.where(read:false).count  
    end
  end
end
