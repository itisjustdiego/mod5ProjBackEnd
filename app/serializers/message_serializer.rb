class MessageSerializer < ActiveModel::Serializer
  attributes :user, :content
  def user
    object.user
  end
end
