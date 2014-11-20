class Answer
  include Mongoid::Document
  include Mongoid::Timestamps

  field :answerField, type: String

  belongs_to :question

end