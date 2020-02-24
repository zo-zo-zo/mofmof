class Property < ApplicationRecord
  validates :name, :rent, :address, :age, :remark, presence: true
  has_many :stations, dependent: :destroy
  accepts_nested_attributes_for :stations
end
