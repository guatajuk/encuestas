class SurveyType
  include Mongoid::Document
  field :name, type: String
  
  has_many :surveys
end
