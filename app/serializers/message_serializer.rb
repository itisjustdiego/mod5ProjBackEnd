class MessageSerializer < ActiveModel::Serializer
  attributes :sender_id, :receiver_id, :content

end
