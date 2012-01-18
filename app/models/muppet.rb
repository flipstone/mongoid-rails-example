class Muppet
  include Mongoid::Document

  field :name, type: String

  def to_s
    name
  end
end
