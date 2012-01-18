class Muppet
  include Mongoid::Document

  field :name, type: String
  field :color, type: String
  field :location, type: String, default: -> { read_attribute :city }

  def to_s
    name
  end
end
