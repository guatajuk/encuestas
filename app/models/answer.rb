class Answer
  include Mongoid::Document
  include Mongoid::Timestamps

  field :answerField, type: String

  validates_inclusion_of :answerField, :in => ["E", "B", "R", "M"]

  belongs_to :question

end