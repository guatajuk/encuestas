class AnswerForm
  include Mongoid::Document
  include Mongoid::Timestamps

  field :details, type: String

  has_and_belongs_to_many :users
  has_one :course
	belongs_to :survey

end