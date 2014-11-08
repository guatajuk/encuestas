class Aspect
  include Mongoid::Document
  include Mongoid::Timestamps

  field :name, type: String

  validates_uniqueness_of :name
  validates_presence_of :name

  belongs_to :question

end
