class User < ApplicationRecord
  after_create :welcome_send
  has_many :cars

  has_many :sent_conversations, foreign_key: 'sender_id', class_name: "Conversation"
  has_many :received_conversations, foreign_key: 'recipient_id', class_name: "Conversation"

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  def welcome_send #message de bienvenu a chaque nouvelle utilisateur inscrit
    UserMailer.welcome_email(self).deliver_now
  end

end
