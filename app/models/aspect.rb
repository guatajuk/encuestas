class Aspect
  include Mongoid::Document
  include Mongoid::Timestamps
  include Mongoid::Slug

  resourcify

  field :name, type: String

  validates_uniqueness_of :name
  validates_presence_of :name

  has_many :questions

  slug :name, :history => true
  
end