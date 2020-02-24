class Station < ApplicationRecord
  validates :line, :name, :time, presence: true
  belongs_to :property, optional: true
end
