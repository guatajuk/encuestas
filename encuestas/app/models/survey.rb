class Survey
  include Mongoid::Document
  field :details, type: String
  field :deadline, type: Date
end
