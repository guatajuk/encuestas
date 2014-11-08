class Question
  include Mongoid::Document
  include Mongoid::Timestamps

  field :item, type: String
  field :aspect, type: String

  validates_uniqueness_of :item
  validates_presence_of :item, :aspect

  belongs_to :survey

end
