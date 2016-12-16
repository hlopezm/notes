class Report < ApplicationRecord
  validates_presence_of :nombre

  has_many :categories
end
