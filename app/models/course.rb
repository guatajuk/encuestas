class Course
  include Mongoid::Document
  field :name, type: String
  field :course_id, type: String
  field :group, type: String
end
