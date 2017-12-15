class UserSerializer < ActiveModel::Serializer
  attributes :username, :zipcode, :main_character, :skill, :password
  has_many :messages
end
