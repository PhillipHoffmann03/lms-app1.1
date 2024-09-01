class User < ApplicationRecord
    # enum role: { admin: 0, teacher: 1, student: 2, parent: 3 }
  
    has_one :admin
    has_one :teacher
    has_one :student
    has_one :parent
  
    has_many :notifications
    has_many :messages, foreign_key: :sender_id
    has_many :received_messages, class_name: 'Message', foreign_key: :recipient_id
  
    belongs_to :profile, polymorphic: true
  end
  