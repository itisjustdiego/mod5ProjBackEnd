class User < ActiveRecord::Base
  # has_many :sent_messages, foreign_key: 'message_id', class_name: 'Message', source: :sender
  # has_many :received_messages, foreign_key: 'receiver_id', class_name: 'Message', source: :receiver

  has_many :sent_messages, class_name: "Message", foreign_key: :sender_id
  has_many :received_messages, class_name: "Message", foreign_key: :receiver_id

  has_secure_password
end
