class AnswerForm
  include Mongoid::Document
  include Mongoid::Timestamp

  field :details, type: String

  has_and_belongs_to_many :users
	belongs_to :survey

end
