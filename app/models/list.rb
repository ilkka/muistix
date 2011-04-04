class List < ActiveRecord::Base
  has_many :things
  accepts_nested_attributes_for :things
  validates_presence_of :description
end
