class UserSerializer < ActiveModel::Serializer
  attributes :username, :zipcode, :main_character, :skill, :lat, :lng
  has_many :messages
end
