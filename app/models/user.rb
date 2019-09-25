class User < ApplicationRecord
  after_create :welcome_send
  
  #relation on create
  devise :database_authenticatable, :registerable, :omniauthable, 
     :recoverable, :rememberable, :trackable, 
     :omniauth_providers => [:facebook, :google_oauth2]

  has_one_attached :avatar
  #relation for likes cars
  has_many :likes, dependent: :destroy
  #relation for comments
  has_many :comments, dependent: :destroy
  has_many :answers, dependent: :destroy
  #relation for cars
  has_many :cars
  #relation for messages
  has_many :sent_conversations, foreign_key: 'sender_id', class_name: "Conversation", dependent: :destroy
  has_many :received_conversations, foreign_key: 'recipient_id', class_name: "Conversation", dependent: :destroy
  #relation of abonnement
  has_one :premium
  has_one :gold
  has_many :user_provider, :dependent => :destroy
  def welcome_send #message de bienvenu a chaque nouvelle utilisateur inscrit
    UserMailer.welcome_email(self).deliver_now
  end

end
