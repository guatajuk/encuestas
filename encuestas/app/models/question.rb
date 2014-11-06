class Question
  include Mongoid::Document
  field :item, type: String
  field :aspect, type: String
end
