class AnswerForm
  include Mongoid::Document
  include Mongoid::Timestamps

  resourcify

  field :details, type: String

  has_and_belongs_to_many :users
  belongs_to :survey
  belongs_to :course

  #attr_accessor :survey
  accepts_nested_attributes_for :survey
	
end