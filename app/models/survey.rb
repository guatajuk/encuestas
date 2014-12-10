class Survey
  include Mongoid::Document
  include Mongoid::Timestamps

  resourcify
  
  field :name, type: String
  field :active, type: Boolean, default: true

	validates_uniqueness_of :name, :scope => :survey_type_id
	validates_presence_of :name

  has_many :questions
  belongs_to :survey_type
  has_many :questionnaire
  has_and_belongs_to_many :users

	#slug history: true do |surv|
  #  "#{surv.name} #{surv.survey_type.name}".to_url
  #end
  #slug :name, :history => true

  accepts_nested_attributes_for :questions

end