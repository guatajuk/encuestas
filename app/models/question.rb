class Question
  include Mongoid::Document
  include Mongoid::Timestamps

  resourcify

  field :item, type: String

  validates_uniqueness_of :item, :scope => :aspect
  validates_presence_of :item, :aspect
  has_many :answers

  belongs_to :aspect
  belongs_to :survey

end
