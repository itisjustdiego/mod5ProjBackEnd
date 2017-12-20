class UserSerializer < ActiveModel::Serializer
  attributes :username, :zipcode, :main_character, :skill
  has_many :messages
end
