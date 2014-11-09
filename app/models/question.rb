class Question
  include Mongoid::Document
  include Mongoid::Timestamps

  resourcify

  field :item, type: String

  validates_uniqueness_of :item
  validates_presence_of :item, :aspect

  belongs_to :aspect
  belongs_to :survey

end
