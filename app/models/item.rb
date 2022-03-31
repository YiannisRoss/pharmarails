class Item < ApplicationRecord
  serialize :status_update_history, Array
  validates :serial_number, uniqueness: true
end
