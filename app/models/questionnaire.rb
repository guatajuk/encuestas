class Questionnaire
  include Mongoid::Document
  include Mongoid::Timestamps

  resourcify

  field :detail, type: String

  belongs_to :survey
  belongs_to :course

  #attr_accessor :survey
  accepts_nested_attributes_for :survey
  
end
