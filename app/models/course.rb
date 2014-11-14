class Course
  include Mongoid::Document
  include Mongoid::Timestamps

  field :name, type: String
  field :course_id, type: String
  field :group, type: String
  field :faculty, type: String
  field :year, type: String
  field :semester, type: String

  belongs_to :user

end
