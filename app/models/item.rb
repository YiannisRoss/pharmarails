class Item < ApplicationRecord
  validates :serial_number, uniqueness: true
end
