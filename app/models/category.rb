class Category < ApplicationRecord
  belongs_to :report, optional: true
end
