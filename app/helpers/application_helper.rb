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
end
