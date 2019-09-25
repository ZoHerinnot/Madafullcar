module ApplicationHelper
		def gold?
			User.find(current_user.id).gold != nil
		end
		def abonne_gold
			current_user.id == User.find(current_user.id).gold.user_id
		end
		def premium?
			User.find(current_user.id).premium != nil
		end
		def abonne_premium
			current_user.id == User.find(current_user.id).premium.user_id
		end

		def count_messages(user)
			testboolean = 0
			conversation1 = Conversation.where(sender_id:user.id)
			conversation2 = Conversation.where(recipient_id:user.id)
	  	conversation1.each do |c|
	  		sms = c.messages.where(user_id: c.recipient_id)
	  		if sms.where(read:false).count != 0	
	  			testboolean = 1	
	  		end
	  	end
	  	conversation2.each do |c|
	  		sms2 = c.messages.where(user_id: c.sender_id)
	  		if sms2.where(read:false).count != 0	
	  			testboolean = 1
	  		end
	  	end
	  	return testboolean
  	end
end
