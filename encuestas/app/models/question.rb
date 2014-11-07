class Question
  include Mongoid::Document
  include Mongoid::Timestamps

  field :item, type: String
  field :aspect, type: String

end
