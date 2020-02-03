class UserSerializer < ActiveModel::Serializer
  attributes :id, :email, :password, :bakes

  def bakes
    self.object.bakes.map do |bake|
      {name: bake.name}
  end 
end
