class Muppet
  include Mongoid::Document

  field :name, type: String
  field :color, type: String
  field :city, type: String

  def to_s
    name
  end
end
