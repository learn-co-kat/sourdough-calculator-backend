class UserSerializer < ActiveModel::Serializer
  attributes :id, :email, :password
  has_many :bakes
  # has_many :notes, through: :bakes
  ActiveModelSerializers.config.default_includes = '**'

  # def bakes
  #   self.object.bakes.map do |bake|
  #     {name: bake.name,
  #       total_flour_g: bake.total_flour_g,
  #       total_flour_p: bake.total_flour_p,
  #       water_g: bake.water_g,
  #       water_p: bake.water_p,
  #       salt_g: bake.salt_g,
  #       salt_p: bake.salt_p,
  #       leaven_g: bake.leaven_g,
  #       leaven_p: bake.leaven_p,
  #       hydration: bake.hydration,
  #       rating: bake.rating,
  #       date: bake.date
  #     }
  #   end 
  # end 

end
