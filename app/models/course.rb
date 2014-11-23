class Course
  include Mongoid::Document
  include Mongoid::Timestamps
  include Mongoid::Slug

  resourcify
  
  field :name, type: String
  field :course_id, type: String
  field :group, type: String
  field :faculty, type: String
  field :year, type: String
  field :semester, type: String

  validates_uniqueness_of :course_id, :scope => [:group, :year, :semester]
  has_and_belongs_to_many :users
  belongs_to :answer_form

  slug history: true do |curs|
    "#{curs.course_id} #{curs.group}".to_url
  end

end