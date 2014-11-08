class Survey
  include Mongoid::Document
  include Mongoid::Timestamps
  
  field :name, type: String
  field :deadline, type: Date

	validates_uniqueness_of :name
	validates_presence_of :name, :deadline

  has_many :questions
  belongs_to :survey_type

end
