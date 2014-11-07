class Survey
  include Mongoid::Document
  include Mongoid::Timestamps
  field :name, type: String
  field :deadline, type: Date

  has_many :questions
  belongs_to :survey_type

end
