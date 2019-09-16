module MessagesHelper
  def user_message(message)
    return User.find(message.user_id)
  end
end
