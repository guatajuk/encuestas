class Survey
  include Mongoid::Document
  field :name, type: String
  field :deadline, type: Date

  belongs_to :survey_type

end
