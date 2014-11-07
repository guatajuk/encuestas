class SurveyType
  include Mongoid::Document
  include Mongoid::Timestamps
  field :name, type: String
  
  has_many :surveys
end
