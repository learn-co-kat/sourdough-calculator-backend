class UserSerializer < ActiveModel::Serializer
  attributes :id, :email, :password
  has_many :bakes

  ActiveModelSerializers.config.default_includes = '**'

end
